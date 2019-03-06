pageextension 50019 "DXCSalesOrderShipmentPageExt" extends "Sales Order Shipment" //MyTargetPageId
{
    layout
    { 
         addafter("Late Order Shipping")   
        {
            group("Weights And Dims")
            {
                Caption = 'Weights And Dims';
                field(WeighDimDescription;WeighDimDescription)
                {
                     Caption = 'Weights and Dims';
                        MultiLine = true;
                        ShowCaption = false;

                        trigger OnValidate();
                        begin
                            // >> AOB-11
                            DXCSetWeightDescription(WeighDimDescription);
                            // << AOB-11
                        end;
                }
            }
        }          
        
    }
    
    actions
    {           
        Modify("P&ost")
        {
            Visible = false;
        }
    }

    var
        Text001 : TextConst ENU='There are non posted Prepayment Amounts on %1 %2.',ESM='No hay cantidades anticipo registradas en %1 %2.',FRC='Il y a des montants de paiement anticipé non reportés sur %1 %2.',ENC='There are non posted Prepayment Amounts on %1 %2.';
        Text002 : TextConst ENU='There are unpaid Prepayment Invoices related to %1 %2.',ESM='Existen facturas anticipo sin abonar relacionadas con %1 %2.',FRC='Il y a des factures pour paiement anticipé non payées associées à %1 %2.',ENC='There are unpaid Prepayment Invoices related to %1 %2.';
        SalesLine : Record "Sales Line";
        FreightAmount : Decimal;
     
         "---DXC Var---" : Integer;
        WeighDimDescription : Text;      

    trigger OnAfterGetRecord();
        begin            
            // >> AOB-11
            WeighDimDescription := DXCGetWeightDescription;
            // >> AOB-11
        end;

   
}
