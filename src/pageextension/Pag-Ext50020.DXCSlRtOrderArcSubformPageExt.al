
pageextension 50020 "DXCSlRtOrderArcSubformPageExt" extends "Sales Return Order Arc Subform" //MyTargetPageId
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