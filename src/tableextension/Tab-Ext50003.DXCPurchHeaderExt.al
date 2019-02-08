tableextension 50003 "DXCPurchHeaderExt" extends "Purchase Header" //MyTargetTableId
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