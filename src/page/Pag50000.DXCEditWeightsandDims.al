page 50000 "DXCEditWeightsAndDims"
{
    // version AOB-11

    PageType = StandardDialog;
    SourceTable = "Sales Header";

    layout
    {
        area(content)
        {
            field(DXC_WeightsandDims;DXC_WeightsandDims)
            {
                Caption = 'Weights and Dims';
                MultiLine = true;
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord();
    begin
        DXC_WeightsandDims := DXCGetWeightDescription
    end;

    trigger OnQueryClosePage(CloseAction : Action) : Boolean;
    begin
        //if CloseAction <> ACTION::Cancel then
         //   DXCSetWeightDescription(DXC_WeightsandDims);
    end;   

    var
        DXC_WeightsandDims : Text;
}