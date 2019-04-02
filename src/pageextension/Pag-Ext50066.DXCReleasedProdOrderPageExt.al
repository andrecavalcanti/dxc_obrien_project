
pageextension 50067 "DXCFinishedProdOrderPageExt" extends "Finished Production Order" //MyTargetPageId
{
    layout
    {        
        addbefore(Control1900383207)
        {  
            part("Item Qty. Detail FactBox";"DXCItemQtyDetailFactBox")
            {
                Caption = 'Item Qty. Detail FactBox';                
                Provider = "ProdOrderLines";
                SubPageLink = "No."=FIELD("Item No.");
                ApplicationArea = All;
            }

        }       
        
    }
    
    actions
    {
    }
  
}