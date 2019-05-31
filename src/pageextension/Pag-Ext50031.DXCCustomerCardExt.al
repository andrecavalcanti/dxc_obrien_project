pageextension 50031 "DXCCustomerCardExt" extends "Customer Card" //MyTargetPageId
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

        // >> AOB-75  
        addafter(Name)
        {
            field("Search Name";"Search Name")
            {
            }
        }
        // << AOB-75
    }
    
    actions
    {
    }
}