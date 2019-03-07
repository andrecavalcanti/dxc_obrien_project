pageextension 50056 "DXCSalesOrderInvoiceExt" extends "Sales Order Invoice" 
{
    
    layout
    {
        addafter(Invoicing)
        {
            
             group(Shipping)
            {
                Editable = false;
                
                CaptionML = ENU='Shipping',
                            ESM='Envío',
                            FRC='Livraison',
                            ENC='Shipping';
                field("Ship-to Code";"Ship-to Code")
                {
                    //Editable = "Ship-to CodeEditable";
                    ToolTipML = ENU='Specifies the address that items were shipped to. This field is used when multiple the customer has multiple ship-to addresses.',
                                ESM='Especifica la dirección a la que se envían los productos. Este campo se usa cuando el cliente tiene varias direcciones de envío.',
                                FRC='Spécifie l''adresse à laquelle les articles ont été livrés. Ce champ est utilisé lorsque le client possède plusieurs adresses de livraison.',
                                ENC='Specifies the address that items were shipped to. This field is used when multiple the customer has multiple ship-to addresses.';
                }
                field("Ship-to Name";"Ship-to Name")
                {
                    //Editable = "Ship-to NameEditable";
                    ToolTipML = ENU='Specifies the name of the customer at the address that the items were shipped to.',
                                ESM='Especifica el nombre del cliente en la dirección a la que se enviaron los productos.',
                                FRC='Spécifie le nom du client à l''adresse à laquelle les articles ont été livrés.',
                                ENC='Specifies the name of the customer at the address that the items were shipped to.';
                }
                field("Ship-to Address";"Ship-to Address")
                {
                    //Editable = "Ship-to AddressEditable";
                    ToolTipML = ENU='Specifies the address that the items were shipped to.',
                                ESM='Especifica la dirección a la que se enviaron los productos.',
                                FRC='Spécifie l''adresse à laquelle les articles ont été livrés.',
                                ENC='Specifies the address that the items were shipped to.';
                }
                field("Ship-to Address 2";"Ship-to Address 2")
                {
                    //Editable = "Ship-to Address 2Editable";
                    ToolTipML = ENU='Specifies an additional part of the address that the items were shipped to.',
                                ESM='Especifica una parte adicional de la dirección a la que se enviaron los productos.',
                                FRC='Spécifie une partie supplémentaire de l''adresse à laquelle les articles ont été livrés.',
                                ENC='Specifies an additional part of the address that the items were shipped to.';
                }
                field("Ship-to City";"Ship-to City")
                {
                    //Editable = "Ship-to CityEditable";
                    ToolTipML = ENU='Specifies the city that the items were shipped to.',
                                ESM='Especifica la ciudad a la que se enviaron los productos.',
                                FRC='Spécifie la ville dans laquelle les articles ont été livrés.',
                                ENC='Specifies the city that the items were shipped to.';
                }
                field("Ship-to County";"Ship-to County")
                {
                    CaptionML = ENU='Ship-to State / ZIP Code',
                                ESM='Envío a-Estado / C.P.',
                                FRC='État-Province/code postal de livraison',
                                ENC='Ship-to Prov./State / Post./ZIP Code';
                    //Editable = "Ship-to CountyEditable";
                    ToolTipML = ENU='Specifies the ship-state, ZIP code, ship-to province code, state code, ZIP Code, or ZIP code as a part of the address.',
                                ESM='Especifica el estado de envío, el código postal, el código de provincia de envío o el código de estado como parte de la dirección.',
                                FRC='Spécifie la province de livraison, le code postal ou le code de la province de livraison comme partie de l''adresse.',
                                ENC='Specifies the ship-state, ZIP code, ship-to province code, state code, postal code, or ZIP code as a part of the address.';
                }
                field("Ship-to Post Code";"Ship-to Post Code")
                {
                    //Editable = "Ship-to Post CodeEditable";
                    ToolTipML = ENU='Specifies the ZIP Code at the address that the items were shipped to.',
                                ESM='Especifica el código postal de la dirección a la que se enviaron los productos.',
                                FRC='Spécifie le code postal à l''adresse à laquelle les articles ont été livrés.',
                                ENC='Specifies the postal/ZIP Code at the address that the items were shipped to.';
                }
                field("Ship-to Contact";"Ship-to Contact")
                {
                    //Editable = "Ship-to ContactEditable";
                    ToolTipML = ENU='Specifies the contact person at the address that the items were shipped to.',
                                ESM='Especifica la persona de contacto que consta en la dirección a la que se enviaron los productos.',
                                FRC='Spécifie la personne de contact à l''adresse à laquelle les articles ont été livrés.',
                                ENC='Specifies the contact person at the address that the items were shipped to.';
                }
                field("Ship-to UPS Zone";"Ship-to UPS Zone")
                {
                    ToolTipML = ENU='Specifies a UPS Zone code for this document, if UPS is used for shipments.',
                                ESM='Especifica el código de la zona de porte (UPS) de este documento, si va a usar una zona UPS para realizar los envíos.',
                                FRC='Spécifie un code Zone UPS pour ce document, si le service est utilisé pour les livraisons.',
                                ENC='Specifies a UPS Zone code for this document, if UPS is used for shipments.';
                }
              /*   field("Tax Area Code";"Tax Area Code")
                {
                    //Editable = "Tax Area CodeEditable";
                    ToolTipML = ENU='Specifies the tax area that is used to calculate and post sales tax.',
                                ESM='Especifica el área de impuesto que se usa para calcular y registrar el impuesto sobre las ventas.',
                                FRC='Spécifie la région fiscale utilisée pour calculer et reporter la taxe de vente.',
                                ENC='Specifies the tax area that is used to calculate and post sales tax.';
                } */
                /* field(FreightAmount;FreightAmount)
                {
                    CaptionML = ENU='Freight Amount',
                                ESM='Importe flete',
                                FRC='Montant du transport',
                                ENC='Freight Amount';
                    ToolTipML = ENU='Specifies the freight amount for the shipment. When you create a sales order, you can specify freight charges as item charges on the sales order, or you can specify the freight charges in the Sales Order Shipment window.',
                                ESM='Especifica el importe de flete del envío. Cuando crea una orden de venta, puede especificar los cargos de flete como cargos de producto en ella o especificarlos en la ventana Envío orden venta.',
                                FRC='Spécifie le montant du transport pour la livraison. Lorsque vous créez un document de vente, vous pouvez spécifier des frais de fret comme frais annexes sur le document de vente. Vous pouvez également les mentionner dans la fenêtre Document de vente - Livraison.',
                                ENC='Specifies the freight amount for the shipment. When you create a sales order, you can specify freight charges as item charges on the sales order, or you can specify the freight charges in the Sales Order Shipment window.';
                } */

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
                field("Location Code";"Location Code")
                {
                    //Editable = "Location CodeEditable";
                    ToolTipML = ENU='Specifies the location from where inventory items are to be shipped by default, to the customer on the sales document.',
                                ESM='Especifica, en el documento de venta, la ubicación desde la que se van a enviar al cliente los productos de inventario de forma predeterminada.',
                                FRC='Spécifie l''emplacement à partir duquel les articles de l''inventaire doivent être livrés par défaut au client figurant sur le document de vente.',
                                ENC='Specifies the location from where inventory items are to be shipped by default, to the customer on the sales document.';
                }
                field("Outbound Whse. Handling Time";"Outbound Whse. Handling Time")
                {
                    ToolTipML = ENU='Specifies the outbound warehouse handling time, which is used to calculate the planned shipment date.',
                                ESM='Especifica el tiempo de manipulación en el almacén de salida, que se usa para calcular la fecha de envío planeada.',
                                FRC='Spécifie le délai désenlogement utilisé pour calculer la date livraison planifiée.',
                                ENC='Specifies the outbound warehouse handling time, which is used to calculate the planned shipment date.';
                }
                field("Shipment Method Code";"Shipment Method Code")
                {
                    //Editable = "Shipment Method CodeEditable";
                    ToolTipML = ENU='Specifies how items on the sales document are shipped to the customer. By default, the field is filled with the value in the Shipment Method Code field on the customer card.',
                                ESM='Especifica cómo los productos del documento de ventas se envían al cliente. De manera predeterminada, el campo se rellena con el valor del campo Cód. método de envío de la ficha cliente.',
                                FRC='Spécifie combien d''articles sur le document de vente sont livrés au client. Par défaut, le champ est renseigné avec la valeur du champ Code de méthode de livraison de la fiche client.',
                                ENC='Specifies how items on the sales document are shipped to the customer. By default, the field is filled with the value in the Shipment Method Code field on the customer card.';
                }
                field("Shipping Agent Code";"Shipping Agent Code")
                {
                    //Editable = "Shipping Agent CodeEditable";
                    ToolTipML = ENU='Specifies which shipping company will be used when you ship items to the customer.',
                                ESM='Especifica qué empresa de envío se usará cuando se envíen productos al cliente.',
                                FRC='Spécifie le transporteur qui sera utilisé lorsque vous livrez des articles à ce client.',
                                ENC='Specifies which shipping company will be used when you ship items to the customer.';
                }
                field("Shipping Agent Service Code";"Shipping Agent Service Code")
                {
                    ToolTipML = ENU='Specifies the code for the shipping agent service to use for this customer.',
                                ESM='Especifica el código del servicio transportista que se usa para este cliente.',
                                FRC='Spécifie le code du service de l''agent de livraison à utiliser pour ce client.',
                                ENC='Specifies the code for the shipping agent service to use for this customer.';
                }
                field("Shipping Time";"Shipping Time")
                {
                    ToolTipML = ENU='Specifies the shipping time of the order. That is, the time it takes from when the order is shipped from the warehouse to when the order is delivered to the customer''s address.',
                                ESM='Especifica la hora de envío de la orden. Es decir, el tiempo que transcurre desde que se envía la orden desde el almacén hasta que se entrega en la dirección del cliente.',
                                FRC='Spécifie le délai de livraison de la commande. Il s''agit du délai entre le moment où la commande est livrée à partir de l''entrepôt et le moment où elle est livrée à l''adresse du client.',
                                ENC='Specifies the shipping time of the order. That is, the time it takes from when the order is shipped from the warehouse to when the order is delivered to the customer''s address.';
                }
                field("Late Order Shipping";"Late Order Shipping")
                {
                    ToolTipML = ENU='Specifies that the shipment of one or more lines has been delayed, or that the shipment date is before the work date.',
                                ESM='Especifica que se ha retrasado el envío de una o varias líneas o que la fecha de envío es anterior a la fecha de trabajo.',
                                FRC='Spécifie que la livraison d''une ou de plusieurs lignes a été retardée ou que la date de livraison est antérieure à la date de travail.',
                                ENC='Specifies that the shipment of one or more lines has been delayed, or that the shipment date is before the work date.';
                }
                field("Package Tracking No.";"Package Tracking No.")
                {
                    //Editable = "Package Tracking No.Editable";
                    ToolTipML = ENU='Specifies the shipping agent''s package number.',
                                ESM='Especifica el número de paquete del transportista.',
                                FRC='Spécifie le numéro de récépissé de l''agent de livraison.',
                                ENC='Specifies the shipping agent''s package number.';
                }
                field("Shipment Date";"Shipment Date")
                {
                    //Editable = "Shipment DateEditable";
                    ToolTipML = ENU='Specifies the date when the items were shipped.',
                                ESM='Especifica la fecha en la que se enviaron los productos.',
                                FRC='Spécifie la date à laquelle les articles ont été livrés.',
                                ENC='Specifies the date when the items were shipped.';
                }
                field("Shipping Advice";"Shipping Advice")
                {
                    ToolTipML = ENU='Specifies if the customer accepts partial shipment of orders. If you select Partial, then the Qty. To Ship field can be lower than the Quantity field on sales lines.  ',
                                ESM='Especifica si el cliente acepta el envío parcial de las órdenes. Si selecciona Parcial, el campo Cantidad a enviar puede ser inferior al campo Cantidad en las líneas de venta.  ',
                                FRC='Spécifie si le client accepte la livraison partielle des commandes. Si vous sélectionnez Partiel, le champ Quantité à livrer peut être inférieur au champ Quantité sur les lignes de vente.  ',
                                ENC='Specifies if the customer accepts partial shipment of orders. If you select Partial, then the Qty. To Ship field can be lower than the Quantity field on sales lines.  ';
                }
            }
        }
    }

    var
        "--DXC" : Integer;
        ShipToOptions : Option "Default (Sell-to Address)","Alternate Shipping Address","Custom Address";
        DXCEmptyShipToCodeErr : TextConst ENU='The Code field can only be empty if you select Custom Address in the Ship-to field.',ESM='El campo Código solo puede estar vacío si selecciona Dirección personalizada en el campo Dirección de envío.',FRC='Le champ Code ne peut être vide que si vous sélectionnez Adresse personnalisée dans le champ Destinataire.',ENC='The Code field can only be empty if you select Custom Address in the Ship-to field.';

   
}

