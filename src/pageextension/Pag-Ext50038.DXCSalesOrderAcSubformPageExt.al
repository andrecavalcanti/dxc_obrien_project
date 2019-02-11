
pageextension 50038 "DXCSalesOrderAcSubformPageExt" extends "Sales Order Archive Subform" //MyTargetPageId
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