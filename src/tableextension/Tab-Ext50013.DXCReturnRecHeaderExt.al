tableextension 50013 "DXCReturnRecHeaderExt" extends "Return Receipt Header" //MyTargetTableId
{
    fields
    {
        field(50000;"DXC Address 3";Text[50])
        {
            Caption = 'Address 3';
            Description = 'AOB-11';
        }
        field(50001;"DXC Customer Shipping Account";Text[50])
        {
            Caption = 'Customer Shipping Account';
            Description = 'AOB-11';
        }
        field(50002;"DXC End User Name";Text[50])
        {
            Caption = 'End User Name';
            Description = 'AOB-11';
        }
        field(50003;"DXC Inco Location";Text[50])
        {
            Caption = 'Inco Location';
            Description = 'AOB-11';
        }
        field(50004;"DXC Weights and Dims";BLOB)
        {
            Caption = 'Weights and Dims';
            Description = 'AOB-11';
            SubType = Memo;
        }
        field(50005;"DXC CPQ No.";Code[10])
        {
            Caption = 'CPQ No.';
            Description = 'AOB-11';
        }
        field(50006;"DXC Project No.";Text[50])
        {
            Caption = 'Project No.';
            Description = 'AOB-11';
        }
    }
    
}