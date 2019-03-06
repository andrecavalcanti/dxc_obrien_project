pageextension 50018 "DXCPurchReturnOrderPageExt" extends "Purchase Return Order" //MyTargetPageId 1
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
        }        
                
    }      
    
}