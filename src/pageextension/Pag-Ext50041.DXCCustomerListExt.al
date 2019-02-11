pageextension 50041 "DXCCustomerListExt" extends "Customer List" //MyTargetPageId
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

        addafter(City)
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