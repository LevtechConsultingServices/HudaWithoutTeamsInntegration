page 60013 "Bounced PDC Receipts"
{
    // Code           Date        Name        Desc.
    // APNT-LCPDC1.0  20.05.12    Monica      Created New.

    CardPageID = "Bounced PDC Receipt";
    DelayedInsert = false;
    DeleteAllowed = false;
    Editable = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "PDC Receipt";
    Caption = 'PDC Closed Receipts';
    /* SourceTableView = WHERE(Bounced = CONST(true),
                             Posted = CONST(true),
                             "Returned/ Not Encashed" = CONST(false));*/
    SourceTableView = WHERE(Status = CONST(Closed));
    /*,                            Posted = CONST(true),
                            "Returned/ Not Encashed" = CONST(false));*/

    layout
    {
        area(content)
        {
            repeater(General)
            {
                Caption = 'General';
                field("Code"; Code)
                {
                    ApplicationArea = All;
                }
                field("Customer No."; "Customer No.")
                {
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field(Address; Address)
                {
                    ApplicationArea = All;
                }
                field("Address 2"; "Address 2")
                {
                    ApplicationArea = All;
                }
                field("Post Code"; "Post Code")
                {
                    ApplicationArea = All;
                }
                field(City; City)
                {
                    ApplicationArea = All;
                }
                field("Country Code"; "Country Code")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 3 Code"; "Shortcut Dimension 3 Code")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 4 Code"; "Shortcut Dimension 4 Code")
                {
                    ApplicationArea = All;
                }
                field(Control1000000053; '')
                {
                    CaptionClass = Text19063386;
                    ShowCaption = false;
                    Style = Strong;
                    StyleExpr = TRUE;
                    ApplicationArea = All;
                }
                field("Customer Bank"; "Customer Bank")
                {
                    ApplicationArea = All;
                }
                field("Bank Name"; "Bank Name")
                {
                    ApplicationArea = All;
                }
                field("Bank Address"; "Bank Address")
                {
                    ApplicationArea = All;
                }
                field("Bank Address 2"; "Bank Address 2")
                {
                    ApplicationArea = All;
                }
                field("Bank Post Code"; "Bank Post Code")
                {
                    ApplicationArea = All;
                }
                field("Bank Country Code"; "Bank Country Code")
                {
                    ApplicationArea = All;
                }
                field("Bank Branch No."; "Bank Branch No.")
                {
                    ApplicationArea = All;
                }
                field("Bank Account No."; "Bank Account No.")
                {
                    ApplicationArea = All;
                }
                field(Control1000000054; '')
                {
                    CaptionClass = Text19059481;
                    ShowCaption = false;
                    Style = Strong;
                    StyleExpr = TRUE;
                    ApplicationArea = All;
                }
                field("Bank City"; "Bank City")
                {
                    ApplicationArea = All;
                }
                field(Status; Status)
                {
                    ApplicationArea = All;
                }
                field(Remarks; Remarks)
                {
                    ApplicationArea = All;
                }
                field(Cleared; Cleared)
                {
                    ApplicationArea = All;
                }
                field("Posting Date"; "Posting Date")
                {
                    ApplicationArea = All;
                }
                field("Document Date"; "Document Date")
                {
                    ApplicationArea = All;
                }
                field(Control1000000100; '')
                {
                    CaptionClass = Text19079450;
                    ShowCaption = false;
                    Style = Strong;
                    StyleExpr = TRUE;
                    ApplicationArea = All;
                }
                field("Cheque No."; "Cheque No.")
                {
                    ApplicationArea = All;
                }
                field("Cheque Date"; "Cheque Date")
                {
                    ApplicationArea = All;
                }
                field(Amount; Amount)
                {
                    ApplicationArea = All;
                }
                field("Currency Code"; "Currency Code")
                {
                    ApplicationArea = All;
                }
                field("Reference Type"; "Reference Type")
                {
                    ApplicationArea = All;
                }
                field("Applies-to ID"; "Applies-to ID")
                {
                    ApplicationArea = All;
                }
                field("UnApplied PDC"; "UnApplied PDC")
                {
                    ApplicationArea = All;
                }
                field(Control1000000101; '')
                {
                    CaptionClass = Text19019971;
                    ShowCaption = false;
                    Style = Strong;
                    StyleExpr = TRUE;
                    ApplicationArea = All;
                }
                field("PDC Deposit Bank No."; "PDC Deposit Bank No.")
                {
                    ApplicationArea = All;
                }
                field("Deposit Bank Name"; "Deposit Bank Name")
                {
                    ApplicationArea = All;
                }
                field("Deposit Bank Address 1"; "Deposit Bank Address 1")
                {
                    ApplicationArea = All;
                }
                field("Deposit Bank Address 2"; "Deposit Bank Address 2")
                {
                    ApplicationArea = All;
                }
                field("Deposit Bank Post Code"; "Deposit Bank Post Code")
                {
                    ApplicationArea = All;
                }
                field("Deposit Bank City"; "Deposit Bank City")
                {
                    ApplicationArea = All;
                }
                field("Deposit Bank Country Code"; "Deposit Bank Country Code")
                {
                    ApplicationArea = All;
                }
                field("Deposit Bank Branch No."; "Deposit Bank Branch No.")
                {
                    ApplicationArea = All;
                }
                field("Deposit Bank Account No."; "Deposit Bank Account No.")
                {
                    ApplicationArea = All;
                }
                field("Deposit Bank Currency Code"; "Deposit Bank Currency Code")
                {
                    ApplicationArea = All;
                }
                field("Deposit Bank Dim1 Code"; "Deposit Bank Dim1 Code")
                {
                    ApplicationArea = All;
                }
                field("Deposit Bank Dim2 Code"; "Deposit Bank Dim2 Code")
                {
                    ApplicationArea = All;
                }
                field("Deposit Bank Dim3 Code"; "Deposit Bank Dim3 Code")
                {
                    ApplicationArea = All;
                }
                field("Deposit Bank Dim4 Code"; "Deposit Bank Dim4 Code")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            group("F&unctions")
            {
                Caption = 'F&unctions';
                action("&Applied Documents")
                {
                    Caption = '&Applied Documents';
                    RunObject = Page "Applied PDC Documents";
                    RunPageLink = "PDC No." = FIELD(Code);
                    ApplicationArea = All;
                }
                separator(Separator1000000070)
                {

                }
                action(Reopen)
                {
                    Caption = 'Reopen';
                    Image = ReOpen;
                    ApplicationArea = All;

                    trigger OnAction()
                    begin
                        if Confirm('Do you want to reopen the PDC ?') then begin
                            if (Status = Status::Deposited) or (Status = Status::Bounced) then begin
                                PDCAppliedAmtRec.Reset;
                                PDCAppliedAmtRec.SetFilter(PDCAppliedAmtRec."PDC No.", Code);
                                if PDCAppliedAmtRec.Find('-') then
                                    repeat
                                        PDCAppliedAmtRec.Delete;
                                    until PDCAppliedAmtRec.Next = 0;
                                Status := Status::" ";
                                Bounced := false;
                                Posted := false;
                                Modify;
                            end;
                        end;
                    end;
                }
            }
        }
    }

    var
        PDCAppliedAmtRec: Record "PDC Applied Amount";
        Text19063386: Label 'Customer Bank Details';
        Text19059481: Label 'Status';
        Text19079450: Label 'Cheque Details';
        Text19019971: Label 'Deposit Bank Details';
}

