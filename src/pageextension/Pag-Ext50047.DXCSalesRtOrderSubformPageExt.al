
pageextension 50047 "DXCSalesRtOrderSubformPageExt" extends "Sales Return Order Subform" //MyTargetPageId
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