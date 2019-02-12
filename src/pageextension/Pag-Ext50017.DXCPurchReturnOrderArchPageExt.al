pageextension 50017 "DXCPurchReturnOrderArchPageExt" extends "Purchase Return Order Archive" //MyTargetPageId 1
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