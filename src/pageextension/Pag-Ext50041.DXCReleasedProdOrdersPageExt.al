
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
        
    }
    
    actions
    {
    }
  
}