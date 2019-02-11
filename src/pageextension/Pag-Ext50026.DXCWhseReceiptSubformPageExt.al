pageextension 50026 "DXCWhseReceiptSubformPageExt" extends "Whse. Receipt Subform" //MyTargetPageId
{
    layout
    {
        addlast(Control1)
        {
            field("Source Line No.";"Source Line No.")
            {
                ApplicationArea = All;
            }
        }
    }
    
    actions
    {
    }
}