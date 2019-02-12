tableextension 50004 "DXCSalesShipHeaderExt" extends "Sales Shipment Header" //MyTargetTableId
{
    fields
    {
         field(50000;"DXC Address 3";Text[50])
        {
            Caption = 'Address 3';
            Description = 'AOB-11';
        }
        field(50001;"DXC Customer Shipping Account";Text[50])
        {
            Caption = 'Customer Shipping Account';
            Description = 'AOB-11';
        }
        field(50002;"DXC End User Name";Text[50])
        {
            Caption = 'End User Name';
            Description = 'AOB-11';
        }
        field(50003;"DXC Inco Location";Text[50])
        {
            Caption = 'Inco Location';
            Description = 'AOB-11';
        }
        field(50004;"DXC Weights and Dims";BLOB)
        {
            Caption = 'Weights and Dims';
            Description = 'AOB-11';
            SubType = Memo;
        }
        field(50005;"DXC CPQ No.";Code[10])
        {
            Caption = 'CPQ No.';
            Description = 'AOB-11';
        }
        field(50006;"DXC Project No.";Text[50])
        {
            Caption = 'Project No.';
            Description = 'AOB-11';
        }
        
    }

    [Scope('Personalization')]
    procedure DXCSetWeightDescription(NewWeightDescription : Text);
    var
        TempBlob : Record TempBlob temporary;
    begin
        CLEAR("DXC Weights and Dims");
        if NewWeightDescription = '' then
          exit;
        TempBlob.Blob := "DXC Weights and Dims";
        TempBlob.WriteAsText(NewWeightDescription,TEXTENCODING::Windows);
        "DXC Weights and Dims" := TempBlob.Blob;
        MODIFY;
    end;

    [Scope('Personalization')]
    procedure DXCGetWeightDescription() : Text;
    var
        TempBlob : Record TempBlob temporary;
        CR : Text[1];
    begin
        CALCFIELDS("DXC Weights and Dims");
        if not "DXC Weights and Dims".HASVALUE then
          exit('');
        CR[1] := 10;
        TempBlob.Blob := "DXC Weights and Dims";
        exit(TempBlob.ReadAsText(CR,TEXTENCODING::Windows));
    end;
    
}