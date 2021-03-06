
pageextension 50065 "DXCReleasedProdOrderPageExt" extends "Released Production Order" //MyTargetPageId
{
    layout
    {        
        addafter("No. of Change Orders")
        {  
            field("DXC CNC";"DXC CNC")
            {
                ApplicationArea = All;
            }

        }  

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