
pageextension 50036 "DXCPostedSlInvSubformPageExt" extends "Posted Sales Invoice Subform" //MyTargetPageId
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