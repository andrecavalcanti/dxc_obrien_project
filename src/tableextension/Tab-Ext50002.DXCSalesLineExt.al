tableextension 50002 "DXCSalesLineExt" extends "Sales Line" //MyTargetTableId
{
    fields
    {
        field(50000;"DXC Order Line No.";Text[10])
        {
            Caption = 'Order Line No.';
            Description = 'AOB-11';
        }
    }  
    
}