pageextension 50025 "DXCGetReceiptLinesPageExt" extends "Get Receipt Lines" //MyTargetPageId
{
    layout
    {
        addafter("Document No.")
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