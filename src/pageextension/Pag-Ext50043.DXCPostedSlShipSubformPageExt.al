pageextension 50043 "DXCPostedSlShipSubformPageExt" extends "Posted Sales Shpt. Subform" //MyTargetPageId
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