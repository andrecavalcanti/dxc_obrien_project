tableextension 50000 "DXCItemExt" extends Item //MyTargetTableId
{
    fields
    {
        field(50000;"DXC Address 3";Text[50])
        {
            Caption = 'Address 3';
            Description = 'AOB-11';
        }
        field(50001;"DXC DNB Number";Code[10])
        {
            Caption = 'DNB Number';
            Description = 'AOB-11';
        }
        
    }
    
}