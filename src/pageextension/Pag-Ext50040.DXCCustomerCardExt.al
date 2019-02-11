pageextension 50040 "DXCCustomerCardExt" extends "Customer Card" //MyTargetPageId
{
    layout
    {
        addafter("Address 2")
        {
            field("DXC Address 3";"DXC Address 3")
            {
                ApplicationArea = All;
            }
        }

        addafter("CURP No.")
        {
            field("DXC DNB Number";"DXC DNB Number")
            {
                ApplicationArea = All;
            }
        }
    }
    
    actions
    {
    }
}