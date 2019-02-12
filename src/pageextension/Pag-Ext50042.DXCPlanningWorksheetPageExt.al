
pageextension 50042 "DXCPlanningWorksheetPageExt" extends "Planning Worksheet" //MyTargetPageId
{
    layout
    {        
        addafter("Vendor No.")
        {  
            field("DXC Vendor Name";"DXC Vendor Name")
            {
                Editable = false;
                ApplicationArea = All;
            }

        }  
        
    }
    
    actions
    {
    }
  
}