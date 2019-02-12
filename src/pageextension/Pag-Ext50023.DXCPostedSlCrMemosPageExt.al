pageextension 50023 "DXCPostedSlCrMemosPageExt" extends "Posted Sales Credit Memos" //MyTargetPageId
{
    layout
    {        
        addlast(Control1)
        {         
            field("Return Order No.";"Return Order No.")
            {
                ApplicationArea = All;
            }

        }  
        
    }
    
    actions
    {
    }
  
}