
pageextension 50040 "DXCReleasedProdOrdersPageExt" extends "Released Production Orders" //MyTargetPageId
{
    layout
    {        
        addlast(Control1)
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