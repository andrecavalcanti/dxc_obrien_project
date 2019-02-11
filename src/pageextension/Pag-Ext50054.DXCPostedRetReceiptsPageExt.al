pageextension 50054 "DXCPostedRetReceiptsPageExt" extends "Posted Return Receipts" //MyTargetPageId
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