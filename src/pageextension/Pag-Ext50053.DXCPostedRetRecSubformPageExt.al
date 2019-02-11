pageextension 50053 "DXCPostedRetRecSubformPageExt" extends "Posted Return Receipt Subform" //MyTargetPageId
{
    layout
    {        
        addlast(Control1)
        {         
           field("DXC Order Line No.";"DXC Order Line No.")
            {
                ApplicationArea = All;
            }

        }  
        
    }
    
    actions
    {
    }
  
}