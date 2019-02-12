pageextension 50024 "DXCPostedSlInvoicesPageExt" extends "Posted Sales Invoices" //MyTargetPageId
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