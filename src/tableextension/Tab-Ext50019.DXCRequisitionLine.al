tableextension 50019 "DXCRequisitionLine" extends "Requisition Line" //MyTargetTableId
{
    fields
    {
        field(50000;"DXC Vendor Name";Text[50])
        {
            CalcFormula = Lookup(Vendor.Name WHERE ("No."=FIELD("Vendor No.")));
            Caption = 'Vendor Name';
            Description = 'AOB-39';
            FieldClass = FlowField;
        }
        
    }
    
}