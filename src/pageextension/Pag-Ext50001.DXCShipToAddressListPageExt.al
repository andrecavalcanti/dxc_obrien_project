pageextension 50001 "DXCShipToAddressListPageExt" extends "Ship-to Address List" //MyTargetPageId
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
        
    }
    
    actions
    {
    }
  
}