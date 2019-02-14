pageextension 50003 "DXCSalesCrMemoPageExt" extends "Sales Credit Memo" //MyTargetPageId
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

        addafter(Status)     
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
            
        } 

        addafter("DXC Inco Location")   
        {
            group("Weights And Dims")
            {
                Caption = 'Weights And Dims';
                field(WeighDimDescription;WeighDimDescription)
                {
                    Caption = 'Weights and Dims';
                    MultiLine = true;
                    ShowCaption = false;

                    trigger OnValidate();
                    begin
                        // >> AOB-11
                        DXCSetWeightDescription(WeighDimDescription);
                        // << AOB-11
                    end;
                }
            }
        }   

    }  

     var 
         "---DXC Var---" : Integer;
        WeighDimDescription : Text;  

    trigger OnAfterGetRecord();
        begin            
            // >> AOB-11
            WeighDimDescription := DXCGetWeightDescription;
            // >> AOB-11
        end;    
    
}