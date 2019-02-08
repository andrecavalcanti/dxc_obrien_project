tableextension 50007 "DXCSalesShipLineExt" extends "Sales Shipment Line" //MyTargetTableId
{

    fields
    {
        field(50000;"DXC Order Line No.";Text[10])
        {
            Caption = 'Order Line No.';
            Description = 'AOB-11';
        }
    }
   
    
}