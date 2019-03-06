pageextension 50056 "DXCSalesOrderInvoiceExt" extends "Sales Order Invoice" 
{
    
    layout
    {
        addafter(Invoicing)
        {
            group(Shipping)
            {
                Caption = 'Shipping';
                group(Control1000000020)
                {
                    field(ShippingOptions;ShipToOptions)
                    {
                        ApplicationArea = Basic,Suite;
                        CaptionML = ENU='Ship-to',
                                    ESM='Dirección de envío',
                                    FRC='Destinataire',
                                    ENC='Ship-to';
                        OptionCaptionML = ENU='Default (Sell-to Address),Alternate Shipping Address,Custom Address',
                                          ESM='Predeterminada (dirección de venta),Dirección de envío alternativa,Dirección personalizada',
                                          FRC='Par défaut (Adresse du débiteur),Autre adresse de livraison,Adresse personnalisée',
                                          ENC='Default (Sell-to Address),Alternate Shipping Address,Custom Address';
                        ToolTipML = ENU='Specifies the address that the products on the sales document are shipped to. Default (Sell-to Address): The same as the customer''s sell-to address. Alternate Ship-to Address: One of the customer''s alternate ship-to addresses. Custom Address: Any ship-to address that you specify in the fields below.',
                                    ESM='Especifica la dirección a la que se envían los productos del documento de venta. Predeterminada (dirección de envío): la misma que la dirección de envío del cliente. Dirección de envío alternativa: una de las direcciones de envío alternativas del cliente. Dirección personalizada: cualquier dirección que especifique en los campos siguientes.',
                                    FRC='Spécifie l''adresse de livraison à laquelle les produits figurant sur le document vente sont livrés. Par défaut (Adresse de livraison débiteur): identique à l''adresse de livraison débiteur du client. Autre adresse de livraison destinataire: une des autres adresses de livraison destinataire du client. Adresse de livraison personnalisée: toute adresse de livraison destinataire que vous spécifiez dans les champs ci-dessous.',
                                    ENC='Specifies the address that the products on the sales document are shipped to. Default (Sell-to Address): The same as the customer''s sell-to address. Alternate Ship-to Address: One of the customer''s alternate ship-to addresses. Custom Address: Any ship-to address that you specify in the fields below.';

                        trigger OnValidate();
                        var
                            ShipToAddress : Record "Ship-to Address";
                            ShipToAddressList : Page "Ship-to Address List";
                        begin
                            case ShipToOptions of
                              ShipToOptions::"Default (Sell-to Address)":
                                begin
                                  VALIDATE("Ship-to Code",'');
                                  CopySellToAddressToShipToAddress;
                                end;
                              ShipToOptions::"Alternate Shipping Address":
                                begin
                                  ShipToAddress.SETRANGE("Customer No.","Sell-to Customer No.");
                                  ShipToAddressList.LOOKUPMODE := true;
                                  ShipToAddressList.SETTABLEVIEW(ShipToAddress);

                                  if ShipToAddressList.RUNMODAL = ACTION::LookupOK then begin
                                    ShipToAddressList.GETRECORD(ShipToAddress);
                                    VALIDATE("Ship-to Code",ShipToAddress.Code);
                                  end else
                                    ShipToOptions := ShipToOptions::"Custom Address";
                                end;
                              ShipToOptions::"Custom Address":
                                VALIDATE("Ship-to Code",'');
                            end;
                        end;
                    }
                    field("Shipment Date";"Shipment Date")
                    {
                    }
                    group(Control1000000018)
                    {
                        Visible = NOT (ShipToOptions = ShipToOptions::"Default (Sell-to Address)");
                        field("Ship-to Code";"Ship-to Code")
                        {
                            ApplicationArea = Basic,Suite;
                            CaptionML = ENU='Code',
                                        ESM='Código',
                                        FRC='Code',
                                        ENC='Code';
                            Editable = ShipToOptions = ShipToOptions::"Alternate Shipping Address";
                            Importance = Promoted;
                            ToolTipML = ENU='Specifies the code for another shipment address than the customer''s own address, which is entered by default.',
                                        ESM='Especifica el código para otra dirección de envío distinta a la propia dirección del cliente, que se especifica de forma predeterminada.',
                                        FRC='Spécifie le code d''une adresse de livraison différente de l''adresse du client, qui est entrée par défaut.',
                                        ENC='Specifies the code for another shipment address than the customer''s own address, which is entered by default.';

                            trigger OnValidate();
                            begin
                                if (xRec."Ship-to Code" <> '') and ("Ship-to Code" = '') then
                                  ERROR(DXCEmptyShipToCodeErr);
                            end;
                        }
                        field("Ship-to Name";"Ship-to Name")
                        {
                            ApplicationArea = Basic,Suite;
                            CaptionML = ENU='Name',
                                        ESM='Nombre',
                                        FRC='Nom',
                                        ENC='Name';
                            Editable = ShipToOptions = ShipToOptions::"Custom Address";
                            ToolTipML = ENU='Specifies the name that products on the sales document will be shipped to.',
                                        ESM='Especifica el nombre al que se enviarán los productos en el documento de venta.',
                                        FRC='Spécifie le nom auquel les produits mentionnés sur le document vente seront livrés.',
                                        ENC='Specifies the name that products on the sales document will be shipped to.';
                        }
                        field("Ship-to Address";"Ship-to Address")
                        {
                            ApplicationArea = Basic,Suite;
                            CaptionML = ENU='Address',
                                        ESM='Dirección',
                                        FRC='Adresse',
                                        ENC='Address';
                            Editable = ShipToOptions = ShipToOptions::"Custom Address";
                            ToolTipML = ENU='Specifies the address that products on the sales document will be shipped to.',
                                        ESM='Especifica la dirección a la que se enviarán los productos en el documento de venta.',
                                        FRC='Spécifie l''adresse à laquelle les produits mentionnés sur le document vente seront livrés.',
                                        ENC='Specifies the address that products on the sales document will be shipped to.';
                        }
                        field("Ship-to Address 2";"Ship-to Address 2")
                        {
                            ApplicationArea = Basic,Suite;
                            CaptionML = ENU='Address 2',
                                        ESM='Colonia 2',
                                        FRC='Adresse (2ème ligne)',
                                        ENC='Address 2';
                            Editable = ShipToOptions = ShipToOptions::"Custom Address";
                            ToolTipML = ENU='Specifies additional address information.',
                                        ESM='Especifica información adicional sobre la dirección.',
                                        FRC='Spécifie des informations d''adresse supplémentaires.',
                                        ENC='Specifies additional address information.';
                        }
                        field("Ship-to City";"Ship-to City")
                        {
                            ApplicationArea = Basic,Suite;
                            CaptionML = ENU='City',
                                        ESM='Municipio/Ciudad',
                                        FRC='Ville',
                                        ENC='City';
                            Editable = ShipToOptions = ShipToOptions::"Custom Address";
                            ToolTipML = ENU='Specifies the city of the customer on the sales document.',
                                        ESM='Especifica el municipio/ciudad del cliente en el documento de ventas.',
                                        FRC='Spécifie la ville du client sur le document vente.',
                                        ENC='Specifies the city of the customer on the sales document.';
                        }
                        field("Ship-to County";"Ship-to County")
                        {
                            ApplicationArea = Basic,Suite;
                            CaptionML = ENU='State',
                                        ESM='Estado',
                                        FRC='Province',
                                        ENC='Province/State';
                            Editable = ShipToOptions = ShipToOptions::"Custom Address";
                            ToolTipML = ENU='Specifies the state as a part of the address.',
                                        ESM='Especifica el estado o provincia como parte de la dirección.',
                                        FRC='Spécifie la province comme partie de l''adresse.',
                                        ENC='Specifies the province/state as a part of the address.';
                        }
                        field("Ship-to Post Code";"Ship-to Post Code")
                        {
                            ApplicationArea = Basic,Suite;
                            CaptionML = ENU='ZIP Code',
                                        ESM='Código postal',
                                        FRC='Code postal',
                                        ENC='Postal/ZIP Code';
                            Editable = ShipToOptions = ShipToOptions::"Custom Address";
                            ToolTipML = ENU='Specifies the ZIP code.',
                                        ESM='Especifica el código postal.',
                                        FRC='Spécifie le code postal.',
                                        ENC='Specifies the postal code.';
                        }
                        field("Ship-to Country/Region Code";"Ship-to Country/Region Code")
                        {
                            ApplicationArea = Basic,Suite;
                            CaptionML = ENU='Country/Region',
                                        ESM='País/región',
                                        FRC='Pays/région',
                                        ENC='Country/Region';
                            Editable = ShipToOptions = ShipToOptions::"Custom Address";
                            Importance = Additional;
                            ToolTipML = ENU='Specifies the customer''s country/region.',
                                        ESM='Especifica el país o región del cliente.',
                                        FRC='Spécifie le code pays/région du client.',
                                        ENC='Specifies the customer''s country/region.';
                        }
                        field("Ship-to UPS Zone";"Ship-to UPS Zone")
                        {
                            CaptionML = ENU='UPS Zone',
                                        ESM='Zona UPS',
                                        FRC='Zone UPS',
                                        ENC='UPS Zone';
                            ToolTipML = ENU='Specifies a UPS Zone code for this document if UPS is used for shipments.',
                                        ESM='Especifica el código de zona de porte (UPS) de este documento, si va a usar la zona UPS para realizar los envíos.',
                                        FRC='Spécifie un code Zone UPS pour ce document si le service est utilisé pour les livraisons.',
                                        ENC='Specifies a UPS Zone code for this document if UPS is used for shipments.';
                        }
                    }
                    field("Ship-to Contact";"Ship-to Contact")
                    {
                        ApplicationArea = Basic,Suite;
                        CaptionML = ENU='Contact',
                                    ESM='Contacto',
                                    FRC='Contact',
                                    ENC='Contact';
                        ToolTipML = ENU='Specifies the name of the contact person at the address that products on the sales document will be shipped to.',
                                    ESM='Especifica el nombre de la persona de contacto en la dirección a la que se enviarán los productos en el documento de venta.',
                                    FRC='Spécifie le nom de la personne contact à l''adresse d''expédition des produits figurant sur le document vente.',
                                    ENC='Specifies the name of the contact person at the address that products on the sales document will be shipped to.';
                    }
                }
                group("Shipment Method")
                {
                    CaptionML = ENU='Shipment Method',
                                ESM='Condiciones envío',
                                FRC='Méthode de livraison',
                                ENC='Shipment Method';
                    field("Shipment Method Code";"Shipment Method Code")
                    {
                        ApplicationArea = Basic,Suite;
                        CaptionML = ENU='Code',
                                    ESM='Código',
                                    FRC='Code',
                                    ENC='Code';
                        Importance = Additional;
                        ToolTipML = ENU='Specifies how items on the sales document are shipped to the customer.',
                                    ESM='Especifica la manera en que los productos del documento de venta se envían al cliente.',
                                    FRC='Spécifie le mode d''expédition au client des articles figurant sur le document vente.',
                                    ENC='Specifies how items on the sales document are shipped to the customer.';
                    }
                    field("Shipping Agent Code";"Shipping Agent Code")
                    {
                        ApplicationArea = Suite;
                        CaptionML = ENU='Agent',
                                    ESM='Agente',
                                    FRC='Agent de livraison',
                                    ENC='Agent';
                        Importance = Additional;
                        ToolTipML = ENU='Specifies which shipping agent is used to transport the items on the sales document to the customer.',
                                    ESM='Especifica el transportista que se usa para transportar los productos del documento de venta al cliente.',
                                    FRC='Spécifie quel agent de livraison est utilisé pour transporter les articles figurant sur le document de vente au client.',
                                    ENC='Specifies which shipping agent is used to transport the items on the sales document to the customer.';
                    }
                    field("Shipping Agent Service Code";"Shipping Agent Service Code")
                    {
                        ApplicationArea = Suite;
                        CaptionML = ENU='Agent service',
                                    ESM='Servicio de agente',
                                    FRC='Service agent de livraison',
                                    ENC='Agent service';
                        Importance = Additional;
                        ToolTipML = ENU='Specifies which shipping agent service is used to transport the items on the sales document to the customer.',
                                    ESM='Especifica el servicio de transportista que se usa para transportar los productos del documento de venta al cliente.',
                                    FRC='Spécifie quel service d''agent de livraison est utilisé pour transporter les articles figurant sur le document de vente au client.',
                                    ENC='Specifies which shipping agent service is used to transport the items on the sales document to the customer.';
                    }
                    field("Package Tracking No.";"Package Tracking No.")
                    {
                        ApplicationArea = Suite;
                        Importance = Additional;
                        ToolTipML = ENU='Specifies the shipping agent''s package number.',
                                    ESM='Especifica el número de paquete del transportista.',
                                    FRC='Spécifie le numéro de récépissé de l''agent de livraison.',
                                    ENC='Specifies the shipping agent''s package number.';
                    }
                    field("Shipping Advice";"Shipping Advice")
                    {
                    }
                    field("Customer Mfg. Dim. Value Code";"Customer Mfg. Dim. Value Code")
                    {
                    }
                    field("Order Type Code";"Order Type Code")
                    {
                    }
                    field("Consignment Location Code";"Consignment Location Code")
                    {
                    }
                    field("Outbound Whse. Handling Time";"Outbound Whse. Handling Time")
                    {
                    }
                    field("Shipping Time";"Shipping Time")
                    {
                    }
                    field("Late Order Shipping";"Late Order Shipping")
                    {
                    }
                    field("DXC Customer Shipping Account";"DXC Customer Shipping Account")
                    {
                    }
                    field("DXC End User Name";"DXC End User Name")
                    {
                    }
                    field("DXC Inco Location";"DXC Inco Location")
                    {
                    }
                }
            }
        }
    }

    var
        "--DXC" : Integer;
        ShipToOptions : Option "Default (Sell-to Address)","Alternate Shipping Address","Custom Address";
        DXCEmptyShipToCodeErr : TextConst ENU='The Code field can only be empty if you select Custom Address in the Ship-to field.',ESM='El campo Código solo puede estar vacío si selecciona Dirección personalizada en el campo Dirección de envío.',FRC='Le champ Code ne peut être vide que si vous sélectionnez Adresse personnalisée dans le champ Destinataire.',ENC='The Code field can only be empty if you select Custom Address in the Ship-to field.';

   
}

