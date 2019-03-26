pageextension 50066 "DXCItemVendorCatalog" extends "Item Vendor Catalog" //MyTargetPageId
{
    layout
    {
        addafter("Create Test Order on Receipt")
        {
            field("Vendor Name"; "DXC Vendor Name")
            {
                ApplicationArea = All;
            }
        }
    }
    
    actions
    {
    }
}