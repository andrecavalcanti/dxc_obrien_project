pageextension 50017 "DXCPurchReturnOrderArchPageExt" extends "Purchase Return Order Archive" //MyTargetPageId 1
{
    layout
    {     
        addafter("Ship-to Contact")
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