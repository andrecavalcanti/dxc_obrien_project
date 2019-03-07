pageextension 50000 "DXCSalesOrderPageExt" extends "Sales Order" //MyTargetPageId 1
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

        addafter("Package Tracking No.")
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

        addafter("Ship-to Address 2")
        {
            field("Address 3";"DXC Address 3")
            {
                //Editable = ShipToOptions = ShipToOptions::"Custom Address";
                Editable = false;
                ApplicationArea = All;
            }
        } 

        addafter("Late Order Shipping")   
        {
             group("Weights And Dims")
                {
                    Caption = 'Weights And Dims';
                    field(WeighDimDescription;WeightDimDescription)
                    {
                        Caption = 'Weights and Dims';
                        MultiLine = true;
                        ShowCaption = false;

                        trigger OnValidate();
                        begin
                            // >> AOB-11
                            DXCSetWeightDescription(WeightDimDescription);
                            // << AOB-11
                        end;
                        
                    }
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