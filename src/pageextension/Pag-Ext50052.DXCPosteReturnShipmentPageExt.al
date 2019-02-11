pageextension 50052 "DXCPosteReturnShipmentPageExt" extends "Posted Return Shipment" //MyTargetPageId 1
{
    layout
    {     
        addafter("Order Address Code")
        {
            field("DXC Vendor Shipping Account";"DXC Vendor Shipping Account")
            {
                ApplicationArea = All;
            }
            field("Shipment Method Code";"Shipment Method Code")
            {
                ApplicationArea = All;
            }
        }        
                
    }      
    
}