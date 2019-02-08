tableextension 50008 "DXCSalesInvLineExt" extends "Sales Invoice Line" //MyTargetTableId
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