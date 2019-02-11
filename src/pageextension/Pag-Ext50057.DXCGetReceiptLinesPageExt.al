pageextension 50057 "DXCGetReceiptLinesPageExt" extends "Get Receipt Lines" //MyTargetPageId
{
    layout
    {        
        addafter("Job No.")
        {
            field("Order No.";"Order No.")
            {
                ApplicationArea = All;
            }

        }  

        addafter("Unit of Measure")
        {
            field("Unit Cost";"Unit Cost")
            {
                ApplicationArea = All;
            }

        }  
        
    }
    
    actions
    {
    }
  
}