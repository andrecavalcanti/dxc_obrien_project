
pageextension 50033 "DXCFirmPlannedProdOrderPageExt" extends "Firm Planned Prod. Order" //MyTargetPageId
{
    layout
    {        
        addbefore(Control1900383207)
        {  
            part("Item Qty. Detail FactBox";"DXCItemQtyDetailFactBox")
            {
                Caption = 'Item Qty. Detail FactBox';
                SubPageLink = "No."=FIELD("Source No.");
                ApplicationArea = All;
            }

        }  
        
    }
    
    actions
    {
    }
  
}