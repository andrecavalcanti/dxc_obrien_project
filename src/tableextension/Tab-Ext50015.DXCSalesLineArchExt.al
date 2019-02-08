tableextension 50015 "DXCSalesLineArchExt" extends "Sales Line Archive" //MyTargetTableId
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