page 50001 "DXCItemQtyDetailFactBox"
{
    // version AOB-52

    // AOB-52 MD 2-11-19 Item Qty Detail FactBox

    PageType = CardPart;
    SourceTable = Item;

    layout
    {
        area(content)
        {
            field(Inventory;Inventory)
            {
            }
            field("Qty. on Purch. Order";"Qty. on Purch. Order")
            {
            }
            field("Qty. on Prod. Order";"Qty. on Prod. Order")
            {
            }
            field("Qty. on Component Lines";"Qty. on Component Lines")
            {
            }
            field("Qty. on Sales Order";"Qty. on Sales Order")
            {
            }
            field("Trans. Ord. Receipt (Qty.)";"Trans. Ord. Receipt (Qty.)")
            {
            }
            field("Trans. Ord. Shipment (Qty.)";"Trans. Ord. Shipment (Qty.)")
            {
            }
            field(DXCAvailableQty;DXCAvailableQty)
            {
                Caption = 'Available Qty.';
                DecimalPlaces = 0:2;
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord();
    begin
        DXCCalculateAvail;
    end;

    var
        DXCAvailableQty : Decimal;

    procedure DXCCalculateAvail();
    begin
        DXCAvailableQty := Inventory + "Qty. on Prod. Order" + "Qty. on Purch. Order" + "Trans. Ord. Receipt (Qty.)" - "Qty. on Component Lines" - "Qty. on Sales Order" - "Trans. Ord. Shipment (Qty.)";
    end;
}

