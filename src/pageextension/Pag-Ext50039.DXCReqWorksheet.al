pageextension 50039 "DXCReqWorksheet" extends "Req. Worksheet" //MyTargetPageId
{
    layout
    {
        addafter("Order Date")
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