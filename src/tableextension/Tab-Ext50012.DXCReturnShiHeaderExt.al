tableextension 50012 "DXCReturnShiHeaderExt" extends "Return Shipment Header" //MyTargetTableId
{
    fields
    {
        field(50000;"DXC Vendor Shipping Account";Text[50])
        {
            Caption = 'Vendor Shipping Account';
            Description = 'AOB-44';
        }
        
    }
    
}