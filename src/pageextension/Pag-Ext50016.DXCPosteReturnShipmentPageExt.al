pageextension 50016 "DXCPosteReturnShipmentPageExt" extends "Posted Return Shipment" //MyTargetPageId 1
{
    layout
    {     
        addafter("Location Code")
        {
            field("DXC Vendor Shipping Account";"DXC Vendor Shipping Account")
            {
                ApplicationArea = All;
            }
            field("Shipment Method Code";"Shipment Method Code")
            {
                ApplicationArea = All;
            }
            // >> AOB-45
            field("DXC Shipping Agent";"DXC Shipping Agent")
            {
                ApplicationArea = All; 
            }
            // << AOB-45
        }        
                
    }      
    
}