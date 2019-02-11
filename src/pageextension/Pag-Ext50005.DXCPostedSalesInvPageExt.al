pageextension 50005 "DXCPostedSalesInvPageExt" extends "Posted Sales Invoice" //MyTargetPageId
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

        addafter("Shipping Time")
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
            
        } 

        addafter("DXC Inco Location")   
        {
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
                            DXCEditWeightsandDims : Page "DXC Edit Weights and Dims";
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