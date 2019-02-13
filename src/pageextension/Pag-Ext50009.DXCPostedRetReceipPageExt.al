pageextension 50009 "DXCPostedRetReceipPageExt" extends "Posted Return Receipt" //MyTargetPageId
{
     layout
    {     
        addafter("Sell-to Address 2")
        {
            field("DXC Address 3";"DXC Address 3")
            {
                ApplicationArea = All;
            }
        } 

        addafter("Responsibility Center")     
        {
            field("DXC CPQ No.";"DXC CPQ No.")
            {
                ApplicationArea = All;
            }

            field("DXC Project No.";"DXC Project No.")
            {
                ApplicationArea = All;
            }
        }

        addafter("Location Code")
        {
           
            field("DXC Customer Shipping Account";"DXC Customer Shipping Account")
            {
                ApplicationArea = All;
            }
            field("DXC End User Name";"DXC End User Name")
            {
                ApplicationArea = All;
            }
            field("DXC Inco Location";"DXC Inco Location")
            {
                ApplicationArea = All;
            }

              group("Weights And Dims")
            {
                Caption = 'Weights And Dims';
                field(DXCGetWeightDescription;DXCGetWeightDescription)
                {
                    AssistEdit = true;
                    Caption = 'Weights and Dims';
                    MultiLine = true;
                    RowSpan = 3;
                    ShowCaption = false;

                    trigger OnAssistEdit();
                    var
                        DXCEditWeightsandDims : Page "DXCEditWeightsAndDims";
                    begin
                        CurrPage.UPDATE(true);
                        COMMIT;
                        DXCEditWeightsandDims.SETRECORD(Rec);
                        DXCEditWeightsandDims.RUNMODAL;
                        DXCEditWeightsandDims.GETRECORD(Rec);
                        CurrPage.UPDATE;
                    end;

                    trigger OnValidate();
                    begin
                        //DXCSetWeightDescription(DXC_WeightsDescription);
                    end;
                }
            }
        
        }        
                
    }      
}