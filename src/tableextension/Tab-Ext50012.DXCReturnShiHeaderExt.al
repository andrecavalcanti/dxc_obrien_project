tableextension 50012 "DXCReturnShiHeaderExt" extends "Return Shipment Header" //MyTargetTableId
{
    fields
    {
        field(50000;"DXC Vendor Shipping Account";Text[50])
        {
            Caption = 'Vendor Shipping Account';
            Description = 'AOB-44';
        }
        // >> AOB-45
        field(50001;"DXC Shipping Agent";Code[10])
        {
            Caption = 'Shipping Agent';
            DataClassification = ToBeClassified;
            Description = 'AOB-44';
            TableRelation = "Shipping Agent";
        }
        // << AOB-45
        
    }
    
}