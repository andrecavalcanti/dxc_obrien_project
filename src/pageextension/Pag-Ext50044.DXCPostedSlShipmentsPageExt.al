pageextension 50044 "DXCPostedSlShipmentsPageExt" extends "Posted Sales Shipments" //MyTargetPageId
{
    layout
    {        
        addlast(Control1)
        {        
            field("Order No.";"Order No.")
            {
                ApplicationArea = All;
            }

        }  
        
    }
    
    actions
    {
    }
  
}