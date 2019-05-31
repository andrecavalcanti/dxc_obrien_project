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

        addafter("Shipping Agent Code")
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
                    field(WeighDimDescription;WeightDimDescription)
                    {
                        Caption = 'Weights and Dims';
                        MultiLine = true;
                        ShowCaption = false;
                    }
                }
        }   

        addafter("Ship-to Address 2")
        {
            field("Address 3";"DXC Address 3")
            {
                ApplicationArea = All;
                Editable = false;
            }
        } 

    }

    var 
         "---DXC Var---" : Integer;
        WeightDimDescription : Text;      

    trigger OnAfterGetRecord();
        begin            
            // >> AOB-11
            WeightDimDescription := DXCGetWeightDescription;
            // >> AOB-11
        end;
         
    
}