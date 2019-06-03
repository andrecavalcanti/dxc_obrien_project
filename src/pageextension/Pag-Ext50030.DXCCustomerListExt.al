pageextension 50030 "DXCCustomerListExt" extends "Customer List" //MyTargetPageId
{
    layout
    {
        addafter("Address 2")
        {
            field("DXC Address 3";"DXC Address 3")
            {
                ApplicationArea = All;
            }

             field("DXC DNB Number";"DXC DNB Number")
            {
                ApplicationArea = All;
            }
            // >> AOB-75
            field(City;City)
            {
                ApplicationArea = All;
            }
            field(City;City)
            {
                ApplicationArea = All;
            }
            field(City;City)
            {
                ApplicationArea = All;
            }
            field(City;City)
            {
                ApplicationArea = All;
            }
            // << AOB-75
        }

    }
    actions
    {
    }
}