tableextension 50002 "DXCSalesLineExt" extends "Sales Line" //MyTargetTableId
{

    fields
    {
        field(50000;"DXC Order Line No.";Text[10])
        {
            Caption = 'Order Line No.';
            Description = 'AOB-11';
        }
    }

    var
        FreightLineDescriptionTxt : TextConst ENU='Freight Amount',ESM='Importe de flete',FRC='Montant des frais de transport',ENC='Freight Amount';

     [Scope('Personalization')]
    procedure DXCInsertFreightLine(var FreightAmount : Decimal);
    var
        SalesLine : Record "Sales Line";
        SalesSetup : Record "Sales & Receivables Setup";
    begin
        //AOB-21
        if FreightAmount <= 0 then begin
          FreightAmount := 0;
          exit;
        end;

        SalesSetup.GET;
        SalesSetup.TESTFIELD("Freight G/L Acc. No.");

        Rec.TESTFIELD("Document Type");
        Rec.TESTFIELD("Document No.");

        SalesLine.SETRANGE("Document Type","Document Type");
        SalesLine.SETRANGE("Document No.","Document No.");

        SalesLine.SETRANGE(Type,SalesLine.Type::"G/L Account");
        SalesLine.SETRANGE("No.",SalesSetup."Freight G/L Acc. No.");
        if SalesLine.FINDFIRST then begin
          //DXC
          SalesLine.SuspendStatusCheck(true);
          //
          SalesLine.VALIDATE(Quantity,1);
          //DXC
          SalesLine.VALIDATE("Qty. to Ship",1);
          SalesLine.VALIDATE("Qty. to Invoice",1);
          //
          SalesLine.VALIDATE("Unit Price",FreightAmount);
          SalesLine.MODIFY;
        end else begin
          SalesLine.SETRANGE(Type);
          SalesLine.SETRANGE("No.");
          SalesLine.FINDLAST;
          SalesLine."Line No." += 10000;

          SalesLine.INIT;
          //DXC
          SalesLine.SuspendStatusCheck(true);
          //
          SalesLine.VALIDATE(Type,SalesLine.Type::"G/L Account");
          SalesLine.VALIDATE("No.",SalesSetup."Freight G/L Acc. No.");
          SalesLine.VALIDATE(Description,FreightLineDescriptionTxt);
          SalesLine.VALIDATE(Quantity,1);
          //DXC
          SalesLine.VALIDATE("Qty. to Ship",1);
          SalesLine.VALIDATE("Qty. to Invoice",1);
          //
          SalesLine.VALIDATE("Unit Price",FreightAmount);
          SalesLine.INSERT;
        end;
    end;
    
}