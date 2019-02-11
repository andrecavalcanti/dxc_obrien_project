pageextension 50022 "DXCPostedPurchCrMemoPageExt" extends "Posted Purchase Credit Memo" //MyTargetPageId
{
    layout
    {     
        addafter("Provincial Tax Area Code")
        {            
            field("DXC Vendor Shipping Account";"DXC Vendor Shipping Account")
            {
                ApplicationArea = All; 
            }
        }       
        
    }   
    
}