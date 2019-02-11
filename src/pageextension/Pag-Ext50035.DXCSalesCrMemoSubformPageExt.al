
pageextension 50035 "DXCSalesCrMemoSubformPageExt" extends "Sales Cr. Memo Subform" //MyTargetPageId
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