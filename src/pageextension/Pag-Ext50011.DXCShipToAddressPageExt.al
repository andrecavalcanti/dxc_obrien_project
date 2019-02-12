pageextension 50011 "DXCShipToAddressPageExt" extends "Ship-to Address" //MyTargetPageId
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