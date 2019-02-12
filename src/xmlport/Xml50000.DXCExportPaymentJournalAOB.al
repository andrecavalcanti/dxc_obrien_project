xmlport 50000 "DXCExportPaymentJournalAOB"
{
    // version AOB-41

    // #eclipse   SB  6/18/18   Limited the InvoiceNumber field to 17 characters
    // AOB-41 AC 01-16-19 Bottomline Payment Export

    FieldSeparator = '|';
    Format = VariableText;

    schema
    {
        textelement(Root)
        {
            tableelement("Gen. Journal Line";"Gen. Journal Line")
            {
                XmlName = 'Document';
                fieldelement(VendorNo;"Gen. Journal Line"."Account No.")
                {

                    trigger OnBeforePassField();
                    begin
                        Vendor.GET("Gen. Journal Line"."Account No.");
                        Name := COPYSTR(Vendor.Name,1,35);
                        Address1 := COPYSTR(Vendor.Address,1,35);
                        Address2 := COPYSTR(Vendor."Address 2",1,35);
                        City := COPYSTR(Vendor.City,1,19);
                        State := COPYSTR(Vendor.County,1,2);
                        ZipCode := Vendor."Post Code";
                        Division := 'PAI';

                        case Vendor."Country/Region Code"  of
                          '','USA': Country := 'US';
                          'CA','CAN' : Country := 'Canada';
                          else begin
                            CountryRec.GET(Vendor."Country/Region Code");
                            Country := CountryRec.Name;
                          end;
                        end;
                        GenJournal.SETRANGE("Journal Template Name","Gen. Journal Line"."Journal Template Name");
                        GenJournal.SETRANGE("Journal Batch Name","Gen. Journal Line"."Journal Batch Name");
                        GenJournal.SETRANGE("Account Type","Gen. Journal Line"."Account Type");
                        GenJournal.SETRANGE("Account No.","Gen. Journal Line"."Account No.");
                        GenJournal.CALCSUMS(Amount);
                        CheckAmount := FORMAT(GenJournal.Amount,0,1);
                        InvoiceAmount := FORMAT("Gen. Journal Line".Amount,0,1);

                        CLEAR(VendorLedger);
                        VendorLedger.SETRANGE("Vendor No.","Gen. Journal Line"."Account No.");
                        VendorLedger.SETRANGE("Document Type","Gen. Journal Line"."Applies-to Doc. Type");
                        VendorLedger.SETRANGE("Document No.","Gen. Journal Line"."Applies-to Doc. No.");
                        // UXCECLIPSE SB  - Added Begin/End and InvoiceNumber line
                        if VendorLedger.FINDFIRST then begin   // Added BEGIN
                          InvoiceDescription := VendorLedger.Description;
                          InvoiceNumber := COPYSTR(VendorLedger."External Document No.",1,17);    // #Eclipse - Limited the Invoice Number to 17 characters
                        end;
                        // END Change
                        // UXCEclipse SB - Added Date Format
                        PostingDate := FORMAT("Gen. Journal Line"."Posting Date",0,'<Month,2>/<Day,2>/<Year4>');
                        // END;

                        DiscountAmount := FORMAT(VendorLedger."Remaining Pmt. Disc. Possible");
                        NetAmount := FORMAT("Gen. Journal Line".Amount,0,1);

                        BankAccount.GET("Gen. Journal Line"."Bal. Account No.");
                        CreditTransferRegister.CreateNew("Gen. Journal Line"."Document No.",BankAccount."No.");
                    end;
                }
                textelement(Name)
                {
                }
                textelement(Address1)
                {
                }
                textelement(Address2)
                {
                }
                textelement(Blank1)
                {
                }
                textelement(Blank2)
                {
                }
                textelement(Blank3)
                {
                }
                textelement(City)
                {
                }
                textelement(State)
                {
                }
                textelement(ZipCode)
                {
                }
                textelement(CheckAmount)
                {
                }
                textelement(InvoiceNumber)
                {
                }
                textelement(InvoiceAmount)
                {
                }
                textelement(PostingDate)
                {
                }
                textelement(Division)
                {
                }
                textelement(Country)
                {
                }
                textelement(InvoiceDescription)
                {
                }
                textelement(DiscountAmount)
                {
                }
                textelement(NetAmount)
                {
                }
            }
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    var
        Vendor : Record Vendor;
        CountryRec : Record "Country/Region";
        VendorLedger : Record "Vendor Ledger Entry";
        GenJournal : Record "Gen. Journal Line";
        BankAccount : Record "Bank Account";
        CreditTransferRegister : Record "Credit Transfer Register";
}

