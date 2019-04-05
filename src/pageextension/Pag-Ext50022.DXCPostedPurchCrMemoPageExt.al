pageextension 50022 "DXCPostedPurchCrMemoPageExt" extends "Posted Purchase Credit Memo" //MyTargetPageId
{
    layout
    {     
        addafter("Ship-to UPS Zone")
        {            
            field("DXC Vendor Shipping Account";"DXC Vendor Shipping Account")
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