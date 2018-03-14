unit SellSystem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AddShape, StdCtrls, Stdlabel, AddBevel, StdGroupBox,
  Buttons, AddBitBtn, HbtDatePicker, AddLabeledEdit, ComCtrls,
  Win32StatusBar, DBCtrls, DCDBText, Grids, DBGrids, DCDBGrid,
  Win32RichEdit, StdEdit, Win32PageControl, ImgList, Win32ImageList,
  hbtSelectedField, StdComboBox, StdCheckBox, AddScrollBox, AddImage,DateCurrency,HbtMessageDialog;

type
  TfmSellSystem = class(TForm)
    scrbMain: TAddScrollBox;
    SelectedField: ThbtSelectedField;
    Win32ImageList1: TWin32ImageList;
    shpBanner: TAddShape;
    Win32StatusBar1: TWin32StatusBar;
    BtnClose: TAddBitBtn;
    Stdlabel30: TStdlabel;
    Stdlabel31: TStdlabel;
    Stdlabel32: TStdlabel;
    Stdlabel33: TStdlabel;
    Stdlabel35: TStdlabel;
    Stdlabel36: TStdlabel;
    Stdlabel37: TStdlabel;
    Stdlabel38: TStdlabel;
    Stdlabel39: TStdlabel;
    Stdlabel40: TStdlabel;
    Stdlabel41: TStdlabel;
    Stdlabel42: TStdlabel;
    lblTitle: TStdlabel;
    AddImage1: TAddImage;
    StdGroupBox1: TStdGroupBox;
    AddBevel38: TAddBevel;
    Stdlabel25: TStdlabel;
    dbgSystemOrder: TDCDBGrid;
    pgcOrderSystem: TWin32PageControl;
    tbsNew: TTabSheet;
    Stdlabel1: TStdlabel;
    dbtxtName: TDCDBText;
    Stdlabel2: TStdlabel;
    Stdlabel3: TStdlabel;
    AddBevel1: TAddBevel;
    Stdlabel4: TStdlabel;
    Stdlabel5: TStdlabel;
    Stdlabel6: TStdlabel;
    Stdlabel7: TStdlabel;
    Stdlabel8: TStdlabel;
    AddBevel3: TAddBevel;
    AddBevel4: TAddBevel;
    AddBevel8: TAddBevel;
    AddBevel39: TAddBevel;
    Stdlabel26: TStdlabel;
    Stdlabel44: TStdlabel;
    AddBevel10: TAddBevel;
    AddBevel2: TAddBevel;
    AddBevel5: TAddBevel;
    AddBevel6: TAddBevel;
    AddBevel7: TAddBevel;
    Stdlabel9: TStdlabel;
    AddBevel9: TAddBevel;
    AddBevel11: TAddBevel;
    AddBevel12: TAddBevel;
    AddBevel13: TAddBevel;
    AddBevel14: TAddBevel;
    AddBevel15: TAddBevel;
    lbledFactorNo: TAddLabeledEdit;
    SellDate: THbtDatePicker;
    lbledCustomer: TAddLabeledEdit;
    btnSelSeller: TAddBitBtn;
    btnDefSeller: TAddBitBtn;
    lbledCount: TAddLabeledEdit;
    redComments: TWin32RichEdit;
    lbledSelCpu: TAddLabeledEdit;
    lbledSelRam: TAddLabeledEdit;
    lbledSelHard: TAddLabeledEdit;
    lbledSelMb: TAddLabeledEdit;
    lbledSelMonitor: TAddLabeledEdit;
    lbledSelCase: TAddLabeledEdit;
    lbledSelCdRom: TAddLabeledEdit;
    lbledSelCdWriter: TAddLabeledEdit;
    lbledSelDvdRom: TAddLabeledEdit;
    lbledSelDvdWriter: TAddLabeledEdit;
    btnSelCpu: TAddBitBtn;
    btnSelRam: TAddBitBtn;
    btnSelHard: TAddBitBtn;
    btnSelMB: TAddBitBtn;
    btnSelMonitor: TAddBitBtn;
    btnSelCase: TAddBitBtn;
    btnSelCdRom: TAddBitBtn;
    btnSelCdWriter: TAddBitBtn;
    btnSelDvdRom: TAddBitBtn;
    edMouseName: TStdEdit;
    edCpuMark: TStdEdit;
    edCpuCount: TStdEdit;
    edCpuPrice: TStdEdit;
    edCpuName: TStdEdit;
    edRamMark: TStdEdit;
    edRamCount: TStdEdit;
    edRamPrice: TStdEdit;
    edRamName: TStdEdit;
    edHardMark: TStdEdit;
    edHardCount: TStdEdit;
    edHardPrice: TStdEdit;
    edHardName: TStdEdit;
    edMBMark: TStdEdit;
    edMbCount: TStdEdit;
    edMBPrice: TStdEdit;
    edMBName: TStdEdit;
    edMonitorMark: TStdEdit;
    edMonitorCount: TStdEdit;
    edMonitorPrice: TStdEdit;
    edMonitorName: TStdEdit;
    edCaseMark: TStdEdit;
    edCaseCount: TStdEdit;
    edCasePrice: TStdEdit;
    edCaseName: TStdEdit;
    edCDRMark: TStdEdit;
    edCDRCount: TStdEdit;
    edCDRPrice: TStdEdit;
    edCDRName: TStdEdit;
    edCDWMark: TStdEdit;
    edCDWCount: TStdEdit;
    edCDWPrice: TStdEdit;
    edCDWName: TStdEdit;
    edDVDRMark: TStdEdit;
    edDVDRCount: TStdEdit;
    edDVDRPrice: TStdEdit;
    btnSelDvdWriter: TAddBitBtn;
    lbledSelSpeaker: TAddLabeledEdit;
    btnSelSpeaker: TAddBitBtn;
    lbledSelKeyBoard: TAddLabeledEdit;
    lbledSelMouse: TAddLabeledEdit;
    lbledSelVGA: TAddLabeledEdit;
    lbledSelSound: TAddLabeledEdit;
    lbledSelPrinter: TAddLabeledEdit;
    lbledSelScanner: TAddLabeledEdit;
    lbledSelLanCard: TAddLabeledEdit;
    edDVDRName: TStdEdit;
    edDVDWMark: TStdEdit;
    edDVDWCount: TStdEdit;
    edDVDWPrice: TStdEdit;
    edDVDWName: TStdEdit;
    edSPMark: TStdEdit;
    edSPPrice: TStdEdit;
    edSPName: TStdEdit;
    edKeyBMark: TStdEdit;
    edKeyBCount: TStdEdit;
    edKeyBPrice: TStdEdit;
    edKeyBName: TStdEdit;
    edMouseMark: TStdEdit;
    edMouseCount: TStdEdit;
    edMousePrice: TStdEdit;
    btnSelKeyBoard: TAddBitBtn;
    btnSelMouse: TAddBitBtn;
    btnSelVGA: TAddBitBtn;
    btnSelSound: TAddBitBtn;
    btnSelPrinter: TAddBitBtn;
    btnSelScanner: TAddBitBtn;
    btnSellanCard: TAddBitBtn;
    btnSelTvCard: TAddBitBtn;
    btnSelModem: TAddBitBtn;
    btnSelUPS: TAddBitBtn;
    btnSelWebCam: TAddBitBtn;
    btnSelHeadSet: TAddBitBtn;
    btnSelMicroPhone: TAddBitBtn;
    btnSelSwitch: TAddBitBtn;
    btnSelFloppy: TAddBitBtn;
    lbledSelTvCard: TAddLabeledEdit;
    lbledSelModem: TAddLabeledEdit;
    lbledSelSwitch: TAddLabeledEdit;
    lbledSelWebCam: TAddLabeledEdit;
    lbledSelHeadSet: TAddLabeledEdit;
    lbledSelMicroPhone: TAddLabeledEdit;
    lbledSelUPS: TAddLabeledEdit;
    lbledSelFloppy: TAddLabeledEdit;
    lbledTotalCalc: TAddLabeledEdit;
    BtnSave: TAddBitBtn;
    BtnSaveNew: TAddBitBtn;
    btnDel: TAddBitBtn;
    btnCalc1: TAddBitBtn;
    cmbPardakhtKind: TStdComboBox;
    pgcPay: TWin32PageControl;
    tbsnaghd: TTabSheet;
    Stdlabel43: TStdlabel;
    Stdlabel55: TStdlabel;
    nLbledTotalGP: TAddLabeledEdit;
    NlbledPishPardakht: TAddLabeledEdit;
    NlbledVarantyPrice: TAddLabeledEdit;
    NlbledAsembelPrice: TAddLabeledEdit;
    NlbledTakhfif: TAddLabeledEdit;
    NlbledMande: TAddLabeledEdit;
    NPayDate: THbtDatePicker;
    NredComments: TWin32RichEdit;
    tbsAghsat: TTabSheet;
    Stdlabel56: TStdlabel;
    Stdlabel57: TStdlabel;
    Stdlabel58: TStdlabel;
    Stdlabel59: TStdlabel;
    AlbledTotalGp: TAddLabeledEdit;
    AlbledPishPardakht: TAddLabeledEdit;
    AlbledVarantyPrice: TAddLabeledEdit;
    AlbledAsembelPrice: TAddLabeledEdit;
    AlbledMande: TAddLabeledEdit;
    AlbledTakhfif: TAddLabeledEdit;
    APayDate: THbtDatePicker;
    AlbledGhestPrice: TAddLabeledEdit;
    AlbledGhestDay: TAddLabeledEdit;
    AStartDate: THbtDatePicker;
    AEndDate: THbtDatePicker;
    AredComments: TWin32RichEdit;
    tbsCheck: TTabSheet;
    Stdlabel60: TStdlabel;
    Stdlabel61: TStdlabel;
    Stdlabel62: TStdlabel;
    Stdlabel63: TStdlabel;
    clbledTotalGp: TAddLabeledEdit;
    ClbledPishPardakht: TAddLabeledEdit;
    ClbledVarantyPrice: TAddLabeledEdit;
    ClbledAsembelPrice: TAddLabeledEdit;
    ClbledMande: TAddLabeledEdit;
    ClbledTakhfif: TAddLabeledEdit;
    CPayDate: THbtDatePicker;
    ClbledMablagh: TAddLabeledEdit;
    CheckPayDate: THbtDatePicker;
    CheckVosolDate: THbtDatePicker;
    ClbledCheckNo: TAddLabeledEdit;
    ClbledBankName: TAddLabeledEdit;
    ClbledBankAddress: TAddLabeledEdit;
    chbForZemanat: TStdCheckBox;
    CredComments: TWin32RichEdit;
    edSoundName: TStdEdit;
    edVGAName: TStdEdit;
    edScannerName: TStdEdit;
    edPrinterName: TStdEdit;
    edTVCName: TStdEdit;
    edLANCName: TStdEdit;
    edModemName: TStdEdit;
    edWebCamName: TStdEdit;
    edHSetName: TStdEdit;
    edMcName: TStdEdit;
    edUPSName: TStdEdit;
    edSwName: TStdEdit;
    edFDDName: TStdEdit;
    edCpuModel: TStdEdit;
    edVGAMark: TStdEdit;
    edScannerMark: TStdEdit;
    edPrinterMark: TStdEdit;
    edTVCMark: TStdEdit;
    edLANCMark: TStdEdit;
    edModemMark: TStdEdit;
    edWebCamMark: TStdEdit;
    edHSetMark: TStdEdit;
    edMcMark: TStdEdit;
    edUPSMark: TStdEdit;
    edSwMark: TStdEdit;
    edFDDMark: TStdEdit;
    edRamModel: TStdEdit;
    edHardModel: TStdEdit;
    edMbModel: TStdEdit;
    edMonitorModel: TStdEdit;
    edCaseModel: TStdEdit;
    edCDRModel: TStdEdit;
    edCDWModel: TStdEdit;
    edDVDRModel: TStdEdit;
    edDVDWModel: TStdEdit;
    edSPModel: TStdEdit;
    edKeyBModel: TStdEdit;
    edMouseModel: TStdEdit;
    edSoundModel: TStdEdit;
    edVGAModel: TStdEdit;
    edScannerModel: TStdEdit;
    edPrinterModel: TStdEdit;
    edTVCModel: TStdEdit;
    edLANCModel: TStdEdit;
    edModemModel: TStdEdit;
    edWebCamModel: TStdEdit;
    edHSetModel: TStdEdit;
    edMcModel: TStdEdit;
    edUPSModel: TStdEdit;
    edSwModel: TStdEdit;
    edFDDModel: TStdEdit;
    edSoundMark: TStdEdit;
    edSoundCount: TStdEdit;
    edSoundPrice: TStdEdit;
    edVGACount: TStdEdit;
    edVGAPrice: TStdEdit;
    edScannerCount: TStdEdit;
    edScannerPrice: TStdEdit;
    edPrinterCount: TStdEdit;
    edPrinterPrice: TStdEdit;
    edTVCCount: TStdEdit;
    edTVCPrice: TStdEdit;
    edLANCCount: TStdEdit;
    edLANCPrice: TStdEdit;
    edModemCount: TStdEdit;
    edModemPrice: TStdEdit;
    edWebCamCount: TStdEdit;
    edWebCamPrice: TStdEdit;
    edHSetCount: TStdEdit;
    edHSetPrice: TStdEdit;
    edMcCount: TStdEdit;
    edMcPrice: TStdEdit;
    edUPSCount: TStdEdit;
    edUPSPrice: TStdEdit;
    edSwCount: TStdEdit;
    edSwPrice: TStdEdit;
    edFDDCount: TStdEdit;
    edFDDPrice: TStdEdit;
    tbsEdit: TTabSheet;
    Stdlabel10: TStdlabel;
    DCDBText1: TDCDBText;
    DCDBText2: TDCDBText;
    Stdlabel11: TStdlabel;
    Stdlabel12: TStdlabel;
    Stdlabel18: TStdlabel;
    AddBevel30: TAddBevel;
    AddBevel31: TAddBevel;
    Stdlabel19: TStdlabel;
    Stdlabel20: TStdlabel;
    AddBitBtn55: TAddBitBtn;
    btnSaveEdit: TAddBitBtn;
    lbledFactorNoEdit: TAddLabeledEdit;
    SellDateEdit: THbtDatePicker;
    lbledCustomerEdit: TAddLabeledEdit;
    AddBitBtn14: TAddBitBtn;
    AddBitBtn28: TAddBitBtn;
    lbledCountEdit: TAddLabeledEdit;
    redCommentsEdit: TWin32RichEdit;
    cmbpardakhtKindEdit: TStdComboBox;
    pgcPayEdit: TWin32PageControl;
    tbsNaghdEdit: TTabSheet;
    Stdlabel21: TStdlabel;
    Stdlabel22: TStdlabel;
    nLbledTotalGPedit: TAddLabeledEdit;
    NlbledPishPardakhtEdit: TAddLabeledEdit;
    NlbledVarantyPriceedit: TAddLabeledEdit;
    NlbledAsembelPriceEdit: TAddLabeledEdit;
    NlbledTakhfifEdit: TAddLabeledEdit;
    NlbledMandeEdit: TAddLabeledEdit;
    NPayDateEdit: THbtDatePicker;
    NredCommentsEdit: TWin32RichEdit;
    tbsAghsatEdit: TTabSheet;
    Stdlabel23: TStdlabel;
    Stdlabel24: TStdlabel;
    Stdlabel27: TStdlabel;
    Stdlabel28: TStdlabel;
    AlbledTotalGpEdit: TAddLabeledEdit;
    AlbledPishPardakhtEdit: TAddLabeledEdit;
    AlbledVarantyPriceEdit: TAddLabeledEdit;
    AlbledAsembelPriceEdit: TAddLabeledEdit;
    AlbledMandeEdit: TAddLabeledEdit;
    AlbledTakhfifEdit: TAddLabeledEdit;
    APayDateEdit: THbtDatePicker;
    AlbledGhestPriceEdit: TAddLabeledEdit;
    AlbledGhestDayEdit: TAddLabeledEdit;
    AStartDateEdit: THbtDatePicker;
    AEndDateEdit: THbtDatePicker;
    Win32RichEdit6: TWin32RichEdit;
    tbsCheckEdit: TTabSheet;
    Stdlabel45: TStdlabel;
    Stdlabel46: TStdlabel;
    Stdlabel47: TStdlabel;
    Stdlabel48: TStdlabel;
    clbledTotalGpEdit: TAddLabeledEdit;
    ClbledPishPardakhtEdit: TAddLabeledEdit;
    ClbledVarantyPriceEdit: TAddLabeledEdit;
    ClbledAsembelPriceEdit: TAddLabeledEdit;
    ClbledMandeEdit: TAddLabeledEdit;
    ClbledTakhfifEdit: TAddLabeledEdit;
    CPayDateEdit: THbtDatePicker;
    ClbledMablaghEdit: TAddLabeledEdit;
    CheckPayDateEdit: THbtDatePicker;
    CheckVosolDateEdit: THbtDatePicker;
    ClbledCheckNoEdit: TAddLabeledEdit;
    ClbledBankNameEdit: TAddLabeledEdit;
    ClbledBankAddressEdit: TAddLabeledEdit;
    chbForZemanatEdit: TStdCheckBox;
    CredCommentsEdit: TWin32RichEdit;
    redGPComments: TWin32RichEdit;
    Stdlabel49: TStdlabel;
    Stdlabel50: TStdlabel;
    lbledSelOrder: TAddLabeledEdit;
    dbtxtFamily: TDCDBText;
    edZDriveName: TStdEdit;
    edZDriveMark: TStdEdit;
    edZDriveModel: TStdEdit;
    edZDriveCount: TStdEdit;
    edZDrivePrice: TStdEdit;
    edExtraName: TStdEdit;
    edExtraMark: TStdEdit;
    edExtraModel: TStdEdit;
    edExtraCount: TStdEdit;
    edExtraPrice: TStdEdit;
    btnSelZipDrive: TAddBitBtn;
    lbledSelZipDrive: TAddLabeledEdit;
    lbledSelExtra: TAddLabeledEdit;
    btnSelExtra: TAddBitBtn;
    edSPCount: TStdEdit;
    Stdlabel14: TStdlabel;
    Stdlabel15: TStdlabel;
    Stdlabel16: TStdlabel;
    Stdlabel17: TStdlabel;
    AddBevel16: TAddBevel;
    AddBevel17: TAddBevel;
    AddBevel18: TAddBevel;
    AddBevel19: TAddBevel;
    AddBevel20: TAddBevel;
    AddBevel21: TAddBevel;
    AddBevel22: TAddBevel;
    AddBevel23: TAddBevel;
    Stdlabel51: TStdlabel;
    AddBevel24: TAddBevel;
    AddBevel25: TAddBevel;
    AddBevel26: TAddBevel;
    AddBevel27: TAddBevel;
    lbledSelCpuEdit: TAddLabeledEdit;
    lbledSelRamEdit: TAddLabeledEdit;
    lbledSelHardEdit: TAddLabeledEdit;
    lbledSelMbEdit: TAddLabeledEdit;
    lbledSelMonitorEdit: TAddLabeledEdit;
    lbledSelCaseEdit: TAddLabeledEdit;
    lbledSelCdRomEdit: TAddLabeledEdit;
    lbledSelCdWriterEdit: TAddLabeledEdit;
    lbledSelDvdRomEdit: TAddLabeledEdit;
    lbledSelDvdWriterEdit: TAddLabeledEdit;
    btnSelCpuEdit: TAddBitBtn;
    btnSelRamEdit: TAddBitBtn;
    btnSelHardEdit: TAddBitBtn;
    btnSelMBEdit: TAddBitBtn;
    btnSelMonitorEdit: TAddBitBtn;
    btnSelCaseEdit: TAddBitBtn;
    btnSelCdRomEdit: TAddBitBtn;
    btnSelCdWriterEdit: TAddBitBtn;
    btnSelDvdRomEdit: TAddBitBtn;
    edMouseNameEdit: TStdEdit;
    edCpuMarkEdit: TStdEdit;
    edCpuCountEdit: TStdEdit;
    edCpuPriceEdit: TStdEdit;
    edCpuNameEdit: TStdEdit;
    edRamMarkEdit: TStdEdit;
    edRamCountEdit: TStdEdit;
    edRamPriceEdit: TStdEdit;
    edRamNameEdit: TStdEdit;
    edHardMarkEdit: TStdEdit;
    edHardCountEdit: TStdEdit;
    edHardPriceEdit: TStdEdit;
    edHardNameEdit: TStdEdit;
    edMBMarkEdit: TStdEdit;
    edMBCountEdit: TStdEdit;
    edMBPriceEdit: TStdEdit;
    edMBNameEdit: TStdEdit;
    edMonitorMarkEdit: TStdEdit;
    edMonitorCountEdit: TStdEdit;
    edMonitorPriceEdit: TStdEdit;
    edMonitorNameEdit: TStdEdit;
    edCaseMarkEdit: TStdEdit;
    edCaseCountEdit: TStdEdit;
    edCasePriceEdit: TStdEdit;
    edCaseNameEdit: TStdEdit;
    edCDRMarkEdit: TStdEdit;
    edCDRCountEdit: TStdEdit;
    edCDRPriceEdit: TStdEdit;
    edCDRNameEdit: TStdEdit;
    edCDWMarkEdit: TStdEdit;
    edCDWCountEdit: TStdEdit;
    edCDWPriceEdit: TStdEdit;
    edCDWNameEdit: TStdEdit;
    edDVDRMarkEdit: TStdEdit;
    edDVDRCountEdit: TStdEdit;
    edDVDRPriceEdit: TStdEdit;
    btnSelDvdWriterEdit: TAddBitBtn;
    lbledSelSpeakerEdit: TAddLabeledEdit;
    btnSelSpeakerEdit: TAddBitBtn;
    lbledSelKeyBoardEdit: TAddLabeledEdit;
    lbledSelMouseEdit: TAddLabeledEdit;
    lbledSelVGAEdit: TAddLabeledEdit;
    lbledSelSoundEdit: TAddLabeledEdit;
    lbledSelPrinterEdit: TAddLabeledEdit;
    lbledSelScannerEdit: TAddLabeledEdit;
    lbledSelLanCardEdit: TAddLabeledEdit;
    edDVDRNameEdit: TStdEdit;
    edDVDWMarkEdit: TStdEdit;
    edDVDWCountEdit: TStdEdit;
    edDVDWPriceEdit: TStdEdit;
    edDVDWNameEdit: TStdEdit;
    edSPMarkEdit: TStdEdit;
    edSPPriceEdit: TStdEdit;
    edSPNameEdit: TStdEdit;
    edKeyBMarkEdit: TStdEdit;
    edKeyBCountEdit: TStdEdit;
    edKeyBPriceEdit: TStdEdit;
    edKeyBNameEdit: TStdEdit;
    edMouseMarkEdit: TStdEdit;
    edMouseCountEdit: TStdEdit;
    edMousePriceEdit: TStdEdit;
    btnSelKeyBoardEdit: TAddBitBtn;
    btnSelMouseEdit: TAddBitBtn;
    btnSelVGAEdit: TAddBitBtn;
    btnSelSoundEdit: TAddBitBtn;
    btnSelPrinterEdit: TAddBitBtn;
    btnSelScannerEdit: TAddBitBtn;
    btnSellanCardEdit: TAddBitBtn;
    btnSelTvCardEdit: TAddBitBtn;
    btnSelModemEdit: TAddBitBtn;
    btnSelWebCamEdit: TAddBitBtn;
    lbledSelTvCardEdit: TAddLabeledEdit;
    lbledSelModemEdit: TAddLabeledEdit;
    lbledSelWebCamEdit: TAddLabeledEdit;
    lbledSelHeadSetEdit: TAddLabeledEdit;
    edSoundNameEdit: TStdEdit;
    edVGANameEdit: TStdEdit;
    edScannerNameEdit: TStdEdit;
    edPrinterNameEdit: TStdEdit;
    edTVCNameEdit: TStdEdit;
    edLANCNameEdit: TStdEdit;
    edModemNameEdit: TStdEdit;
    edWebCamNameEdit: TStdEdit;
    edHSetNameEdit: TStdEdit;
    edCpuModelEdit: TStdEdit;
    edVGAMarkEdit: TStdEdit;
    edScannerMarkEdit: TStdEdit;
    edPrinterMarkEdit: TStdEdit;
    edTVCMarkEdit: TStdEdit;
    edLANCMarkEdit: TStdEdit;
    edModemMarkEdit: TStdEdit;
    edWebCamMarkEdit: TStdEdit;
    edHSetMarkEdit: TStdEdit;
    edRamModelEdit: TStdEdit;
    edHardModelEdit: TStdEdit;
    edMBModelEdit: TStdEdit;
    edMonitorModelEdit: TStdEdit;
    edCaseModelEdit: TStdEdit;
    edCDRModelEdit: TStdEdit;
    edCDWModelEdit: TStdEdit;
    edDVDRModelEdit: TStdEdit;
    edDVDWModelEdit: TStdEdit;
    edSPModelEdit: TStdEdit;
    edKeyBModelEdit: TStdEdit;
    edMouseModelEdit: TStdEdit;
    edSoundModelEdit: TStdEdit;
    edVGAModelEdit: TStdEdit;
    edScannerModelEdit: TStdEdit;
    edPrinterModelEdit: TStdEdit;
    edTVCModelEdit: TStdEdit;
    edLANCModelEdit: TStdEdit;
    edModemModelEdit: TStdEdit;
    edWebCamModelEdit: TStdEdit;
    edHSetModelEdit: TStdEdit;
    edSoundMarkEdit: TStdEdit;
    edSoundCountEdit: TStdEdit;
    edSoundPriceEdit: TStdEdit;
    edVGACountEdit: TStdEdit;
    edVGAPriceEdit: TStdEdit;
    edScannerCountEdit: TStdEdit;
    edScannerPriceEdit: TStdEdit;
    edPrinterCountEdit: TStdEdit;
    edPrinterPriceEdit: TStdEdit;
    edTVCCountEdit: TStdEdit;
    edTVCPriceEdit: TStdEdit;
    edLANCCountEdit: TStdEdit;
    edLANCPriceEdit: TStdEdit;
    edModemCountEdit: TStdEdit;
    edModemPriceEdit: TStdEdit;
    edWebCamCountEdit: TStdEdit;
    edWebCamPriceEdit: TStdEdit;
    edHSetCountEdit: TStdEdit;
    edHSetPriceEdit: TStdEdit;
    edSPCountEdit: TStdEdit;
    lbledSelMicroPhoneEdit: TAddLabeledEdit;
    btnSelMicroPhoneEdit: TAddBitBtn;
    edMcNameEdit: TStdEdit;
    edMcMarkEdit: TStdEdit;
    edMcModelEdit: TStdEdit;
    edMcCountEdit: TStdEdit;
    edMcPriceEdit: TStdEdit;
    edUPSPriceEdit: TStdEdit;
    edUPSCountEdit: TStdEdit;
    edUPSModelEdit: TStdEdit;
    edUPSMarkEdit: TStdEdit;
    edUPSNameEdit: TStdEdit;
    btnSelUPSEdit: TAddBitBtn;
    lbledSelUPSEdit: TAddLabeledEdit;
    lbledSelSwitchEdit: TAddLabeledEdit;
    btnSelSwitchEdit: TAddBitBtn;
    edSwNameEdit: TStdEdit;
    edSwMarkEdit: TStdEdit;
    edSwModelEdit: TStdEdit;
    edSwCountEdit: TStdEdit;
    edSwPriceEdit: TStdEdit;
    edFDDPriceEdit: TStdEdit;
    edFDDCountEdit: TStdEdit;
    edFDDModelEdit: TStdEdit;
    edFDDMarkEdit: TStdEdit;
    edFDDNameEdit: TStdEdit;
    btnSelFloppyEdit: TAddBitBtn;
    lbledSelFloppyEdit: TAddLabeledEdit;
    lbledSelZipDriveEdit: TAddLabeledEdit;
    btnSelZipDriveEdit: TAddBitBtn;
    edZDriveNameEdit: TStdEdit;
    edZDriveMarkEdit: TStdEdit;
    edZDriveModelEdit: TStdEdit;
    edZDriveCountEdit: TStdEdit;
    edZDrivePriceEdit: TStdEdit;
    edExtraPriceEdit: TStdEdit;
    edExtraCountEdit: TStdEdit;
    edExtraModelEdit: TStdEdit;
    edExtraMarkEdit: TStdEdit;
    edExtraNameEdit: TStdEdit;
    btnSelExtraEdit: TAddBitBtn;
    lbledSelExtraEdit: TAddLabeledEdit;
    btnCalcEdit: TAddBitBtn;
    lbledTotalCalcEdit: TAddLabeledEdit;
    AddBevel28: TAddBevel;
    AddBevel29: TAddBevel;
    btnselHeadSetEdit: TAddBitBtn;
    redGPCommentsEdit: TWin32RichEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure lbledCustomerKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledCustomerChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelCpuKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbPardakhtKindChange(Sender: TObject);
    procedure lbledSelCpuChange(Sender: TObject);
    procedure btnSelCpuClick(Sender: TObject);
    procedure lbledSelRamChange(Sender: TObject);
    procedure lbledSelRamKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelHardKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelMbKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelMonitorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelCaseKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelCdRomKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelCdWriterKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelDvdRomKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelDvdWriterKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelSpeakerKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelKeyBoardKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelMouseKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelSoundKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelVGAKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelScannerKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelPrinterKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelTvCardKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelLanCardKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelModemKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelWebCamKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelHeadSetKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelMicroPhoneKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelUPSKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelSwitchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelFloppyKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelZipDriveKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelExtraKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelHardChange(Sender: TObject);
    procedure lbledSelMbChange(Sender: TObject);
    procedure lbledSelMonitorChange(Sender: TObject);
    procedure lbledSelCaseChange(Sender: TObject);
    procedure lbledSelCdRomChange(Sender: TObject);
    procedure lbledSelCdWriterChange(Sender: TObject);
    procedure lbledSelDvdRomChange(Sender: TObject);
    procedure lbledSelDvdWriterChange(Sender: TObject);
    procedure lbledSelSpeakerChange(Sender: TObject);
    procedure lbledSelKeyBoardChange(Sender: TObject);
    procedure lbledSelMouseChange(Sender: TObject);
    procedure lbledSelSoundChange(Sender: TObject);
    procedure lbledSelVGAChange(Sender: TObject);
    procedure lbledSelScannerChange(Sender: TObject);
    procedure lbledSelPrinterChange(Sender: TObject);
    procedure lbledSelTvCardChange(Sender: TObject);
    procedure lbledSelLanCardChange(Sender: TObject);
    procedure lbledSelModemChange(Sender: TObject);
    procedure lbledSelWebCamChange(Sender: TObject);
    procedure lbledSelHeadSetChange(Sender: TObject);
    procedure lbledSelMicroPhoneChange(Sender: TObject);
    procedure lbledSelUPSChange(Sender: TObject);
    procedure lbledSelSwitchChange(Sender: TObject);
    procedure lbledSelFloppyChange(Sender: TObject);
    procedure lbledSelZipDriveChange(Sender: TObject);
    procedure lbledSelExtraChange(Sender: TObject);
    procedure btnSelRamClick(Sender: TObject);
    procedure btnSelHardClick(Sender: TObject);
    procedure btnSelMBClick(Sender: TObject);
    procedure btnSelMonitorClick(Sender: TObject);
    procedure btnSelCaseClick(Sender: TObject);
    procedure btnSelCdRomClick(Sender: TObject);
    procedure btnSelCdWriterClick(Sender: TObject);
    procedure btnSelDvdRomClick(Sender: TObject);
    procedure btnSelDvdWriterClick(Sender: TObject);
    procedure btnSelSpeakerClick(Sender: TObject);
    procedure btnSelKeyBoardClick(Sender: TObject);
    procedure btnSelMouseClick(Sender: TObject);
    procedure btnSelSoundClick(Sender: TObject);
    procedure btnSelVGAClick(Sender: TObject);
    procedure btnSelScannerClick(Sender: TObject);
    procedure btnSelPrinterClick(Sender: TObject);
    procedure btnSelTvCardClick(Sender: TObject);
    procedure btnSellanCardClick(Sender: TObject);
    procedure btnSelModemClick(Sender: TObject);
    procedure btnSelWebCamClick(Sender: TObject);
    procedure btnSelHeadSetClick(Sender: TObject);
    procedure btnSelMicroPhoneClick(Sender: TObject);
    procedure btnSelUPSClick(Sender: TObject);
    procedure btnSelSwitchClick(Sender: TObject);
    procedure btnSelFloppyClick(Sender: TObject);
    procedure btnSelZipDriveClick(Sender: TObject);
    procedure btnSelExtraClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure btnSelSellerClick(Sender: TObject);
    procedure lbledCountKeyPress(Sender: TObject; var Key: Char);
    procedure lbledCustomerEditChange(Sender: TObject);
    procedure lbledCustomerEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelOrderKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AddBitBtn55Click(Sender: TObject);
    procedure AddBitBtn14Click(Sender: TObject);
    procedure cmbpardakhtKindEditChange(Sender: TObject);
    procedure lbledSelOrderChange(Sender: TObject);
    procedure lbledSelCpuEditChange(Sender: TObject);
    procedure lbledSelCpuEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelCpuEditClick(Sender: TObject);
    procedure lbledSelRamEditChange(Sender: TObject);
    procedure btnSelRamEditClick(Sender: TObject);
    procedure lbledSelRamEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelHardEditChange(Sender: TObject);
    procedure btnSelHardEditClick(Sender: TObject);
    procedure lbledSelHardEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelMbEditChange(Sender: TObject);
    procedure lbledSelMbEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelMBEditClick(Sender: TObject);
    procedure lbledSelMonitorEditChange(Sender: TObject);
    procedure lbledSelMonitorEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelMonitorEditClick(Sender: TObject);
    procedure lbledSelCaseEditChange(Sender: TObject);
    procedure lbledSelCaseEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelCaseEditClick(Sender: TObject);
    procedure lbledSelCdRomEditChange(Sender: TObject);
    procedure btnSelCdRomEditClick(Sender: TObject);
    procedure lbledSelCdRomEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelCdWriterEditChange(Sender: TObject);
    procedure lbledSelCdWriterEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelCdWriterEditClick(Sender: TObject);
    procedure lbledSelDvdRomEditChange(Sender: TObject);
    procedure lbledSelDvdRomEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelDvdRomEditClick(Sender: TObject);
    procedure lbledSelDvdWriterEditChange(Sender: TObject);
    procedure lbledSelDvdWriterEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelDvdWriterEditClick(Sender: TObject);
    procedure lbledSelSpeakerEditChange(Sender: TObject);
    procedure lbledSelSpeakerEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelSpeakerEditClick(Sender: TObject);
    procedure lbledSelKeyBoardEditChange(Sender: TObject);
    procedure lbledSelKeyBoardEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelKeyBoardEditClick(Sender: TObject);
    procedure lbledSelMouseEditChange(Sender: TObject);
    procedure lbledSelMouseEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelMouseEditClick(Sender: TObject);
    procedure lbledSelSoundEditChange(Sender: TObject);
    procedure lbledSelSoundEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelSoundEditClick(Sender: TObject);
    procedure lbledSelVGAEditChange(Sender: TObject);
    procedure lbledSelVGAEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelVGAEditClick(Sender: TObject);
    procedure lbledSelScannerEditChange(Sender: TObject);
    procedure lbledSelScannerEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelScannerEditClick(Sender: TObject);
    procedure lbledSelPrinterEditChange(Sender: TObject);
    procedure btnSelPrinterEditClick(Sender: TObject);
    procedure lbledSelTvCardEditChange(Sender: TObject);
    procedure lbledSelTvCardEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelTvCardEditClick(Sender: TObject);
    procedure lbledSelLanCardEditChange(Sender: TObject);
    procedure lbledSelLanCardEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSellanCardEditClick(Sender: TObject);
    procedure lbledSelModemEditChange(Sender: TObject);
    procedure lbledSelModemEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelModemEditClick(Sender: TObject);
    procedure lbledSelWebCamEditChange(Sender: TObject);
    procedure lbledSelWebCamEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelWebCamEditClick(Sender: TObject);
    procedure lbledSelHeadSetEditChange(Sender: TObject);
    procedure lbledSelHeadSetEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnselHeadSetEditClick(Sender: TObject);
    procedure lbledSelMicroPhoneEditChange(Sender: TObject);
    procedure lbledSelMicroPhoneEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelMicroPhoneEditClick(Sender: TObject);
    procedure lbledSelUPSEditChange(Sender: TObject);
    procedure lbledSelUPSEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelUPSEditClick(Sender: TObject);
    procedure lbledSelSwitchEditChange(Sender: TObject);
    procedure lbledSelSwitchEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelSwitchEditClick(Sender: TObject);
    procedure lbledSelFloppyEditChange(Sender: TObject);
    procedure lbledSelFloppyEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelFloppyEditClick(Sender: TObject);
    procedure lbledSelZipDriveEditChange(Sender: TObject);
    procedure lbledSelZipDriveEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelZipDriveEditClick(Sender: TObject);
    procedure lbledSelExtraEditChange(Sender: TObject);
    procedure lbledSelExtraEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelExtraEditClick(Sender: TObject);
    procedure btnSaveEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnCalcEditClick(Sender: TObject);
    procedure btnCalc1Click(Sender: TObject);
    procedure NlbledTakhfifEditExit(Sender: TObject);
    procedure AlbledTakhfifEditExit(Sender: TObject);
    procedure ClbledTakhfifEditExit(Sender: TObject);
    procedure NlbledTakhfifExit(Sender: TObject);
    procedure AlbledTakhfifExit(Sender: TObject);
    procedure ClbledTakhfifExit(Sender: TObject);
    procedure BtnSaveNewClick(Sender: TObject);
    procedure tbsEditEnter(Sender: TObject);
    procedure btnDefSellerClick(Sender: TObject);
    procedure AddBitBtn28Click(Sender: TObject);
  private
         procedure LoadDevice(ForInsert:Boolean;DeviceCode:Integer;DeviceNo:Integer);
         Procedure SelectedFieldExe(ForInsert:Boolean;DeviceNo:Integer);
         Procedure ClearAllTextBox;
         Procedure clearAllDate;         
         Procedure LoadDate(OrderCode:Integer);
         Function CheckData(ForInsert:Boolean):Boolean ;
         Function Calc(ForInsert:Boolean):String;
         Function CalcMande(ForInsert:Boolean):String;

  public
    { Public declarations }
  end;

var
  fmSellSystem: TfmSellSystem;

implementation

uses DMMain, Math, DB, ADODB, Contnrs, BuySystem, DefCustomer;

{$R *.dfm}

procedure TfmSellSystem.FormShow(Sender: TObject);
begin
     scrbMain.VertScrollBar.Position := 0;
     shpBanner.Pen.Color             := clHighlight;
     //Active tables
     with fmDMmain do
     begin
          tblPerson.Filtered := False;
          tblPerson.Filter := ' xIsSeller = False ';
          tblPerson.Filtered :=True;
          tblPerson.Open;
          tblOrder.Filtered := False;
          tblOrder.Filter   := 'xBuyOrderFactorNo = Null and xIsSystemOrder = True';
          tblOrder.Filtered := True;
          tblOrder.Open;
          tblGp.Open;
          tblSystemInfo.Open;
          tblNaghd.Open;
          tblAghsat.Open;
          tblChecks.Open;
          tblstoreInfo.Open;
     end;
     pgcPay.ActivePage    := tbsnaghd;
     tbsAghsat.TabVisible := False;
     tbsCheck.TabVisible  := False;
     tbsnaghd.TabVisible  := True;

     pgcOrderSystem.ActivePage := tbsNew;
     cmbPardakhtKind.ItemIndex := 0;

     pgcPayEdit.ActivePage     := tbsNaghdEdit;
     tbsAghsatEdit.TabVisible  := False;
     tbsCheckEdit.TabVisible   := False;
     tbsNaghdEdit.TabVisible   := True;
     
     cmbpardakhtKindEdit.ItemIndex := 0;
     lbledFactorNo.SetFocus;

     clearAllDate;
end;

procedure TfmSellSystem.BtnCloseClick(Sender: TObject);
begin
     close;
end;

procedure TfmSellSystem.FormCreate(Sender: TObject);
begin
     scrbMain.VertScrollBar.Position := 0;
end;

procedure TfmSellSystem.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin

     if not (ActiveControl.Parent is THbtDatePicker)Then
     begin
         if WheelDelta <0 Then
            scrbMain.VertScrollBar.Position := scrbMain.VertScrollBar.Position + 7;
         if WheelDelta >0 Then
            scrbMain.VertScrollBar.Position := scrbMain.VertScrollBar.Position - 7;
     end;

end;

procedure TfmSellSystem.lbledCustomerKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key=VK_DOWN Then
     begin
          SelectedField.FormCaption :='«‰ Œ«» Œ—Ìœ«—';
          SelectedField.Query :='Select xPersonCode_Pk_AN,xIsSeller,(xName+'+QuotedStr(' ')+'+xFamily) As NameFamily From tblPerson Where xIsSeller=False Order By (xName+'+QuotedStr(' ')+'+xFamily)';
          SelectedField.DisplayFieldName := 'NameFamily';
          SelectedField.ReturnFieldName  := 'xPersonCode_Pk_AN';
          lbledCustomer.Text := SelectedField.Execute;
     end;
     fmBuySystem.OnKeyUp(Sender,Key,Shift);
end;

procedure TfmSellSystem.lbledCustomerChange(Sender: TObject);
begin
     if Trim(lbledCustomer.Text) <> '' Then
        fmDMmain.tblPerson.Locate('xPersonCode_Pk_AN',StrToInt(lbledCustomer.Text),[]);
end;

procedure TfmSellSystem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     with fmDMmain do
     begin
          tblPerson.Filtered := False;
          tblPerson.Filter := '';
          tblPerson.Close;
          tblstoreInfo.Close;
          tblOrder.Filtered := False;
          tblOrder.Filter   := '';
          tblOrder.Close;
          tblGp.Close;
          tblSystemInfo.Close;
          tblNaghd.Close;
          tblAghsat.Close;
          tblChecks.Close;
     end;
     pgcPay.ActivePage    := tbsnaghd;
     tbsAghsat.TabVisible := False;
     tbsCheck.TabVisible  := False;
     tbsnaghd.TabVisible  := True;

     pgcOrderSystem.ActivePage := tbsNew;
     cmbPardakhtKind.ItemIndex := 0;

     pgcPayEdit.ActivePage     := tbsNaghdEdit;
     tbsAghsatEdit.TabVisible  := False;
     tbsCheckEdit.TabVisible   := False;
     tbsNaghdEdit.TabVisible   := True;
     
     cmbpardakhtKindEdit.ItemIndex := 0;

     ClearAllTextBox;
     clearAllDate;

end;

procedure TfmSellSystem.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key =VK_ESCAPE Then
     begin
        BtnClose.Click;
        Exit;
     end;
     if (ssAlt In Shift) then
         case Key of
              VK_DELETE :
                        begin
                             pgcOrderSystem.ActivePage := tbsNew;
                             btnDel.Click;
                        end;
              ord('S')  :
                        begin
                             pgcOrderSystem.ActivePage := tbsNew;
                             BtnSave.Click;
                        end;
              ord('N')  :
                        begin
                             pgcOrderSystem.ActivePage := tbsNew;
                        end;
              ord('E')  :
                        begin
                             pgcOrderSystem.ActivePage := tbsEdit;
                        end;
              ord('R')  :
                        begin
                             pgcOrderSystem.ActivePage := tbsNew;
                             BtnSaveNew.Click;
                        end;
              ord('P')  :
                        begin
                             pgcOrderSystem.ActivePage := tbsEdit;
                             btnSaveEdit.Click;
                        end;
         end;
end;

procedure TfmSellSystem.lbledSelCpuKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key=VK_DOWN Then
     begin
          SelectedFieldExe(True,1);
     end;
     fmBuySystem.OnKeyUp(Sender,Key,Shift);
end;

procedure TfmSellSystem.cmbPardakhtKindChange(Sender: TObject);
var
   totalPrice:String;
begin
     totalPrice := Calc(True);
     case cmbPardakhtKind.ItemIndex of
       0:
         begin
              nLbledTotalGP.Text   := totalPrice;
              tbsAghsat.TabVisible := False;
              tbsCheck.TabVisible  := False;
              pgcPay.ActivePage    := tbsnaghd;
              tbsnaghd.TabVisible  := True;
         end;
       1:
         begin
              AlbledTotalGp.Text   := totalPrice;
              tbsAghsat.TabVisible := True;
              tbsCheck.TabVisible  := False;
              pgcPay.ActivePage    := tbsAghsat;
              tbsnaghd.TabVisible  := False;
         end;
       2:
         begin
              clbledTotalGp.Text   := totalPrice;
              tbsAghsat.TabVisible := False;
              tbsCheck.TabVisible  := True;
              pgcPay.ActivePage    := tbsCheck;
              tbsnaghd.TabVisible  := False;
         end;
     end;//end of case
end;

procedure TfmSellSystem.LoadDevice(ForInsert:Boolean;DeviceCode, DeviceNo: Integer);
begin

     if IntTostr(deviceCode)='' then Exit;
     if ForInsert Then
     begin
             with fmDMmain.tblstoreInfo do
             begin
                  Locate('xCode_Pk_AN',DeviceCode,[]);
                  case DeviceNo of
                    1://Cpu Info
                      begin
                          edCpuName.Text      := FieldByname('xGoodsName').AsString;
                          edCpuMark.Text      := FieldByname('xGoodsMark').AsString;
                          edCpuModel.Text     := FieldByName('xGoodsModel').AsString;
                          edCpuPrice.Text     := FieldByName('xBasePrice').AsString;
                      end;
                    2://Ram Info
                      begin
                          edRamName.Text      := FieldByname('xGoodsName').AsString;
                          edRamMark.Text      := FieldByname('xGoodsMark').AsString;
                          edRamModel.Text     := FieldByName('xGoodsModel').AsString;
                          edRamPrice.Text     := FieldByName('xBasePrice').AsString;
                      end;
                    3://Hard Info
                      begin
                          edHardName.Text      := FieldByname('xGoodsName').AsString;
                          edHardMark.Text      := FieldByname('xGoodsMark').AsString;
                          edHardModel.Text     := FieldByName('xGoodsModel').AsString;
                          edHardPrice.Text     := FieldByName('xBasePrice').AsString;
                      end;
                    4:// MainBoard Info
                      begin
                          edMBName.Text      := FieldByname('xGoodsName').AsString;
                          edMBMark.Text      := FieldByname('xGoodsMark').AsString;
                          edMbModel.Text     := FieldByName('xGoodsModel').AsString;
                          edMBPrice.Text     := FieldByName('xBasePrice').AsString;
                      end;
                    5://Monitor Info
                      begin
                          edMonitorName.Text      := FieldByname('xGoodsName').AsString;
                          edMonitorMark.Text      := FieldByname('xGoodsMark').AsString;
                          edMonitorModel.Text     := FieldByName('xGoodsModel').AsString;
                          edMonitorPrice.Text     := FieldByName('xBasePrice').AsString;
                      end;
                    6://Case Info
                      begin
                          edCaseName.Text      := FieldByname('xGoodsName').AsString;
                          edCaseMark.Text      := FieldByname('xGoodsMark').AsString;
                          edCaseModel.Text     := FieldByName('xGoodsModel').AsString;
                          edCasePrice.Text     := FieldByName('xBasePrice').AsString;
                      end;
                    7://Cd Rom Info
                      begin
                          edCDRName.Text      := FieldByname('xGoodsName').AsString;
                          edCDRMark.Text      := FieldByname('xGoodsMark').AsString;
                          edCDRModel.Text     := FieldByName('xGoodsModel').AsString;
                          edCDRPrice.Text     := FieldByName('xBasePrice').AsString;
                      end;
                    8://Cd Writer Info
                      begin
                          edCDWName.Text      := FieldByname('xGoodsName').AsString;
                          edCDWMark.Text      := FieldByname('xGoodsMark').AsString;
                          edCDWModel.Text     := FieldByName('xGoodsModel').AsString;
                          edCDWPrice.Text     := FieldByName('xBasePrice').AsString;
                      end;
                    9:// Dvd Rom Info
                      begin
                          edDVDRName.Text      := FieldByname('xGoodsName').AsString;
                          edDVDRMark.Text      := FieldByname('xGoodsMark').AsString;
                          edDVDRModel.Text     := FieldByName('xGoodsModel').AsString;
                          edDVDRPrice.Text     := FieldByName('xBasePrice').AsString;
                      end;
                    10://Dvd writer Info
                       begin
                          edDVDWName.Text      := FieldByname('xGoodsName').AsString;
                          edDVDWMark.Text      := FieldByname('xGoodsMark').AsString;
                          edDVDWModel.Text     := FieldByName('xGoodsModel').AsString;
                          edDVDWPrice.Text     := FieldByName('xBasePrice').AsString;
                       end;
                    11://Speaker Info
                       begin
                          edSPName.Text      := FieldByname('xGoodsName').AsString;
                          edSPMark.Text      := FieldByname('xGoodsMark').AsString;
                          edSPModel.Text     := FieldByName('xGoodsModel').AsString;
                          edSPPrice.Text     := FieldByName('xBasePrice').AsString;
                       end;
                    12://KeyBoard Info
                       begin
                          edKeyBName.Text      := FieldByname('xGoodsName').AsString;
                          edKeyBMark.Text      := FieldByname('xGoodsMark').AsString;
                          edKeyBModel.Text     := FieldByName('xGoodsModel').AsString;
                          edKeyBPrice.Text     := FieldByName('xBasePrice').AsString;
                       end;
                    13://Mouse Info
                       begin
                          edMouseName.Text      := FieldByname('xGoodsName').AsString;
                          edMouseMark.Text      := FieldByname('xGoodsMark').AsString;
                          edMouseModel.Text     := FieldByName('xGoodsModel').AsString;
                          edMousePrice.Text     := FieldByName('xBasePrice').AsString;
                       end;
                    14://Sound Info
                       begin
                          edSoundName.Text      := FieldByname('xGoodsName').AsString;
                          edSoundMark.Text      := FieldByname('xGoodsMark').AsString;
                          edSoundModel.Text     := FieldByName('xGoodsModel').AsString;
                          edSoundPrice.Text     := FieldByName('xBasePrice').AsString;
                       end;
                    15://VGA Info
                       begin
                          edVGAName.Text      := FieldByname('xGoodsName').AsString;
                          edVGAMark.Text      := FieldByname('xGoodsMark').AsString;
                          edVGAModel.Text     := FieldByName('xGoodsModel').AsString;
                          edVGAPrice.Text     := FieldByName('xBasePrice').AsString;
                       end;
                    16://Scanner Info
                       begin
                          edScannerName.Text      := FieldByname('xGoodsName').AsString;
                          edScannerMark.Text      := FieldByname('xGoodsMark').AsString;
                          edScannerModel.Text     := FieldByName('xGoodsModel').AsString;
                          edScannerPrice.Text     := FieldByName('xBasePrice').AsString;
                       end;
                    17://Printer Info
                       begin
                          edPrinterName.Text      := FieldByname('xGoodsName').AsString;
                          edPrinterMark.Text      := FieldByname('xGoodsMark').AsString;
                          edPrinterModel.Text     := FieldByName('xGoodsModel').AsString;
                          edPrinterPrice.Text     := FieldByName('xBasePrice').AsString;
                       end;
                    18://Tv Card Info
                       begin
                          edTVCName.Text      := FieldByname('xGoodsName').AsString;
                          edTVCMark.Text      := FieldByname('xGoodsMark').AsString;
                          edTVCModel.Text     := FieldByName('xGoodsModel').AsString;
                          edTVCPrice.Text     := FieldByName('xBasePrice').AsString;
                       end;
                    19:// Lan Card Info
                       begin
                          edLANCName.Text      := FieldByname('xGoodsName').AsString;
                          edLANCMark.Text      := FieldByname('xGoodsMark').AsString;
                          edLANCModel.Text     := FieldByName('xGoodsModel').AsString;
                          edLANCPrice.Text     := FieldByName('xBasePrice').AsString;
                       end;
                    20://Modem Info
                       begin
                          edModemName.Text      := FieldByname('xGoodsName').AsString;
                          edModemMark.Text      := FieldByname('xGoodsMark').AsString;
                          edModemModel.Text     := FieldByName('xGoodsModel').AsString;
                          edModemPrice.Text     := FieldByName('xBasePrice').AsString;
                       end;
                    21://webCam Info
                       begin
                          edWebCamName.Text      := FieldByname('xGoodsName').AsString;
                          edWebCamMark.Text      := FieldByname('xGoodsMark').AsString;
                          edWebCamModel.Text     := FieldByName('xGoodsModel').AsString;
                          edWebCamPrice.Text     := FieldByName('xBasePrice').AsString;
                       end;
                    22://Head Set Info
                       begin
                          edHSetName.Text      := FieldByname('xGoodsName').AsString;
                          edHSetMark.Text      := FieldByname('xGoodsMark').AsString;
                          edHSetModel.Text     := FieldByName('xGoodsModel').AsString;
                          edHSetPrice.Text     := FieldByName('xBasePrice').AsString;
                       end;
                    23://Micro Phone Info
                       begin
                          edMcName.Text      := FieldByname('xGoodsName').AsString;
                          edMcMark.Text      := FieldByname('xGoodsMark').AsString;
                          edMcModel.Text     := FieldByName('xGoodsModel').AsString;
                          edMcPrice.Text     := FieldByName('xBasePrice').AsString;
                       end;
                    24://Ups Info
                       begin
                          edUPSName.Text      := FieldByname('xGoodsName').AsString;
                          edUPSMark.Text      := FieldByname('xGoodsMark').AsString;
                          edUPSModel.Text     := FieldByName('xGoodsModel').AsString;
                          edUPSPrice.Text     := FieldByName('xBasePrice').AsString;
                       end;
                    25://Swicth Info
                       begin
                          edSwName.Text      := FieldByname('xGoodsName').AsString;
                          edSwMark.Text      := FieldByname('xGoodsMark').AsString;
                          edSwModel.Text     := FieldByName('xGoodsModel').AsString;
                          edSwPrice.Text     := FieldByName('xBasePrice').AsString;
                       end;
                    26://Fdd Info
                       begin
                          edFDDName.Text      := FieldByname('xGoodsName').AsString;
                          edFDDMark.Text      := FieldByname('xGoodsMark').AsString;
                          edFDDModel.Text     := FieldByName('xGoodsModel').AsString;
                          edFDDPrice.Text     := FieldByName('xBasePrice').AsString;
                       end;
                    27:// Zip Drive Info
                       begin
                          edZDriveName.Text      := FieldByname('xGoodsName').AsString;
                          edZDriveMark.Text      := FieldByname('xGoodsMark').AsString;
                          edZDriveModel.Text     := FieldByName('xGoodsModel').AsString;
                          edZDrivePrice.Text     := FieldByName('xBasePrice').AsString;
                       end;
                    28://extra Device Info
                       begin
                          edExtraName.Text      := FieldByname('xGoodsName').AsString;
                          edExtraMark.Text      := FieldByname('xGoodsMark').AsString;
                          edExtraModel.Text     := FieldByName('xGoodsModel').AsString;
                          edExtraPrice.Text     := FieldByName('xBasePrice').AsString;
                       end;
                  end;//end of Case
             end;//end With
     end
     else
     begin
             with fmDMmain.tblstoreInfo do
             begin
                  Locate('xCode_Pk_AN',DeviceCode,[]);
                  case DeviceNo of
                    1://Cpu Info
                      begin
                          edCpuNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edCpuMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edCpuModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                      end;
                    2://Ram Info
                      begin
                          edRamNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edRamMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edRamModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                      end;
                    3://Hard Info
                      begin
                          edHardNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edHardMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edHardModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                      end;
                    4:// MainBoard Info
                      begin
                          edMBNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edMBMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edMbModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                      end;
                    5://Monitor Info
                      begin
                          edMonitorNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edMonitorMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edMonitorModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                      end;
                    6://Case Info
                      begin
                          edCaseNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edCaseMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edCaseModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                      end;
                    7://Cd Rom Info
                      begin
                          edCDRNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edCDRMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edCDRModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                      end;
                    8://Cd Writer Info
                      begin
                          edCDWNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edCDWMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edCDWModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                      end;
                    9:// Dvd Rom Info
                      begin
                          edDVDRNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edDVDRMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edDVDRModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                      end;
                    10://Dvd writer Info
                       begin
                          edDVDWNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edDVDWMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edDVDWModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                       end;
                    11://Speaker Info
                       begin
                          edSPNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edSPMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edSPModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                       end;
                    12://KeyBoard Info
                       begin
                          edKeyBNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edKeyBMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edKeyBModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                       end;
                    13://Mouse Info
                       begin
                          edMouseNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edMouseMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edMouseModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                       end;
                    14://Sound Info
                       begin
                          edSoundNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edSoundMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edSoundModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                       end;
                    15://VGA Info
                       begin
                          edVGANameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edVGAMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edVGAModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                       end;
                    16://Scanner Info
                       begin
                          edScannerNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edScannerMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edScannerModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                       end;
                    17://Printer Info
                       begin
                          edPrinterNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edPrinterMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edPrinterModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                       end;
                    18://Tv Card Info
                       begin
                          edTVCNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edTVCMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edTVCModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                       end;
                    19:// Lan Card Info
                       begin
                          edLANCNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edLANCMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edLANCModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                       end;
                    20://Modem Info
                       begin
                          edModemNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edModemMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edModemModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                       end;
                    21://webCam Info
                       begin
                          edWebCamNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edWebCamMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edWebCamModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                       end;
                    22://Head Set Info
                       begin
                          edHSetNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edHSetMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edHSetModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                       end;
                    23://Micro Phone Info
                       begin
                          edMcNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edMcMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edMcModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                       end;
                    24://Ups Info
                       begin
                          edUPSNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edUPSMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edUPSModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                       end;
                    25://Swicth Info
                       begin
                          edSwNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edSwMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edSwModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                       end;
                    26://Fdd Info
                       begin
                          edFDDNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edFDDMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edFDDModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                       end;
                    27:// Zip Drive Info
                       begin
                          edZDriveNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edZDriveMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edZDriveModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                       end;
                    28://extra Device Info
                       begin
                          edExtraNameEdit.Text      := FieldByname('xGoodsName').AsString;
                          edExtraMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
                          edExtraModelEdit.Text     := FieldByName('xGoodsModel').AsString;
                       end;
                  end;//end of Case
             end;
     end;
end;

procedure TfmSellSystem.SelectedFieldExe(ForInsert:Boolean;DeviceNo:Integer);
begin
          SelectedField.FormCaption :='«‰ Œ«» ﬁÿ⁄Â';
          SelectedField.Query :=' Select xCode_Pk_An,xGoodsName From tblStoreInfo order By xGoodsName';
          SelectedField.DisplayFieldName := 'xGoodsName';
          SelectedField.ReturnFieldName  := 'xCode_Pk_An';
     if ForInsert Then
     begin
          case DeviceNo of
            1://Cpu
              begin
                   lbledSelCpu.Text := SelectedField.Execute;
              end;
            2://Ram Info
              begin
                   lbledSelRam.Text := SelectedField.Execute;
              end;
            3://Hard Info
              begin
                   lbledSelHard.Text := SelectedField.Execute;
              end;
            4:// MainBoard Info
              begin
                   lbledSelMb.Text := SelectedField.Execute;
              end;
            5://Monitor Info
              begin
                   lbledSelMonitor.Text := SelectedField.Execute;;
              end;
            6://Case Info
              begin
                   lbledSelCase.Text := SelectedField.Execute;
              end;
            7://Cd Rom Info
              begin
                   lbledSelCdRom.Text := SelectedField.Execute;
              end;
            8://Cd Writer Info
              begin
                   lbledSelCdWriter.Text := SelectedField.Execute;
              end;
            9:// Dvd Rom Info
              begin
                   lbledSelDvdRom.Text := SelectedField.Execute;
              end;
            10://Dvd writer Info
               begin
                    lbledSelDvdWriter.Text := SelectedField.Execute;
               end;
            11://Speaker Info
               begin
                    lbledSelSpeaker.Text := SelectedField.Execute;
               end;
            12://KeyBoard Info
               begin
                    lbledSelKeyBoard.Text := SelectedField.Execute;
               end;
            13://Mouse Info
               begin
                    lbledSelMouse.Text := SelectedField.Execute;
               end;
            14://Sound Info
               begin
                    lbledSelSound.Text := SelectedField.Execute;
               end;
            15://VGA Info
               begin
                    lbledSelVGA.Text := SelectedField.Execute;
               end;
            16://Scanner Info
               begin
                   lbledSelScanner.Text := SelectedField.Execute;
               end;
            17://Printer Info
               begin
                    lbledSelPrinter.Text := SelectedField.Execute;
               end;
            18://Tv Card Info
               begin
                    lbledSelTvCard.Text := SelectedField.Execute;
               end;
            19:// Lan Card Info
               begin
                    lbledSelLanCard.Text := SelectedField.Execute;
               end;
            20://Modem Info
               begin
                    lbledSelModem.Text := SelectedField.Execute;
               end;
            21://webCam Info
               begin
                    lbledSelWebCam.Text := SelectedField.Execute;
               end;
            22://Head Set Info
               begin
                    lbledSelHeadSet.Text := SelectedField.Execute;
               end;
            23://Micro Phone Info
               begin
                    lbledSelMicroPhone.Text := SelectedField.Execute;
               end;
            24://Ups Info
               begin
                    lbledSelUPS.Text := SelectedField.Execute;
               end;
            25://Swicth Info
               begin
                    lbledSelSwitch.Text := SelectedField.Execute;
               end;
            26://Floppy
               begin
                    lbledSelFloppy.Text := SelectedField.Execute;
               end;
            27://Zip Drive
               begin
                    lbledSelZipDrive.Text := SelectedField.Execute;
               end;
            28://extra Device Info
               begin
                    lbledSelExtra.Text := SelectedField.Execute;
               end;
          end;//end of Case
     end
     else
     begin
          case DeviceNo of
            1://Cpu
              begin
                   lbledSelCpuEdit.Text := SelectedField.Execute;
              end;
            2://Ram Info
              begin
                   lbledSelRamEdit.Text := SelectedField.Execute;
              end;
            3://Hard Info
              begin
                   lbledSelHardEdit.Text := SelectedField.Execute;
              end;
            4:// MainBoard Info
              begin
                   lbledSelMbEdit.Text := SelectedField.Execute;
              end;
            5://Monitor Info
              begin
                   lbledSelMonitorEdit.Text := SelectedField.Execute;;
              end;
            6://Case Info
              begin
                   lbledSelCaseEdit.Text := SelectedField.Execute;
              end;
            7://Cd Rom Info
              begin
                   lbledSelCdRomEdit.Text := SelectedField.Execute;
              end;
            8://Cd Writer Info
              begin
                   lbledSelCdWriterEdit.Text := SelectedField.Execute;
              end;
            9:// Dvd Rom Info
              begin
                   lbledSelDvdRomEdit.Text := SelectedField.Execute;
              end;
            10://Dvd writer Info
               begin
                    lbledSelDvdWriterEdit.Text := SelectedField.Execute;
               end;
            11://Speaker Info
               begin
                    lbledSelSpeakerEdit.Text := SelectedField.Execute;
               end;
            12://KeyBoard Info
               begin
                    lbledSelKeyBoardEdit.Text := SelectedField.Execute;
               end;
            13://Mouse Info
               begin
                    lbledSelMouseEdit.Text := SelectedField.Execute;
               end;
            14://Sound Info
               begin
                    lbledSelSoundEdit.Text := SelectedField.Execute;
               end;
            15://VGA Info
               begin
                    lbledSelVGAEdit.Text := SelectedField.Execute;
               end;
            16://Scanner Info
               begin
                   lbledSelScannerEdit.Text := SelectedField.Execute;
               end;
            17://Printer Info
               begin
                    lbledSelPrinterEdit.Text := SelectedField.Execute;
               end;
            18://Tv Card Info
               begin
                    lbledSelTvCardEdit.Text := SelectedField.Execute;
               end;
            19:// Lan Card Info
               begin
                    lbledSelLanCardEdit.Text := SelectedField.Execute;
               end;
            20://Modem Info
               begin
                    lbledSelModemEdit.Text := SelectedField.Execute;
               end;
            21://webCam Info
               begin
                    lbledSelWebCamEdit.Text := SelectedField.Execute;
               end;
            22://Head Set Info
               begin
                    lbledSelHeadSetEdit.Text := SelectedField.Execute;
               end;
            23://Micro Phone Info
               begin
                    lbledSelMicroPhoneEdit.Text := SelectedField.Execute;
               end;
            24://Ups Info
               begin
                    lbledSelUPSEdit.Text := SelectedField.Execute;
               end;
            25://Swicth Info
               begin
                    lbledSelSwitchEdit.Text := SelectedField.Execute;
               end;
            26://Floppy
               begin
                    lbledSelFloppyEdit.Text := SelectedField.Execute;
               end;
            27://Zip Drive
               begin
                    lbledSelZipDriveEdit.Text := SelectedField.Execute;
               end;
            28://extra Device Info
               begin
                    lbledSelExtraEdit.Text := SelectedField.Execute;
               end;
          end;//end of Case
     end;
end;

procedure TfmSellSystem.lbledSelCpuChange(Sender: TObject);
begin
     if Trim(lbledSelCpu.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelCpu.Text),1);
end;

procedure TfmSellSystem.btnSelCpuClick(Sender: TObject);
begin
     SelectedFieldExe(True,1);
end;

procedure TfmSellSystem.lbledSelRamChange(Sender: TObject);
begin
     if Trim(lbledSelRam.Text)= '' then Exit;
     LoadDevice(True,StrToint(lbledSelRam.Text),2);
end;

procedure TfmSellSystem.lbledSelRamKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,2);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelHardKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,3);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelMbKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,4);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelMonitorKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,5);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelCaseKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,6);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelCdRomKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,7);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelCdWriterKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,8);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelDvdRomKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,9);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelDvdWriterKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,10);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelSpeakerKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,11);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelKeyBoardKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,12);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelMouseKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,13);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelSoundKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,14);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelVGAKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,15);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelScannerKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,16);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelPrinterKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,17);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelTvCardKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,18);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelLanCardKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,19);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelModemKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,20);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelWebCamKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,21);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelHeadSetKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,22);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelMicroPhoneKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,23);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelUPSKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,24);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelSwitchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,25);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelFloppyKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,26);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelZipDriveKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,27);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelExtraKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(True,28);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelHardChange(Sender: TObject);
begin
     if Trim(lbledSelHard.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelHard.Text),3);
end;

procedure TfmSellSystem.lbledSelMbChange(Sender: TObject);
begin
     if Trim(lbledSelMb.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelMb.Text),4);
end;

procedure TfmSellSystem.lbledSelMonitorChange(Sender: TObject);
begin
     if Trim(lbledSelMonitor.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelMonitor.Text),5);
end;

procedure TfmSellSystem.lbledSelCaseChange(Sender: TObject);
begin
     if Trim(lbledSelCase.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelCase.Text),6);
end;

procedure TfmSellSystem.lbledSelCdRomChange(Sender: TObject);
begin
     if Trim(lbledSelCdRom.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelCdRom.Text),7);
end;

procedure TfmSellSystem.lbledSelCdWriterChange(Sender: TObject);
begin
     if Trim(lbledSelCdWriter.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelCdWriter.Text),8);
end;

procedure TfmSellSystem.lbledSelDvdRomChange(Sender: TObject);
begin
     if Trim(lbledSelDvdRom.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelDvdRom.Text),9);
end;

procedure TfmSellSystem.lbledSelDvdWriterChange(Sender: TObject);
begin
     if Trim(lbledSelDvdWriter.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelDvdWriter.Text),10);
end;

procedure TfmSellSystem.lbledSelSpeakerChange(Sender: TObject);
begin
     if Trim(lbledSelSpeaker.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelSpeaker.Text),11);
end;

procedure TfmSellSystem.lbledSelKeyBoardChange(Sender: TObject);
begin
     if Trim(lbledSelKeyBoard.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelKeyBoard.Text),12);
end;

procedure TfmSellSystem.lbledSelMouseChange(Sender: TObject);
begin
     if Trim(lbledSelMouse.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelMouse.Text),13);
end;

procedure TfmSellSystem.lbledSelSoundChange(Sender: TObject);
begin
     if Trim(lbledSelSound.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelSound.Text),14);
end;

procedure TfmSellSystem.lbledSelVGAChange(Sender: TObject);
begin
     if Trim(lbledSelVGA.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelVGA.Text),15);
end;

procedure TfmSellSystem.lbledSelScannerChange(Sender: TObject);
begin
     if Trim(lbledSelScanner.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelScanner.Text),16);
end;

procedure TfmSellSystem.lbledSelPrinterChange(Sender: TObject);
begin
     if Trim(lbledSelPrinter.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelPrinter.Text),17);
end;

procedure TfmSellSystem.lbledSelTvCardChange(Sender: TObject);
begin
     if Trim(lbledSelTvCard.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelTvCard.Text),18);
end;

procedure TfmSellSystem.lbledSelLanCardChange(Sender: TObject);
begin
     if Trim(lbledSelLanCard.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelLanCard.Text),19);
end;

procedure TfmSellSystem.lbledSelModemChange(Sender: TObject);
begin
     if Trim(lbledSelModem.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelModem.Text),20);
end;

procedure TfmSellSystem.lbledSelWebCamChange(Sender: TObject);
begin
     if Trim(lbledSelWebCam.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelWebCam.Text),21);
end;

procedure TfmSellSystem.lbledSelHeadSetChange(Sender: TObject);
begin
     if Trim(lbledSelHeadSet.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelHeadSet.Text),22);
end;

procedure TfmSellSystem.lbledSelMicroPhoneChange(Sender: TObject);
begin
     if Trim(lbledSelMicroPhone.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelMicroPhone.Text),23);
end;

procedure TfmSellSystem.lbledSelUPSChange(Sender: TObject);
begin
     if Trim(lbledSelUPS.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelUPS.Text),24);
end;

procedure TfmSellSystem.lbledSelSwitchChange(Sender: TObject);
begin
     if Trim(lbledSelSwitch.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelSwitch.Text),25);
end;

procedure TfmSellSystem.lbledSelFloppyChange(Sender: TObject);
begin
     if Trim(lbledSelFloppy.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelFloppy.Text),26);
end;

procedure TfmSellSystem.lbledSelZipDriveChange(Sender: TObject);
begin
     if Trim(lbledSelZipDrive.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelZipDrive.Text),27);
end;

procedure TfmSellSystem.lbledSelExtraChange(Sender: TObject);
begin
     if Trim(lbledSelExtra.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelExtra.Text),28);
end;

procedure TfmSellSystem.btnSelRamClick(Sender: TObject);
begin
     SelectedFieldExe(True,2);
end;

procedure TfmSellSystem.btnSelHardClick(Sender: TObject);
begin
     SelectedFieldExe(True,3);
end;

procedure TfmSellSystem.btnSelMBClick(Sender: TObject);
begin
     SelectedFieldExe(True,4);
end;

procedure TfmSellSystem.btnSelMonitorClick(Sender: TObject);
begin
     SelectedFieldExe(True,5);
end;

procedure TfmSellSystem.btnSelCaseClick(Sender: TObject);
begin
     SelectedFieldExe(True,6);
end;

procedure TfmSellSystem.btnSelCdRomClick(Sender: TObject);
begin
     SelectedFieldExe(True,7);
end;

procedure TfmSellSystem.btnSelCdWriterClick(Sender: TObject);
begin
     SelectedFieldExe(True,8);
end;

procedure TfmSellSystem.btnSelDvdRomClick(Sender: TObject);
begin
     SelectedFieldExe(True,9);
end;

procedure TfmSellSystem.btnSelDvdWriterClick(Sender: TObject);
begin
     SelectedFieldExe(True,10);
end;

procedure TfmSellSystem.btnSelSpeakerClick(Sender: TObject);
begin
     SelectedFieldExe(True,11);
end;

procedure TfmSellSystem.btnSelKeyBoardClick(Sender: TObject);
begin
     SelectedFieldExe(True,12);
end;

procedure TfmSellSystem.btnSelMouseClick(Sender: TObject);
begin
     SelectedFieldExe(True,13);
end;

procedure TfmSellSystem.btnSelSoundClick(Sender: TObject);
begin
     SelectedFieldExe(True,14);
end;

procedure TfmSellSystem.btnSelVGAClick(Sender: TObject);
begin
     SelectedFieldExe(True,15);
end;

procedure TfmSellSystem.btnSelScannerClick(Sender: TObject);
begin
     SelectedFieldExe(True,16);
end;

procedure TfmSellSystem.btnSelPrinterClick(Sender: TObject);
begin
     SelectedFieldExe(True,17);
end;

procedure TfmSellSystem.btnSelTvCardClick(Sender: TObject);
begin
     SelectedFieldExe(True,18);
end;

procedure TfmSellSystem.btnSellanCardClick(Sender: TObject);
begin
     SelectedFieldExe(True,19);
end;

procedure TfmSellSystem.btnSelModemClick(Sender: TObject);
begin
     SelectedFieldExe(True,20);
end;

procedure TfmSellSystem.btnSelWebCamClick(Sender: TObject);
begin
     SelectedFieldExe(True,21);
end;

procedure TfmSellSystem.btnSelHeadSetClick(Sender: TObject);
begin
     SelectedFieldExe(True,22);
end;

procedure TfmSellSystem.btnSelMicroPhoneClick(Sender: TObject);
begin
     SelectedFieldExe(True,23);
end;

procedure TfmSellSystem.btnSelUPSClick(Sender: TObject);
begin
     SelectedFieldExe(True,24);
end;

procedure TfmSellSystem.btnSelSwitchClick(Sender: TObject);
begin
     SelectedFieldExe(True,25);
end;

procedure TfmSellSystem.btnSelFloppyClick(Sender: TObject);
begin
     SelectedFieldExe(True,26);
end;

procedure TfmSellSystem.btnSelZipDriveClick(Sender: TObject);
begin
     SelectedFieldExe(True,27);
end;

procedure TfmSellSystem.btnSelExtraClick(Sender: TObject);
begin
     SelectedFieldExe(True,28);
end;

procedure TfmSellSystem.BtnSaveClick(Sender: TObject);
begin
     with TDefSystemSellOrder Do
     begin
          //if CheckData(True) Then
          case cmbPardakhtKind.ItemIndex of
               0:
                 begin
                    if CheckData(True) Then
                    begin
                      InsertNValues(lbledFactorNo.Text,SellDate.Date,lbledCount.Text,lbledCustomer.Text,True,redComments.Text,
                                   {CpuInfo}                edCpuName.Text,edcpumark.Text,lbledSelCpu.Text,edCpuCount.Text,edCpuPrice.Text,
                                   {RamInfo}                edRamName.Text,edRamMark.Text,lbledSelRam.Text,edRamCount.Text,edRamPrice.Text,
                                   {Hardinfo}               edHardName.Text ,edHardMark.Text,lbledSelHard.Text,edHardCount.Text,edHardPrice.Text,
                                   {MainBoradInfo}          edMBName.Text,edMBMark.Text,lbledSelMb.Text,edMbCount.Text,edMBPrice.Text,
                                   {Monitor Info}           edMonitorName.Text,edMonitorMark.Text,lbledSelMonitor.Text,edMonitorCount.Text,edMonitorPrice.Text,
                                   {case Info}              edCaseName.Text,edCaseMark.Text,lbledSelCase.Text,edCaseCount.Text,edCasePrice.Text,
                                   {CDRom Info}             edCDRName.Text,edCDRMark.Text,lbledSelCdRom.Text,edCDRCount.Text,edCDRPrice.Text,
                                   {CDWriter Info}          edCDWName.Text,edCDWMark.Text,lbledSelCdWriter.Text,edCDWCount.Text,edCDWPrice.Text,
                                   {DVDRom Info}            edDVDRName.Text,edDVDRMark.Text,lbledSelDvdRom.Text,edDVDRCount.Text,edDVDRPrice.Text,
                                   {DVDWriter Info}         edDVDWName.Text,edDVDWMark.Text,lbledSelDvdWriter.Text,edDVDWCount.Text,edDVDWPrice.Text,
                                   {Speaker Info}           edSPName.Text,edSPMark.Text,lbledSelSpeaker.Text,edSPCount.Text,edSPPrice.Text,
                                   {KeyBoard Info}          edKeyBName.Text,edKeyBMark.Text,lbledSelKeyBoard.Text,edSPCount.Text,edSPPrice.Text,
                                   {Mouse info}             edMouseName.Text,edMouseMark.Text,lbledSelMouse.Text,edMouseCount.Text,edMousePrice.Text,
                                   {Sound info}             edSoundName.Text,edSoundMark.Text,lbledSelSound.Text,edSoundCount.Text,edSoundPrice.Text,
                                   {VGA info}               edVGAName.Text,edVGAMark.Text,lbledSelVGA.Text,edVGACount.Text,edVGAPrice.Text,
                                   {Scanner Info}           edScannerName.Text,edScannerMark.Text,lbledSelScanner.Text,edScannerCount.Text,edScannerPrice.Text,
                                   {Printer Info}           edPrinterName.Text,edPrinterMark.Text,lbledSelPrinter.Text,edPrinterCount.Text,edPrinterPrice.Text,
                                   {TvCard Info}            edTVCName.Text,edTVCMark.Text,lbledSelTvCard.Text,edTVCCount.Text,edTVCPrice.Text,
                                   {LanCard Info}           edLANCName.Text,edLANCMark.Text,lbledSelLanCard.Text,edLANCCount.Text,edLANCPrice.Text,
                                   {Modem Info}             edModemName.Text,edModemMark.Text,lbledSelModem.Text,edModemCount.Text,edModemPrice.Text,
                                   {Web cam Info}           edWebCamName.Text,edWebCamMark.Text,lbledSelWebCam.Text,edWebCamCount.Text,edWebCamPrice.Text,
                                   {HeadSet Info}           edHSetName.Text,edHSetMark.Text,lbledSelHeadSet.Text,edHSetCount.Text,edHSetPrice.Text,
                                   {MicroPhone Info}        edMcName.Text,edMcMark.Text,lbledSelMicroPhone.Text,edMcCount.Text,edMcPrice.Text,
                                   {Ups Info}               edUPSName.Text,edUPSMark.Text,lbledSelUPS.Text,edUPSCount.Text,edUPSPrice.Text,
                                   {Switch Info}            edSwName.Text,edSwMark.Text,lbledSelSwitch.Text,edSwCount.Text,edSwPrice.Text,
                                   {Floppy Info}            edFDDName.Text,edFDDMark.Text,lbledSelFloppy.Text,edFDDCount.Text,edFDDPrice.Text,
                                   {Zip Drive Info}         edZDriveName.Text,edZDriveMark.Text,lbledSelZipDrive.Text,edZDriveCount.Text,edZDrivePrice.Text,
                                   {Extra Info}             edExtraName.Text,edExtraMark.Text,lbledSelExtra.Text,edExtraCount.Text,edExtraPrice.Text,
                                   {GP Info}                cmbPardakhtKind.Text,redGPComments.Text,
                                   {Naghd Info}             nLbledTotalGP.Text,NlbledPishPardakht.Text,NlbledVarantyPrice.Text,NlbledAsembelPrice.Text,NlbledTakhfif.Text,NlbledMande.Text,NPayDate.Date,NredComments.Text);
                      fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ‘œ',HbtInformation);
                    end;
                 end;
                 1:
                   begin
                    if CheckData(True) Then
                    begin
                      InsertAValues(lbledFactorNo.Text,SellDate.Date,lbledCount.Text,lbledCustomer.Text,True,redComments.Text,
                                   {CpuInfo}                edCpuName.Text,edcpumark.Text,lbledSelCpu.Text,edCpuCount.Text,edCpuPrice.Text,
                                   {RamInfo}                edRamName.Text,edRamMark.Text,lbledSelRam.Text,edRamCount.Text,edRamPrice.Text,
                                   {Hardinfo}               edHardName.Text ,edHardMark.Text,lbledSelHard.Text,edHardCount.Text,edHardPrice.Text,
                                   {MainBoradInfo}          edMBName.Text,edMBMark.Text,lbledSelMb.Text,edMbCount.Text,edMBPrice.Text,
                                   {Monitor Info}           edMonitorName.Text,edMonitorMark.Text,lbledSelMonitor.Text,edMonitorCount.Text,edMonitorPrice.Text,
                                   {case Info}              edCaseName.Text,edCaseMark.Text,lbledSelCase.Text,edCaseCount.Text,edCasePrice.Text,
                                   {CDRom Info}             edCDRName.Text,edCDRMark.Text,lbledSelCdRom.Text,edCDRCount.Text,edCDRPrice.Text,
                                   {CDWriter Info}          edCDWName.Text,edCDWMark.Text,lbledSelCdWriter.Text,edCDWCount.Text,edCDWPrice.Text,
                                   {DVDRom Info}            edDVDRName.Text,edDVDRMark.Text,lbledSelDvdRom.Text,edDVDRCount.Text,edDVDRPrice.Text,
                                   {DVDWriter Info}         edDVDWName.Text,edDVDWMark.Text,lbledSelDvdWriter.Text,edDVDWCount.Text,edDVDWPrice.Text,
                                   {Speaker Info}           edSPName.Text,edSPMark.Text,lbledSelSpeaker.Text,edSPCount.Text,edSPPrice.Text,
                                   {KeyBoard Info}          edKeyBName.Text,edKeyBMark.Text,lbledSelKeyBoard.Text,edSPCount.Text,edSPPrice.Text,
                                   {Mouse info}             edMouseName.Text,edMouseMark.Text,lbledSelMouse.Text,edMouseCount.Text,edMousePrice.Text,
                                   {Sound info}             edSoundName.Text,edSoundMark.Text,lbledSelSound.Text,edSoundCount.Text,edSoundPrice.Text,
                                   {VGA info}               edVGAName.Text,edVGAMark.Text,lbledSelVGA.Text,edVGACount.Text,edVGAPrice.Text,
                                   {Scanner Info}           edScannerName.Text,edScannerMark.Text,lbledSelScanner.Text,edScannerCount.Text,edScannerPrice.Text,
                                   {Printer Info}           edPrinterName.Text,edPrinterMark.Text,lbledSelPrinter.Text,edPrinterCount.Text,edPrinterPrice.Text,
                                   {TvCard Info}            edTVCName.Text,edTVCMark.Text,lbledSelTvCard.Text,edTVCCount.Text,edTVCPrice.Text,
                                   {LanCard Info}           edLANCName.Text,edLANCMark.Text,lbledSelLanCard.Text,edLANCCount.Text,edLANCPrice.Text,
                                   {Modem Info}             edModemName.Text,edModemMark.Text,lbledSelModem.Text,edModemCount.Text,edModemPrice.Text,
                                   {Web cam Info}           edWebCamName.Text,edWebCamMark.Text,lbledSelWebCam.Text,edWebCamCount.Text,edWebCamPrice.Text,
                                   {HeadSet Info}           edHSetName.Text,edHSetMark.Text,lbledSelHeadSet.Text,edHSetCount.Text,edHSetPrice.Text,
                                   {MicroPhone Info}        edMcName.Text,edMcMark.Text,lbledSelMicroPhone.Text,edMcCount.Text,edMcPrice.Text,
                                   {Ups Info}               edUPSName.Text,edUPSMark.Text,lbledSelUPS.Text,edUPSCount.Text,edUPSPrice.Text,
                                   {Switch Info}            edSwName.Text,edSwMark.Text,lbledSelSwitch.Text,edSwCount.Text,edSwPrice.Text,
                                   {Floppy Info}            edFDDName.Text,edFDDMark.Text,lbledSelFloppy.Text,edFDDCount.Text,edFDDPrice.Text,
                                   {Zip Drive Info}         edZDriveName.Text,edZDriveMark.Text,lbledSelZipDrive.Text,edZDriveCount.Text,edZDrivePrice.Text,
                                   {Extra Info}             edExtraName.Text,edExtraMark.Text,lbledSelExtra.Text,edExtraCount.Text,edExtraPrice.Text,
                                   {GP Info}                cmbPardakhtKind.Text,redGPComments.Text,
                                   {Aghsat Info}            AlbledTotalGp.Text,AlbledPishPardakht.Text,AlbledVarantyPrice.Text,AlbledAsembelPrice.Text,AlbledTakhfif.Text,AlbledMande.Text,AlbledGhestDay.Text,AlbledGhestPrice.Text,APayDate.Date,AStartDate.Date,AEndDate.Date,AredComments.Text);
                      fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ‘œ',HbtInformation);
                    end;


                   end;
                 2:
                   begin
                    if CheckData(True) Then
                    begin
                      InsertCValues(lbledFactorNo.Text,SellDate.Date,lbledCount.Text,lbledCustomer.Text,True,redComments.Text,
                                   {CpuInfo}                edCpuName.Text,edcpumark.Text,lbledSelCpu.Text,edCpuCount.Text,edCpuPrice.Text,
                                   {RamInfo}                edRamName.Text,edRamMark.Text,lbledSelRam.Text,edRamCount.Text,edRamPrice.Text,
                                   {Hardinfo}               edHardName.Text ,edHardMark.Text,lbledSelHard.Text,edHardCount.Text,edHardPrice.Text,
                                   {MainBoradInfo}          edMBName.Text,edMBMark.Text,lbledSelMb.Text,edMbCount.Text,edMBPrice.Text,
                                   {Monitor Info}           edMonitorName.Text,edMonitorMark.Text,lbledSelMonitor.Text,edMonitorCount.Text,edMonitorPrice.Text,
                                   {case Info}              edCaseName.Text,edCaseMark.Text,lbledSelCase.Text,edCaseCount.Text,edCasePrice.Text,
                                   {CDRom Info}             edCDRName.Text,edCDRMark.Text,lbledSelCdRom.Text,edCDRCount.Text,edCDRPrice.Text,
                                   {CDWriter Info}          edCDWName.Text,edCDWMark.Text,lbledSelCdWriter.Text,edCDWCount.Text,edCDWPrice.Text,
                                   {DVDRom Info}            edDVDRName.Text,edDVDRMark.Text,lbledSelDvdRom.Text,edDVDRCount.Text,edDVDRPrice.Text,
                                   {DVDWriter Info}         edDVDWName.Text,edDVDWMark.Text,lbledSelDvdWriter.Text,edDVDWCount.Text,edDVDWPrice.Text,
                                   {Speaker Info}           edSPName.Text,edSPMark.Text,lbledSelSpeaker.Text,edSPCount.Text,edSPPrice.Text,
                                   {KeyBoard Info}          edKeyBName.Text,edKeyBMark.Text,lbledSelKeyBoard.Text,edSPCount.Text,edSPPrice.Text,
                                   {Mouse info}             edMouseName.Text,edMouseMark.Text,lbledSelMouse.Text,edMouseCount.Text,edMousePrice.Text,
                                   {Sound info}             edSoundName.Text,edSoundMark.Text,lbledSelSound.Text,edSoundCount.Text,edSoundPrice.Text,
                                   {VGA info}               edVGAName.Text,edVGAMark.Text,lbledSelVGA.Text,edVGACount.Text,edVGAPrice.Text,
                                   {Scanner Info}           edScannerName.Text,edScannerMark.Text,lbledSelScanner.Text,edScannerCount.Text,edScannerPrice.Text,
                                   {Printer Info}           edPrinterName.Text,edPrinterMark.Text,lbledSelPrinter.Text,edPrinterCount.Text,edPrinterPrice.Text,
                                   {TvCard Info}            edTVCName.Text,edTVCMark.Text,lbledSelTvCard.Text,edTVCCount.Text,edTVCPrice.Text,
                                   {LanCard Info}           edLANCName.Text,edLANCMark.Text,lbledSelLanCard.Text,edLANCCount.Text,edLANCPrice.Text,
                                   {Modem Info}             edModemName.Text,edModemMark.Text,lbledSelModem.Text,edModemCount.Text,edModemPrice.Text,
                                   {Web cam Info}           edWebCamName.Text,edWebCamMark.Text,lbledSelWebCam.Text,edWebCamCount.Text,edWebCamPrice.Text,
                                   {HeadSet Info}           edHSetName.Text,edHSetMark.Text,lbledSelHeadSet.Text,edHSetCount.Text,edHSetPrice.Text,
                                   {MicroPhone Info}        edMcName.Text,edMcMark.Text,lbledSelMicroPhone.Text,edMcCount.Text,edMcPrice.Text,
                                   {Ups Info}               edUPSName.Text,edUPSMark.Text,lbledSelUPS.Text,edUPSCount.Text,edUPSPrice.Text,
                                   {Switch Info}            edSwName.Text,edSwMark.Text,lbledSelSwitch.Text,edSwCount.Text,edSwPrice.Text,
                                   {Floppy Info}            edFDDName.Text,edFDDMark.Text,lbledSelFloppy.Text,edFDDCount.Text,edFDDPrice.Text,
                                   {Zip Drive Info}         edZDriveName.Text,edZDriveMark.Text,lbledSelZipDrive.Text,edZDriveCount.Text,edZDrivePrice.Text,
                                   {Extra Info}             edExtraName.Text,edExtraMark.Text,lbledSelExtra.Text,edExtraCount.Text,edExtraPrice.Text,
                                   {GP Info}                cmbPardakhtKind.Text,redGPComments.Text,
                                   {Check Info}             clbledTotalGp.Text,ClbledPishPardakht.Text,ClbledVarantyPrice.Text,ClbledAsembelPrice.Text,ClbledTakhfif.Text,ClbledMande.Text,ClbledMablagh.Text,CPayDate.Date,CheckPayDate.Date,CheckVosolDate.Date,ClbledCheckNo.Text,ClbledBankName.Text,ClbledBankAddress.Text,CredComments.Text,chbForZemanat.Checked);
                      fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ‘œ',HbtInformation);
                    end;
                   end;
          end;//end of case

     end;
     if CheckData(True) Then
     begin
        ClearAllTextBox;
        clearAllDate;
     end;
     fmDMmain.tblOrder.Refresh;
end;

function TfmSellSystem.CheckData(ForInsert: Boolean): Boolean;
begin
     Result := True;
     if ForInsert Then
     begin
          if lbledFactorNo.Text='' Then
          begin
               lbledFactorNo.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›« ‘„«—Â ›«ò Ê— Œ—Ìœ —« Ê«—œ ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          if lbledCustomer.Text='' Then
          begin
               lbledCustomer.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›« ›—Ê‘‰œÂ „Ê—œ ‰Ÿ— —« «‰ Œ«» ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          if not FIsValidDate(SellDate.Date) Then
          begin
               SellDate.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›« Ìò  «—ÌŒ „⁄ »— Ê«—œ ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          if lbledSelCpu.Text ='' then
          begin
               lbledSelCpu.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›«'+' CPU'+' '+'„Ê—œ ‰Ÿ— ŒÊœ —« «‰ Œ«» ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          if lbledSelRam.Text ='' Then
          begin
               lbledSelRam.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›«'+' Ram'+' '+'„Ê—œ ‰Ÿ— ŒÊœ —« «‰ Œ«» ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          if lbledSelHard.Text = '' Then
          begin
               lbledSelHard.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›«'+' Hard'+' '+'„Ê—œ ‰Ÿ— ŒÊœ —« «‰ Œ«» ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          If lbledSelMb.Text ='' Then
          begin
               lbledSelMb.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›«'+' MainBoard'+' '+'„Ê—œ ‰Ÿ— ŒÊœ —« «‰ Œ«» ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          if lbledSelCdRom.Text='' Then
          begin
               lbledSelCdRom.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›«'+' CDRom'+' '+'„Ê—œ ‰Ÿ— ŒÊœ —« «‰ Œ«» ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          if lbledSelFloppy.Text='' Then
          begin
               lbledSelFloppy.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›«'+' Floppy'+' '+'„Ê—œ ‰Ÿ— ŒÊœ —« «‰ Œ«» ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          if lbledCount.Text = '' Then
          begin
               lbledCount.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ —« „⁄Ì‰ ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          case cmbPardakhtKind.ItemIndex of
               0:
                 begin
                      if nLbledTotalGP.Text='' Then
                      begin
                           nLbledTotalGP.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« ò· „»·€ Å—œ«Œ Ì —« „‘Œ’ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if NlbledPishPardakht.Text='' Then
                      begin
                           NlbledPishPardakht.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« „»·€ ÅÌ‘ Å—œ«Œ  —« Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if NlbledVarantyPrice.Text='' Then
                      begin
                           NlbledVarantyPrice.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« Â“Ì‰Â ê«—«‰ Ì —« Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if NlbledAsembelPrice.Text= '' then
                      begin
                           NlbledAsembelPrice.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« Â“Ì‰Â «”„»· —« Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if Not FIsValidDate(NPayDate.Date) Then
                      begin
                           NPayDate.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›«  «—ÌŒ „⁄ »— Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                 end;
               1:
                 begin
                      if AlbledTotalGp.Text='' Then
                      begin
                           ALbledTotalGP.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« ò· „»·€ Å—œ«Œ Ì —« „‘Œ’ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if AlbledPishPardakht.Text='' Then
                      begin
                           AlbledPishPardakht.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« „»·€ ÅÌ‘ Å—œ«Œ  —« Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if AlbledVarantyPrice.Text='' Then
                      begin
                           AlbledVarantyPrice.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« Â“Ì‰Â ê«—«‰ Ì —« Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if AlbledAsembelPrice.Text= '' then
                      begin
                           AlbledAsembelPrice.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« Â“Ì‰Â «”„»· —« Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if Not FIsValidDate(APayDate.Date) Then
                      begin
                           APayDate.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›«  «—ÌŒ „⁄ »— Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                 end;
               2:
                 begin
                      if CLbledTotalGP.Text='' Then
                      begin
                           CLbledTotalGP.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« ò· „»·€ Å—œ«Œ Ì —« „‘Œ’ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if ClbledPishPardakht.Text='' Then
                      begin
                           ClbledPishPardakht.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« „»·€ ÅÌ‘ Å—œ«Œ  —« Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if ClbledVarantyPrice.Text='' Then
                      begin
                           ClbledVarantyPrice.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« Â“Ì‰Â ê«—«‰ Ì —« Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if ClbledAsembelPrice.Text= '' then
                      begin
                           ClbledAsembelPrice.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« Â“Ì‰Â «”„»· —« Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if Not FIsValidDate(CPayDate.Date) Then
                      begin
                           CPayDate.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›«  «—ÌŒ „⁄ »— Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if AlbledGhestDay.Text= '' Then
                      begin
                           AlbledGhestDay.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« —Ê“ ”——”Ìœ ﬁ”ÿ —« Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := False;
                           Exit;
                      end;
                      if Not FIsValidDate(CheckPayDate.Date) Then
                      begin
                           CheckPayDate.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›«  «—ÌŒ „⁄ »— Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if Not FIsValidDate(CheckVosolDate.Date) Then
                      begin
                           CheckVosolDate.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›«  «—ÌŒ „⁄ »— Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                 end;
          end;//
     end
     else
     begin
          if lbledFactorNoEdit.Text='' Then
          begin
               lbledFactorNoEdit.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›« ‘„«—Â ›«ò Ê— Œ—Ìœ —« Ê«—œ ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          if lbledCustomerEdit.Text='' Then
          begin
               lbledCustomerEdit.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›« ›—Ê‘‰œÂ „Ê—œ ‰Ÿ— —« «‰ Œ«» ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          if not FIsValidDate(SellDateEdit.Date) Then
          begin
               SellDateEdit.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›« Ìò  «—ÌŒ „⁄ »— Ê«—œ ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          if lbledSelCpuEdit.Text ='' then
          begin
               lbledSelCpuEdit.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›«'+' CPU'+' '+'„Ê—œ ‰Ÿ— ŒÊœ —« «‰ Œ«» ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          if lbledSelRamEdit.Text ='' Then
          begin
               lbledSelRamEdit.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›«'+' Ram'+' '+'„Ê—œ ‰Ÿ— ŒÊœ —« «‰ Œ«» ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          if lbledSelHardEdit.Text = '' Then
          begin
               lbledSelHardEdit.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›«'+' Hard'+' '+'„Ê—œ ‰Ÿ— ŒÊœ —« «‰ Œ«» ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          If lbledSelMbEdit.Text ='' Then
          begin
               lbledSelMbEdit.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›«'+' MainBoard'+' '+'„Ê—œ ‰Ÿ— ŒÊœ —« «‰ Œ«» ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          if lbledSelCdRomEdit.Text='' Then
          begin
               lbledSelCdRomEdit.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›«'+' CDRom'+' '+'„Ê—œ ‰Ÿ— ŒÊœ —« «‰ Œ«» ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          if lbledSelFloppyEdit.Text='' Then
          begin
               lbledSelFloppyEdit.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›«'+' Floppy'+' '+'„Ê—œ ‰Ÿ— ŒÊœ —« «‰ Œ«» ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          if lbledCountEdit.Text = '' Then
          begin
               lbledCountEdit.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ —« „⁄Ì‰ ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          case cmbpardakhtKindEdit.ItemIndex of
               0:
                 begin
                      if nLbledTotalGPedit.Text='' Then
                      begin
                           nLbledTotalGPedit.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« ò· „»·€ Å—œ«Œ Ì —« „‘Œ’ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if NlbledPishPardakhtEdit.Text='' Then
                      begin
                           NlbledPishPardakhtEdit.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« „»·€ ÅÌ‘ Å—œ«Œ  —« Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if NlbledVarantyPriceedit.Text='' Then
                      begin
                           NlbledVarantyPriceedit.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« Â“Ì‰Â ê«—«‰ Ì —« Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if NlbledAsembelPriceEdit.Text= '' then
                      begin
                           NlbledAsembelPriceEdit.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« Â“Ì‰Â «”„»· —« Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if Not FIsValidDate(NPayDateEdit.Date) Then
                      begin
                           NPayDate.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›«  «—ÌŒ „⁄ »— Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                 end;
               1:
                 begin
                      if AlbledTotalGpEdit.Text='' Then
                      begin
                           AlbledTotalGpEdit.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« ò· „»·€ Å—œ«Œ Ì —« „‘Œ’ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if AlbledPishPardakhtEdit.Text='' Then
                      begin
                           AlbledPishPardakhtEdit.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« „»·€ ÅÌ‘ Å—œ«Œ  —« Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if AlbledVarantyPriceEdit.Text='' Then
                      begin
                           AlbledVarantyPriceEdit.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« Â“Ì‰Â ê«—«‰ Ì —« Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if AlbledAsembelPriceEdit.Text= '' then
                      begin
                           AlbledAsembelPriceEdit.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« Â“Ì‰Â «”„»· —« Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if Not FIsValidDate(APayDateEdit.Date) Then
                      begin
                           APayDateEdit.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›«  «—ÌŒ „⁄ »— Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                 end;
               2:
                 begin
                      if clbledTotalGpEdit.Text='' Then
                      begin
                           clbledTotalGpEdit.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« ò· „»·€ Å—œ«Œ Ì —« „‘Œ’ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if ClbledPishPardakhtEdit.Text='' Then
                      begin
                           ClbledPishPardakhtEdit.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« „»·€ ÅÌ‘ Å—œ«Œ  —« Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if ClbledVarantyPriceEdit.Text='' Then
                      begin
                           ClbledVarantyPriceEdit.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« Â“Ì‰Â ê«—«‰ Ì —« Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if ClbledAsembelPriceEdit.Text= '' then
                      begin
                           ClbledAsembelPriceEdit.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« Â“Ì‰Â «”„»· —« Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if Not FIsValidDate(CPayDateEdit.Date) Then
                      begin
                           CPayDateEdit.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›«  «—ÌŒ „⁄ »— Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if AlbledGhestDayEdit.Text= '' Then
                      begin
                           AlbledGhestDayEdit.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›« —Ê“ ”——”Ìœ ﬁ”ÿ —« Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := False;
                           Exit;
                      end;
                      if Not FIsValidDate(CheckPayDateEdit.Date) Then
                      begin
                           CheckPayDateEdit.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›«  «—ÌŒ „⁄ »— Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                      if Not FIsValidDate(CheckVosolDateEdit.Date) Then
                      begin
                           CheckVosolDateEdit.SetFocus;
                           fmDMmain.MessageDialog.Show('·ÿ›«  «—ÌŒ „⁄ »— Ê«—œ ò‰Ìœ',HbtInformation);
                           Result := false;
                           Exit;
                      end;
                 end;
          end;//
     end;
end;

procedure TfmSellSystem.btnSelSellerClick(Sender: TObject);
begin
      SelectedField.FormCaption :='«‰ Œ«» Œ—Ìœ«—';
      SelectedField.Query :='Select xPersonCode_Pk_AN,xIsSeller,(xName+'+QuotedStr(' ')+'+xFamily) As NameFamily From tblPerson Where xIsSeller=False Order By (xName+'+QuotedStr(' ')+'+xFamily)';
      SelectedField.DisplayFieldName := 'NameFamily';
      SelectedField.ReturnFieldName  := 'xPersonCode_Pk_AN';
      lbledCustomer.Text := SelectedField.Execute;
end;

procedure TfmSellSystem.lbledCountKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key In ['a'..'z']) or (Key in ['A'..'Z'])or (Key In ['"',',',':',';','?','|','\','`','~','!','@','#','$','%','^','&','(',')','{','}','[',']']) then
    key:=#0;
end;

procedure TfmSellSystem.ClearAllTextBox;
Var
   i:Integer;
begin
     for i := 0 To ComponentCount-1 Do
     begin
          If (Components[i] Is TLabeledEdit) Then
             (Components[i] As TLabeledEdit ).Clear;
          If (Components[i] Is TEdit) Then
             (Components[i] As TEdit ).Clear;
          if (Components[i] Is TRichEdit) Then
             (Components[i] As TRichEdit ).Clear;
     end;

end;

procedure TfmSellSystem.LoadDate(OrderCode: Integer);
Var
   thisGpCode:Integer;
begin
     if IntTostr(OrderCode)='' then Exit;
     with fmDMmain do
     begin
          with tblOrder do
          begin
               Locate('xOrderNo_Pk_AN',OrderCode,[]);
               lbledFactorNoEdit.Text      :=FieldByName('xBuyOrderFactorNo').AsString;
               SellDateEdit.Date            :=FieldByName('xDate').AsString;
               lbledCountEdit.Text         :=FieldByName('xCount').AsString;
               lbledCustomerEdit.Text        :=FieldByName('xPersonCode_Fk').AsString;
               redCommentsEdit.Text        :=FieldByName('xComments').AsString ;
          end;
          with tblSystemInfo do
          begin
               Locate('xOrderNo_Fk',OrderCode,[]);

               //------------------------------------------------------------------
               //-------------------------- CPU Info ------------------------------
               //------------------------------------------------------------------
               if (FieldByName('xCpuCode').AsString <> '') Then
               begin
                   lbledSelCpuEdit.Text :=FieldByName('xCpuCode').AsString;
                   edCpuCountEdit.Text  :=FieldByName('xCpuCount').AsString;
                   edCpuPriceEdit.Text  :=FieldByName('xCpuPrice').AsString;
               end;
               //------------------------------------------------------------------
               //------------------------- RAM INFO -------------------------------
               //------------------------------------------------------------------
               if FieldByName('xRamCode').AsString <> '' Then
               begin
                   lbledSelRamEdit.Text      :=FieldByName('xRamCode').AsString;
                   edRamCountEdit.Text   :=FieldByName('xRamCount').AsString;
                   edRamPriceEdit.Text   :=FieldByName('xRamPrice').AsString;
               end;
               //------------------------------------------------------------------
               //-------------------------- Hard Info -----------------------------
               //------------------------------------------------------------------
               if FieldByName('xHardCode').AsString <> ''Then
               begin
                   lbledSelHardEdit.Text    :=FieldByName('xHardCode').AsString;
                   edHardCountEdit.Text     :=FieldByName('xHardCount').AsString;
                   edHardPriceEdit.Text     :=FieldByName('xHardPrice').AsString;
               end;
               //------------------------------------------------------------------
               //------------------------- MainBoard Info -------------------------
               //------------------------------------------------------------------
               if FieldByName('xMainBoardCode').AsString <> '' Then
               begin
                   lbledSelMbEdit.Text         :=FieldByName('xMainBoardCode').AsString;
                   edMBCountEdit.Text          :=FieldByName('xMainBoardCount').AsString;
                   edMBPriceEdit.Text          :=FieldByName('xMainBoardPrice').AsString;
               end;
               //------------------------------------------------------------------
               //------------------------- Monitor Info ---------------------------
               //------------------------------------------------------------------
               if FieldByName('xMonitorCode').AsString <> '' Then
               begin
                   lbledSelMonitorEdit.Text     :=FieldByName('xMonitorCode').AsString;
                   edMonitorCountEdit.Text      :=FieldByName('xMonitorCount').AsString;
                   edMonitorPriceEdit.Text      :=FieldByName('xMonitorPrice').AsString;
               end;
               //------------------------------------------------------------------
               //------------------------- Case Info ------------------------------
               //------------------------------------------------------------------
               if FieldByName('xCaseCode').AsString <> '' Then
               begin
                   lbledSelCaseEdit.Text       :=FieldByName('xCaseCode').AsString;
                   edCaseCountEdit.Text        :=FieldByName('xCaseCount').AsString;
                   edCasePriceEdit.Text        :=FieldByName('xCasePrice').AsString;
               end;
               //------------------------------------------------------------------
               //-------------------------- CdROM Info ----------------------------
               //------------------------------------------------------------------
               if FieldByName('xCDRomCode').AsString <> '' Then
               begin
                   lbledSelCdRomEdit.Text          :=FieldByName('xCDRomCode').AsString;
                   edCDRCountEdit.Text             :=FieldByName('xCDRomCount').AsString;
                   edCDRPriceEdit.Text             :=FieldByName('xCDRomPrice').AsString;
               end;
               //------------------------------------------------------------------
               //--------------------------CDWriter Info --------------------------
               //------------------------------------------------------------------
               if FieldByName('xCDWriterCode').AsString <> '' Then
               begin
                   lbledSelCdWriterEdit.Text      :=FieldByName('xCDWriterCode').AsString;
                   edCDWCountEdit.Text            :=FieldByName('xCdWriterCount').AsString;
                   edCDWPriceEdit.Text            :=FieldByName('xCdWriterPrice').AsString;
               end;
               //------------------------------------------------------------------
               //------------------------- DVDRom Info ----------------------------
               //------------------------------------------------------------------
               if FieldByName('xDvdRomCode').AsString <> '' Then
               begin
                   lbledSelDvdRomEdit.Text        :=FieldByName('xDvdRomCode').AsString;
                   edDVDRCountEdit.Text           :=FieldByName('xDvdRomCount').AsString;
                   edDVDRPriceEdit.Text           :=FieldByName('xDvdRomPrice').AsString;
               end;
               //------------------------------------------------------------------
               //------------------------ DVDWriter Info --------------------------
               //------------------------------------------------------------------
               if FieldByName('xDvdWriterCode').AsString <> '' Then
               begin
                   lbledSelDvdWriterEdit.Text    :=FieldByName('xDvdWriterCode').AsString;
                   edDVDWCountEdit.Text          :=FieldByName('xDvdWriterCount').AsString;
                   edDVDWPriceEdit.Text          :=FieldByName('xDvdWriterprice').AsString;
               end;
               //------------------------------------------------------------------
               //------------------------ Speaker Info ----------------------------
               //------------------------------------------------------------------
               if FieldByName('xSpeakerCode').AsString <> '' Then
               begin
                   lbledSelSpeakerEdit.Text     :=FieldByName('xSpeakerCode').AsString;
                   edSPCountEdit.Text           :=FieldByName('xSpeakerCount').AsString;
                   edSPPriceEdit.Text           :=FieldByName('xSpeakerPrice').AsString;
               end;
               //------------------------------------------------------------------
               //----------------------- KeyBoard Info ----------------------------
               //------------------------------------------------------------------
               if FieldByName('xKeyBoardCode').AsString <> '' Then
               begin
                   lbledSelKeyBoardEdit.Text    :=FieldByName('xKeyBoardCode').AsString;
                   edKeyBCountEdit.Text         :=FieldByName('xKeyBoardCount').AsString;
                   edKeyBPriceEdit.Text         :=FieldByName('xKeyBoardPrice').AsString;
               end;
               //------------------------------------------------------------------
               //----------------------- Mouse Info -------------------------------
               //------------------------------------------------------------------
               if FieldByName('xMouseCode').AsString <> '' Then
               begin
                   lbledSelMouseEdit.Text     :=FieldByName('xMouseCode').AsString;
                   edMouseCountEdit.Text      :=FieldByName('xMouseCount').AsString;
                   edMousePriceEdit.Text     :=FieldByName('xMouseprice').AsString;
               end;
               //------------------------------------------------------------------
               //--------------------- Sound Info ---------------------------------
               //------------------------------------------------------------------
               if FieldByName('xSoundCode').AsString <> '' Then
               begin
                   lbledSelSoundEdit.Text    :=FieldByName('xSoundCode').AsString;
                   edSoundCountEdit.Text     :=FieldByName('xSoundCount').AsString;
                   edSoundPriceEdit.Text     :=FieldByName('xSoundPrice').AsString;
               end;
               //------------------------------------------------------------------
               //--------------------- Scanner Info -------------------------------
               //------------------------------------------------------------------
               if FieldByName('xScanerCode').AsString <>'' Then
               begin
                   lbledSelScannerEdit.Text    :=FieldByName('xScanerCode').AsString;
                   edScannerCountEdit.Text     :=FieldByName('xScanerCount').AsString;
                   edScannerPriceEdit.Text     :=FieldByName('xScanerprice').AsString;
               end;
               //------------------------------------------------------------------
               //---------------------- Printer Info ------------------------------
               //------------------------------------------------------------------
               if FieldByName('xPrinterCode').AsString <> '' Then
               begin
                   lbledSelPrinterEdit.Text    :=FieldByName('xPrinterCode').AsString;
                   edPrinterCountEdit.Text     :=FieldByName('xPrinterCount').AsString;
                   edPrinterPriceEdit.Text     :=FieldByName('xPrinterPrice').AsString;
               end;
               //------------------------------------------------------------------
               //------------------------ VGA Info --------------------------------
               //------------------------------------------------------------------
               if FieldByName('xVGACode').AsString <>'' Then
               begin
                   lbledSelVGAEdit.Text    :=FieldByName('xVGACode').AsString;
                   edVGACountEdit.Text     :=FieldByName('xVgaCount').AsString;
                   edVGAPriceEdit.Text     :=FieldByName('xVgaPrice').AsString;
               end;
               //------------------------------------------------------------------
               //----------------------- TV Card Info -----------------------------
               //------------------------------------------------------------------
               if FieldByName('xTVCARDCode').AsString <> '' then
               begin
                   lbledSelTvCardEdit.Text   :=FieldByName('xTVCARDCode').AsString;
                   edTVCCountEdit.Text       :=FieldByName('xTVCARDCount').AsString;
                   edTVCPriceEdit.Text       :=FieldByName('xTVCARDPrice').AsString;
               end;
               //------------------------------------------------------------------
               //------------------------ LAN Card Info ---------------------------
               //------------------------------------------------------------------
               if FieldByName('xLANCARDCode').AsString <>'' Then
               begin
                   lbledSelLanCardEdit.Text   :=FieldByName('xLANCARDCode').AsString;
                   edLANCCountEdit.Text       :=FieldByName('xLANCARDCount').AsString;
                   edLANCPriceEdit.Text       :=FieldByName('xLANCARDPrice').AsString;
               end;
               //------------------------------------------------------------------
               //------------------------ Modem Info ------------------------------
               //------------------------------------------------------------------
               if FieldByName('xModemCode').AsString <> '' Then
               begin
                   lbledSelModemEdit.Text     :=FieldByName('xModemCode').AsString;
                   edModemCountEdit.Text      :=FieldByName('xModemCount').AsString;
                   edModemPriceEdit.Text      :=FieldByName('xModemPrice').AsString;
               end;
               //------------------------------------------------------------------
               //------------------------ Web Cam Info ----------------------------
               //------------------------------------------------------------------
               if FieldByName('xWebcamCode').AsString <>'' Then
               begin
                   lbledSelWebCamEdit.Text    :=FieldByName('xWebcamCode').AsString;
                   edWebCamCountEdit.Text     :=FieldByName('xWebCamCount').AsString;
                   edWebCamPriceEdit.Text     :=FieldByName('xWebCamPrice').AsString;
               end;
               //------------------------------------------------------------------
               //------------------------ Head Set Info ---------------------------
               //------------------------------------------------------------------
               if FieldByName('xHeadSetCode').AsString <> '' Then
               begin
                   lbledSelHeadSetEdit.Text    :=FieldByName('xHeadSetCode').AsString;
                   edHSetCountEdit.Text        :=FieldByName('xHeadSetCount').AsString;
                   edHSetPriceEdit.Text        :=FieldByName('xHeadSetPrice').AsString;
               end;
               //------------------------------------------------------------------
               //---------------------- MicroPhone Info ---------------------------
               //------------------------------------------------------------------
               if FieldByName('xMicroPhoneCode').AsString <> '' Then
               begin
                   lbledSelMicroPhoneEdit.Text   :=FieldByName('xMicroPhoneCode').AsString;
                   edMcCountEdit.Text            :=FieldByName('xMicrophoneCount').AsString;
                   edMcPriceEdit.Text            :=FieldByName('xMicrophonePrice').AsString;
               end;
               //------------------------------------------------------------------
               //-------------------------- UPS Info ------------------------------
               //------------------------------------------------------------------
               if FieldByName('xUPSCode').AsString <> '' Then
               begin
                   lbledSelUPSEdit.Text    :=FieldByName('xUPSCode').AsString;
                   edUPSCountEdit.Text     :=FieldByName('xUpsCount').AsString;
                   edUPSPriceEdit.Text     :=FieldByName('xUpsPrice').AsString;
               end;
               //------------------------------------------------------------------
               //------------------------- Switch Info ----------------------------
               //------------------------------------------------------------------
               if FieldByName('xSwitchCode').AsString <>'' Then
               begin
                   lbledSelSwitchEdit.Text   :=FieldByName('xSwitchCode').AsString;
                   edSwCountEdit.Text        :=FieldByName('xSwitchCount').AsString;
                   edSwPriceEdit.Text        :=FieldByName('xSwitchPrice').AsString;
               end;
               //------------------------------------------------------------------
               //------------------------ Floppy info -----------------------------
               //------------------------------------------------------------------
               if FieldByName('xFloppyCode').AsString <>'' Then
               begin
                   lbledSelFloppyEdit.Text   :=FieldByName('xFloppyCode').AsString;
                   edFDDCountEdit.Text       :=FieldByName('xFloppyCount').AsString;
                   edFDDPriceEdit.Text       :=FieldByName('xFloppyPrice').AsString;
               end;
               //------------------------------------------------------------------
               //------------------------ Zip Drive info --------------------------
               //------------------------------------------------------------------
               if FieldByName('xZipDriveCode').AsString <> '' Then
               begin
                   lbledSelZipDriveEdit.Text    :=FieldByName('xZipDriveCode').AsString;
                   edZDriveCountEdit.Text       :=FieldByName('xZipDriveCount').AsString;
                   edZDrivePriceEdit.Text       :=FieldByName('xZipDrivePrice').AsString;
               end;
               //------------------------------------------------------------------
               //------------------------ Extra Info ------------------------------
               //------------------------------------------------------------------
               if FieldByName('xOtherDevice1Code').AsString <> '' Then
               begin
                   lbledSelExtraEdit.Text    :=FieldByName('xOtherDevice1Code').AsString;
                   edExtraCountEdit.Text     :=FieldByName('xOtherDevice1Count').AsString;
                   edExtraPriceEdit.Text     :=FieldByName('xOtherDevice1Price').AsString;
               end;
               //------------------------------------------------------------------
          end;
          with tblGp do
          begin
               Locate('xOrderCode_Fk',OrderCode,[]);

               thisGpCode               := FieldByName('xGPCode_Pk_AN').AsInteger;
               cmbpardakhtKindEdit.ItemIndex :=cmbpardakhtKindEdit.Items.IndexOf(FieldByName('xGpKind').AsString);
               cmbpardakhtKindEdit.OnChange(Self);
               redGPCommentsEdit.Text   :=  FieldByName('xComments').AsString;
          end;
          case cmbpardakhtKindEdit.ItemIndex of
               0:
                 begin
                      with tblNaghd do
                      begin
                           Locate('xGpCode_Fk',thisGpCode,[]);

                           nLbledTotalGPedit.Text            := FieldByName('xTotalGP').AsString;
                           NlbledPishPardakhtEdit.Text       := FieldByName('xPishPardakht').AsString;
                           NlbledVarantyPriceedit.Text       := FieldByName('xvarantyPrice').AsString;
                           NlbledAsembelPriceEdit.Text       := FieldByName('xAsembelPrice').AsString;
                           NlbledTakhfifEdit.Text            := FieldByName('xTakhfif').AsString;
                           NlbledMandeEdit.Text              := FieldByName('xMande').AsString;
                           NPayDateEdit.Date                 := FieldByName('xPayDate').AsString;
                           NredCommentsEdit.Text             := FieldByName('xComments').AsString;
                           
                      end;
                 end;
               1:
                 begin
                      with tblAghsat do
                      begin
                           Locate('xGPCode_Fk',thisGpCode,[]);

                           AlbledTotalGpEdit.Text                := FieldByName('xTotalGP').AsString;
                           AlbledPishPardakhtEdit.Text           := FieldByName('xPishPardakht').AsString;
                           AlbledVarantyPriceEdit.Text           := FieldByName('xVarantyPrice').AsString;
                           AlbledAsembelPriceEdit.Text           := FieldByName('xAsembelPrice').AsString;
                           AlbledTakhfifEdit.Text                := FieldByName('xTakhfif').AsString;
                           AlbledMandeEdit.Text                  := FieldByName('xMande').AsString;
                           AlbledGhestPriceEdit.Text             := FieldByName('xAghsatPrice').AsString;
                           AStartDateEdit.Date                   := FieldByName('xStartDate').AsString;
                           AEndDateEdit.Date                     := FieldByName('xEndDate').AsString;
                           AlbledGhestDay.Text                   := FieldByName('xSarResidDay').AsString;
                           APayDateEdit.Date                     := FieldByName('xPayDate').AsString;
                           AredComments.Text                     := FieldByName('xComments').AsString;

                      end;
                 end;
               2:
                 begin
                      with tblChecks do
                      begin
                           Locate('xGpCode_Fk',thisGpCode,[]);

                           clbledTotalGpEdit.Text                      := FieldByName('xTotalGp').AsString;
                           ClbledPishPardakhtEdit.Text                 := FieldByName('xPishPardakht').AsString;
                           ClbledVarantyPriceEdit.Text                 := FieldByName('xVarantyPrice').AsString;
                           ClbledAsembelPriceEdit.Text                 := FieldByName('xAsembelPrice').AsString;
                           ClbledTakhfifEdit.Text                      := FieldByName('xTakhfif').AsString;
                           ClbledMandeEdit.Text                        := FieldByName('xMande').AsString;
                           ClbledCheckNoEdit.Text                      := FieldByName('xCheckNo').AsString;
                           ClbledMablaghEdit.Text                      := FieldByName('xCheckPirce').AsString;
                           CheckPayDateEdit.Date                       := FieldByName('xCheckTahvilDate').AsString;
                           CheckVosolDateEdit.Date                     := FieldByName('xCheckVosolDate').AsString;
                           CPayDateEdit.Date                           := FieldByName('xPayDate').AsString;
                           ClbledBankNameEdit.Text                     := FieldByName('xCheckBank').AsString;
                           ClbledBankAddressEdit.Text                  := FieldByName('xBankaddress').AsString;
                           chbForZemanatEdit.Checked                   := FieldByName('xIsCheckForZemanat').AsBoolean;
                           CredCommentsEdit.Text                       := FieldByName('xComments').AsString;

                      end;
                 end;
          end;

     end;
end;

procedure TfmSellSystem.lbledCustomerEditChange(Sender: TObject);
begin
     if Trim(lbledCustomerEdit.Text) <> '' Then
        fmDMmain.tblPerson.Locate('xPersonCode_Pk_AN',StrToInt(lbledCustomerEdit.Text),[]);
end;

procedure TfmSellSystem.lbledCustomerEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key=VK_DOWN Then
     begin
          SelectedField.FormCaption :='«‰ Œ«» Œ—Ìœ«—';
          SelectedField.Query :='Select xPersonCode_Pk_AN,xIsSeller,(xName+'+QuotedStr(' ')+'+xFamily) As NameFamily From tblPerson Where xIsSeller=False Order By (xName+'+QuotedStr(' ')+'+xFamily)';
          SelectedField.DisplayFieldName := 'NameFamily';
          SelectedField.ReturnFieldName  := 'xPersonCode_Pk_AN';
          lbledCustomerEdit.Text := SelectedField.Execute;
     end;
     fmBuySystem.OnKeyUp(Sender,Key,Shift);
end;

procedure TfmSellSystem.lbledSelOrderKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key=VK_DOWN Then
     begin
          SelectedField.FormCaption      := '‘„«—Â ›«ò Ê— ›—Ê‘';
          SelectedField.Query            := ' select xSellFactorNo,xOrderNo_Pk_AN,xIsSystemOrder From tblOrder Where xIsSystemOrder=True ';
          SelectedField.DisplayFieldName := 'xSellFactorNo';
          SelectedField.ReturnFieldName  := 'xOrderNo_Pk_AN';
          lbledSelOrder.Text := SelectedField.Execute;
     end;
end;

procedure TfmSellSystem.AddBitBtn55Click(Sender: TObject);
begin
      SelectedField.FormCaption      := '‘„«—Â ›«ò Ê— ›—Ê‘';
      SelectedField.Query            := ' select xSellFactorNo,xOrderNo_Pk_AN,xIsSystemOrder From tblOrder Where xIsSystemOrder=True ';
      SelectedField.DisplayFieldName := 'xSellFactorNo';
      SelectedField.ReturnFieldName  := 'xOrderNo_Pk_AN';
      lbledSelOrder.Text := SelectedField.Execute;
end;

procedure TfmSellSystem.AddBitBtn14Click(Sender: TObject);
begin
      SelectedField.FormCaption :='«‰ Œ«» Œ—Ìœ«—';
      SelectedField.Query :='Select xPersonCode_Pk_AN,xIsSeller,(xName+'+QuotedStr(' ')+'+xFamily) As NameFamily From tblPerson Where xIsSeller=False Order By (xName+'+QuotedStr(' ')+'+xFamily)';
      SelectedField.DisplayFieldName := 'NameFamily';
      SelectedField.ReturnFieldName  := 'xPersonCode_Pk_AN';
      lbledCustomerEdit.Text := SelectedField.Execute;
end;

procedure TfmSellSystem.cmbpardakhtKindEditChange(Sender: TObject);
Var
   TotalPrice:String;
begin
     TotalPrice := Calc(False);
     case cmbpardakhtKindEdit.ItemIndex of
       0:
         begin
              nLbledTotalGPedit.Text := TotalPrice;
              tbsAghsatEdit.TabVisible := False;
              tbsCheckEdit.TabVisible  := False;
              pgcPayEdit.ActivePage    := tbsnaghdEdit;
              tbsnaghdEdit.TabVisible  := True;
         end;
       1:
         begin
              AlbledTotalGpEdit.Text := TotalPrice;
              tbsAghsatEdit.TabVisible := True;
              tbsCheckEdit.TabVisible  := False;
              pgcPayEdit.ActivePage    := tbsAghsatEdit;
              tbsnaghdEdit.TabVisible  := False;
         end;
       2:
         begin
              clbledTotalGpEdit.Text := TotalPrice;         
              tbsAghsatEdit.TabVisible := False;
              tbsCheckEdit.TabVisible  := True;
              pgcPayEdit.ActivePage    := tbsCheckEdit;
              tbsnaghdEdit.TabVisible  := False;
         end;
     end;//end of case
end;

procedure TfmSellSystem.lbledSelOrderChange(Sender: TObject);
begin
     if not (Trim(lbledSelOrder.Text)='') Then
        LoadDate(StrToInt(lbledSelOrder.Text));
end;

procedure TfmSellSystem.lbledSelCpuEditChange(Sender: TObject);
begin
     if Trim(lbledSelCpuEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelCpuEdit.Text),1);
end;

procedure TfmSellSystem.lbledSelCpuEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key=VK_DOWN Then
     begin
          SelectedFieldExe(False,1);
     end;
     fmBuySystem.OnKeyUp(Sender,Key,Shift);
end;

procedure TfmSellSystem.btnSelCpuEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,1);
end;

procedure TfmSellSystem.lbledSelRamEditChange(Sender: TObject);
begin
     if Trim(lbledSelRamEdit.Text)= '' then Exit;
     LoadDevice(False,StrToint(lbledSelRamEdit.Text),2);
end;

procedure TfmSellSystem.btnSelRamEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,2);
end;

procedure TfmSellSystem.lbledSelRamEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,2);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelHardEditChange(Sender: TObject);
begin
     if Trim(lbledSelHardEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelHardEdit.Text),3);
end;

procedure TfmSellSystem.btnSelHardEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,3);
end;

procedure TfmSellSystem.lbledSelHardEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,3);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelMbEditChange(Sender: TObject);
begin
     if Trim(lbledSelMbEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelMbEdit.Text),4);
end;

procedure TfmSellSystem.lbledSelMbEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,4);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelMBEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,4);
end;

procedure TfmSellSystem.lbledSelMonitorEditChange(Sender: TObject);
begin
     if Trim(lbledSelMonitorEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelMonitorEdit.Text),5);
end;

procedure TfmSellSystem.lbledSelMonitorEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,5);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelMonitorEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,5);
end;

procedure TfmSellSystem.lbledSelCaseEditChange(Sender: TObject);
begin
     if Trim(lbledSelCaseEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelCaseEdit.Text),6);
end;

procedure TfmSellSystem.lbledSelCaseEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,6);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelCaseEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,6);
end;

procedure TfmSellSystem.lbledSelCdRomEditChange(Sender: TObject);
begin
     if Trim(lbledSelCdRomEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelCdRomEdit.Text),7);
end;

procedure TfmSellSystem.btnSelCdRomEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,7);
end;

procedure TfmSellSystem.lbledSelCdRomEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,7);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.lbledSelCdWriterEditChange(Sender: TObject);
begin
     if Trim(lbledSelCdWriterEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelCdWriterEdit.Text),8);
end;

procedure TfmSellSystem.lbledSelCdWriterEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,8);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelCdWriterEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,8);
end;

procedure TfmSellSystem.lbledSelDvdRomEditChange(Sender: TObject);
begin
     if Trim(lbledSelDvdRomEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelDvdRomEdit.Text),9);
end;

procedure TfmSellSystem.lbledSelDvdRomEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,9);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelDvdRomEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,9);
end;

procedure TfmSellSystem.lbledSelDvdWriterEditChange(Sender: TObject);
begin
     if Trim(lbledSelDvdWriterEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelDvdWriterEdit.Text),10);
end;

procedure TfmSellSystem.lbledSelDvdWriterEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,10);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelDvdWriterEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,10);
end;

procedure TfmSellSystem.lbledSelSpeakerEditChange(Sender: TObject);
begin
     if Trim(lbledSelSpeakerEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelSpeakerEdit.Text),11);
end;

procedure TfmSellSystem.lbledSelSpeakerEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,11);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelSpeakerEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,11);
end;

procedure TfmSellSystem.lbledSelKeyBoardEditChange(Sender: TObject);
begin
     if Trim(lbledSelKeyBoardEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelKeyBoardEdit.Text),12);
end;

procedure TfmSellSystem.lbledSelKeyBoardEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,12);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelKeyBoardEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,12);
end;

procedure TfmSellSystem.lbledSelMouseEditChange(Sender: TObject);
begin
     if Trim(lbledSelMouseEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelMouseEdit.Text),13);
end;

procedure TfmSellSystem.lbledSelMouseEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,13);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelMouseEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,13);
end;

procedure TfmSellSystem.lbledSelSoundEditChange(Sender: TObject);
begin
     if Trim(lbledSelSoundEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelSoundEdit.Text),14);
end;

procedure TfmSellSystem.lbledSelSoundEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,14);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelSoundEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,14);
end;

procedure TfmSellSystem.lbledSelVGAEditChange(Sender: TObject);
begin
     if Trim(lbledSelVGAEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelVGAEdit.Text),15);
end;

procedure TfmSellSystem.lbledSelVGAEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,15);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelVGAEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,15);
end;

procedure TfmSellSystem.lbledSelScannerEditChange(Sender: TObject);
begin
     if Trim(lbledSelScannerEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelScannerEdit.Text),16);
end;

procedure TfmSellSystem.lbledSelScannerEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,16);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelScannerEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,16);
end;

procedure TfmSellSystem.lbledSelPrinterEditChange(Sender: TObject);
begin
     if Trim(lbledSelPrinterEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelPrinterEdit.Text),17);
end;

procedure TfmSellSystem.btnSelPrinterEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,17);
end;

procedure TfmSellSystem.lbledSelTvCardEditChange(Sender: TObject);
begin
     if Trim(lbledSelTvCardEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelTvCardEdit.Text),18);
end;

procedure TfmSellSystem.lbledSelTvCardEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,18);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelTvCardEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,18);
end;

procedure TfmSellSystem.lbledSelLanCardEditChange(Sender: TObject);
begin
     if Trim(lbledSelLanCardEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelLanCardEdit.Text),19);
end;

procedure TfmSellSystem.lbledSelLanCardEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,19);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSellanCardEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,19);
end;

procedure TfmSellSystem.lbledSelModemEditChange(Sender: TObject);
begin
     if Trim(lbledSelModemEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelModemEdit.Text),20);
end;

procedure TfmSellSystem.lbledSelModemEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,20);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelModemEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,20);
end;

procedure TfmSellSystem.lbledSelWebCamEditChange(Sender: TObject);
begin
     if Trim(lbledSelWebCamEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelWebCamEdit.Text),21);
end;

procedure TfmSellSystem.lbledSelWebCamEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,21);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelWebCamEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,21);
end;

procedure TfmSellSystem.lbledSelHeadSetEditChange(Sender: TObject);
begin
     if Trim(lbledSelHeadSetEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelHeadSetEdit.Text),22);
end;

procedure TfmSellSystem.lbledSelHeadSetEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,22);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnselHeadSetEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,22);
end;

procedure TfmSellSystem.lbledSelMicroPhoneEditChange(Sender: TObject);
begin
     if Trim(lbledSelMicroPhoneEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelMicroPhoneEdit.Text),23);
end;

procedure TfmSellSystem.lbledSelMicroPhoneEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,23);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelMicroPhoneEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,23);
end;

procedure TfmSellSystem.lbledSelUPSEditChange(Sender: TObject);
begin
     if Trim(lbledSelUPSEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelUPSEdit.Text),24);
end;

procedure TfmSellSystem.lbledSelUPSEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,24);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelUPSEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,24);
end;

procedure TfmSellSystem.lbledSelSwitchEditChange(Sender: TObject);
begin
     if Trim(lbledSelSwitchEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelSwitchEdit.Text),25);
end;

procedure TfmSellSystem.lbledSelSwitchEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,25);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelSwitchEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,25);
end;

procedure TfmSellSystem.lbledSelFloppyEditChange(Sender: TObject);
begin
     if Trim(lbledSelFloppyEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelFloppyEdit.Text),26);
end;

procedure TfmSellSystem.lbledSelFloppyEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,26);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelFloppyEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,26);
end;

procedure TfmSellSystem.lbledSelZipDriveEditChange(Sender: TObject);
begin
     if Trim(lbledSelZipDriveEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelZipDriveEdit.Text),27);
end;

procedure TfmSellSystem.lbledSelZipDriveEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,27);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelZipDriveEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,27);
end;

procedure TfmSellSystem.lbledSelExtraEditChange(Sender: TObject);
begin
     if Trim(lbledSelExtraEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelExtraEdit.Text),28);
end;

procedure TfmSellSystem.lbledSelExtraEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DOWN Then
     begin
          SelectedFieldExe(False,28);
     end;
     fmBuySystem.OnKeyUp(Self,Key,Shift);
end;

procedure TfmSellSystem.btnSelExtraEditClick(Sender: TObject);
begin
     SelectedFieldExe(False,28);
end;

procedure TfmSellSystem.btnSaveEditClick(Sender: TObject);
begin
     with TDefSystemBuyOrder do
     begin
          if lbledSelOrder.Text = '' then
          begin
               fmDMmain.MessageDialog.Show('·ÿ›« ”›«—‘ „Ê—œ ‰Ÿ— ŒÊœ —« «‰ Œ«» ò‰Ìœ',HbtInformation);
               Exit;
          end;
          if CheckData(False)Then
             case cmbpardakhtKindEdit.ItemIndex of
                  0:
                    begin
                         if CheckData(False) Then
                             UpdateNValueS(lbledSelOrder.Text,lbledFactorNoEdit.Text,SellDateEdit.Date,lbledCountEdit.Text,lbledCustomerEdit.Text,True,redCommentsEdit.Text,
                                           {Cpu Info}          edCpuNameEdit.Text,edCpuMarkEdit.Text,lbledSelCpuEdit.Text,edCpuCountEdit.Text,edCpuPriceEdit.Text,
                                           {Ram Info}          edRamNameEdit.Text,edRamMarkEdit.Text,lbledSelRamEdit.Text,edRamCountEdit.Text,edRamPriceEdit.Text,
                                           {Hard Info}         edHardNameEdit.Text,edHardMarkEdit.Text,lbledSelHardEdit.Text,edHardCountEdit.Text,edHardPriceEdit.Text,
                                           {Main Info}         edMBNameEdit.Text,edMBMarkEdit.Text,lbledSelMbEdit.Text,edMBCountEdit.Text,edMBPriceEdit.Text,
                                           {Monitor Info}      edMonitorNameEdit.Text,edMonitorMarkEdit.Text,lbledSelMonitorEdit.Text,edMonitorCountEdit.Text,edMonitorPriceEdit.Text,
                                           {Case Info}         edCaseNameEdit.Text,edCaseMarkEdit.Text,lbledSelCaseEdit.Text,edCaseCountEdit.Text,edCasePriceEdit.Text,
                                           {CDR Info}          edCDRNameEdit.Text,edCDRMarkEdit.Text,lbledSelCdRomEdit.Text,edCDRCountEdit.Text,edCDRPriceEdit.Text,
                                           {CDw Info}          edCDWNameEdit.Text,edCDWMarkEdit.Text,lbledSelCdWriterEdit.Text,edCDWCountEdit.Text,edCDWPriceEdit.Text,
                                           {DVDr Info}         edDVDRNameEdit.Text,edDVDRMarkEdit.Text,lbledSelDvdRomEdit.Text,edDVDRCountEdit.Text,edDVDRPriceEdit.Text,
                                           {DVDw Info}         edDVDWNameEdit.Text,edDVDWMarkEdit.Text,lbledSelDvdWriterEdit.Text,edDVDWCountEdit.Text,edDVDWPriceEdit.Text,
                                           {Spk Info}          edSPNameEdit.Text,edSPMarkEdit.Text,lbledSelSpeakerEdit.Text,edSPCountEdit.Text,edSPPriceEdit.Text,
                                           {KYB Info}          edKeyBNameEdit.Text,edKeyBMarkEdit.Text,lbledSelKeyBoardEdit.Text,edKeyBCountEdit.Text,edKeyBPriceEdit.Text,
                                           {Mouse Info}        edMouseNameEdit.Text,edMouseMarkEdit.Text,lbledSelMouseEdit.Text,edMouseCountEdit.Text,edMousePriceEdit.Text,
                                           {Sound Info}        edSoundNameEdit.Text,edSoundMarkEdit.Text,lbledSelSoundEdit.Text,edSoundCountEdit.Text,edSoundPriceEdit.Text,
                                           {VGA Info}          edVGANameEdit.Text,edVGAMarkEdit.Text,lbledSelVGAEdit.Text,edVGACountEdit.Text,edVGAPriceEdit.Text,
                                           {SCN Info}          edScannerNameEdit.Text,edScannerMarkEdit.Text,lbledSelScannerEdit.Text,edScannerCountEdit.Text,edScannerPriceEdit.Text,
                                           {PRN Info}          edPrinterNameEdit.Text,edPrinterMarkEdit.Text,lbledSelPrinterEdit.Text,edPrinterCountEdit.Text,edPrinterPriceEdit.Text,
                                           {TVC info}          edTVCNameEdit.Text,edTVCMarkEdit.Text,lbledSelTvCardEdit.Text,edTVCCountEdit.Text,edTVCPriceEdit.Text,
                                           {LanC Info}         edLANCNameEdit.Text,edLANCMarkEdit.Text,lbledSelLanCardEdit.Text,edLANCCountEdit.Text,edLANCPriceEdit.Text,
                                           {Modem Info}        edModemNameEdit.Text,edModemMarkEdit.Text,lbledSelModemEdit.Text,edModemCountEdit.Text,edModemPriceEdit.Text,
                                           {WebCam Info}       edWebCamNameEdit.Text,edWebCamMarkEdit.Text,lbledSelWebCamEdit.Text,edWebCamCountEdit.Text,edWebCamPriceEdit.Text,
                                           {HSet info}         edHSetNameEdit.Text,edHSetMarkEdit.Text,lbledSelHeadSetEdit.Text,edHSetCountEdit.Text,edHSetPriceEdit.Text,
                                           {MCic info}         edMcNameEdit.Text,edMcMarkEdit.Text,lbledSelMicroPhoneEdit.Text,edMcCountEdit.Text,edMcPriceEdit.Text,
                                           {Ups Info}          edUPSNameEdit.Text,edUPSMarkEdit.Text,lbledSelUPSEdit.Text,edUPSCountEdit.Text,edUPSPriceEdit.Text,
                                           {sw info}           edSwNameEdit.Text,edSwMarkEdit.Text,lbledSelSwitchEdit.Text,edSwCountEdit.Text,edSwPriceEdit.Text,
                                           {FDD Info}          edFDDNameEdit.Text,edFDDMarkEdit.Text,lbledSelFloppyEdit.Text,edFDDCountEdit.Text,edFDDPriceEdit.Text,
                                           {ZipDrive info}     edZDriveNameEdit.Text,edZDriveMarkEdit.Text,lbledSelZipDriveEdit.Text,edZDriveCountEdit.Text,edZDrivePriceEdit.Text,
                                           {Extra info}        edExtraNameEdit.Text,edExtraMarkEdit.Text,lbledSelExtraEdit.Text,edExtraCountEdit.Text,edExtraPriceEdit.Text,
                                           {GP info}           cmbpardakhtKindEdit.Text,redGPCommentsEdit.Text,
                                           {Naghd info}        nLbledTotalGPedit.Text,NlbledPishPardakhtEdit.Text,NlbledVarantyPriceedit.Text,NlbledAsembelPriceEdit.Text,NlbledTakhfifEdit.Text,NlbledMandeEdit.Text,NPayDateEdit.Date,NredCommentsEdit.Text);
                    end;
                  1:
                    begin
                         if CheckData(False) Then
                                 UpdateAValueS(lbledSelOrder.Text,lbledFactorNoEdit.Text,SellDateEdit.Date,lbledCountEdit.Text,lbledCustomerEdit.Text,True,redCommentsEdit.Text,
                                               {Cpu Info}          edCpuNameEdit.Text,edCpuMarkEdit.Text,lbledSelCpuEdit.Text,edCpuCountEdit.Text,edCpuPriceEdit.Text,
                                               {Ram Info}          edRamNameEdit.Text,edRamMarkEdit.Text,lbledSelRamEdit.Text,edRamCountEdit.Text,edRamPriceEdit.Text,
                                               {Hard Info}         edHardNameEdit.Text,edHardMarkEdit.Text,lbledSelHardEdit.Text,edHardCountEdit.Text,edHardPriceEdit.Text,
                                               {Main Info}         edMBNameEdit.Text,edMBMarkEdit.Text,lbledSelMbEdit.Text,edMBCountEdit.Text,edMBPriceEdit.Text,
                                               {Monitor Info}      edMonitorNameEdit.Text,edMonitorMarkEdit.Text,lbledSelMonitorEdit.Text,edMonitorCountEdit.Text,edMonitorPriceEdit.Text,
                                               {Case Info}         edCaseNameEdit.Text,edCaseMarkEdit.Text,lbledSelCaseEdit.Text,edCaseCountEdit.Text,edCasePriceEdit.Text,
                                               {CDR Info}          edCDRNameEdit.Text,edCDRMarkEdit.Text,lbledSelCdRomEdit.Text,edCDRCountEdit.Text,edCDRPriceEdit.Text,
                                               {CDw Info}          edCDWNameEdit.Text,edCDWMarkEdit.Text,lbledSelCdWriterEdit.Text,edCDWCountEdit.Text,edCDWPriceEdit.Text,
                                               {DVDr Info}         edDVDRNameEdit.Text,edDVDRMarkEdit.Text,lbledSelDvdRomEdit.Text,edDVDRCountEdit.Text,edDVDRPriceEdit.Text,
                                               {DVDw Info}         edDVDWNameEdit.Text,edDVDWMarkEdit.Text,lbledSelDvdWriterEdit.Text,edDVDWCountEdit.Text,edDVDWPriceEdit.Text,
                                               {Spk Info}          edSPNameEdit.Text,edSPMarkEdit.Text,lbledSelSpeakerEdit.Text,edSPCountEdit.Text,edSPPriceEdit.Text,
                                               {KYB Info}          edKeyBNameEdit.Text,edKeyBMarkEdit.Text,lbledSelKeyBoardEdit.Text,edKeyBCountEdit.Text,edKeyBPriceEdit.Text,
                                               {Mouse Info}        edMouseNameEdit.Text,edMouseMarkEdit.Text,lbledSelMouseEdit.Text,edMouseCountEdit.Text,edMousePriceEdit.Text,
                                               {Sound Info}        edSoundNameEdit.Text,edSoundMarkEdit.Text,lbledSelSoundEdit.Text,edSoundCountEdit.Text,edSoundPriceEdit.Text,
                                               {VGA Info}          edVGANameEdit.Text,edVGAMarkEdit.Text,lbledSelVGAEdit.Text,edVGACountEdit.Text,edVGAPriceEdit.Text,
                                               {SCN Info}          edScannerNameEdit.Text,edScannerMarkEdit.Text,lbledSelScannerEdit.Text,edScannerCountEdit.Text,edScannerPriceEdit.Text,
                                               {PRN Info}          edPrinterNameEdit.Text,edPrinterMarkEdit.Text,lbledSelPrinterEdit.Text,edPrinterCountEdit.Text,edPrinterPriceEdit.Text,
                                               {TVC info}          edTVCNameEdit.Text,edTVCMarkEdit.Text,lbledSelTvCardEdit.Text,edTVCCountEdit.Text,edTVCPriceEdit.Text,
                                               {LanC Info}         edLANCNameEdit.Text,edLANCMarkEdit.Text,lbledSelLanCardEdit.Text,edLANCCountEdit.Text,edLANCPriceEdit.Text,
                                               {Modem Info}        edModemNameEdit.Text,edModemMarkEdit.Text,lbledSelModemEdit.Text,edModemCountEdit.Text,edModemPriceEdit.Text,
                                               {WebCam Info}       edWebCamNameEdit.Text,edWebCamMarkEdit.Text,lbledSelWebCamEdit.Text,edWebCamCountEdit.Text,edWebCamPriceEdit.Text,
                                               {HSet info}         edHSetNameEdit.Text,edHSetMarkEdit.Text,lbledSelHeadSetEdit.Text,edHSetCountEdit.Text,edHSetPriceEdit.Text,
                                               {MCic info}         edMcNameEdit.Text,edMcMarkEdit.Text,lbledSelMicroPhoneEdit.Text,edMcCountEdit.Text,edMcPriceEdit.Text,
                                               {Ups Info}          edUPSNameEdit.Text,edUPSMarkEdit.Text,lbledSelUPSEdit.Text,edUPSCountEdit.Text,edUPSPriceEdit.Text,
                                               {sw info}           edSwNameEdit.Text,edSwMarkEdit.Text,lbledSelSwitchEdit.Text,edSwCountEdit.Text,edSwPriceEdit.Text,
                                               {FDD Info}          edFDDNameEdit.Text,edFDDMarkEdit.Text,lbledSelFloppyEdit.Text,edFDDCountEdit.Text,edFDDPriceEdit.Text,
                                               {ZipDrive info}     edZDriveNameEdit.Text,edZDriveMarkEdit.Text,lbledSelZipDriveEdit.Text,edZDriveCountEdit.Text,edZDrivePriceEdit.Text,
                                               {Extra info}        edExtraNameEdit.Text,edExtraMarkEdit.Text,lbledSelExtraEdit.Text,edExtraCountEdit.Text,edExtraPriceEdit.Text,
                                               {GP info}           cmbpardakhtKindEdit.Text,redGPCommentsEdit.Text,
                                               {Aghsat info}       AlbledTotalGpEdit.Text,AlbledPishPardakhtEdit.Text,AlbledVarantyPriceEdit.Text,AlbledAsembelPriceEdit.Text,AlbledTakhfifEdit.Text,AlbledMandeEdit.Text,AlbledGhestDayEdit.Text,AlbledGhestPriceEdit.Text,APayDateEdit.Date,AStartDateEdit.Date,AEndDateEdit.Date,AredComments.Text);
                    end;
                  2:
                    begin
                         if CheckData(False) Then
                                 UpdateCValueS(lbledSelOrder.Text,lbledFactorNoEdit.Text,SellDateEdit.Date,lbledCountEdit.Text,lbledCustomerEdit.Text,True,redCommentsEdit.Text,
                                               {Cpu Info}          edCpuNameEdit.Text,edCpuMarkEdit.Text,lbledSelCpuEdit.Text,edCpuCountEdit.Text,edCpuPriceEdit.Text,
                                               {Ram Info}          edRamNameEdit.Text,edRamMarkEdit.Text,lbledSelRamEdit.Text,edRamCountEdit.Text,edRamPriceEdit.Text,
                                               {Hard Info}         edHardNameEdit.Text,edHardMarkEdit.Text,lbledSelHardEdit.Text,edHardCountEdit.Text,edHardPriceEdit.Text,
                                               {Main Info}         edMBNameEdit.Text,edMBMarkEdit.Text,lbledSelMbEdit.Text,edMBCountEdit.Text,edMBPriceEdit.Text,
                                               {Monitor Info}      edMonitorNameEdit.Text,edMonitorMarkEdit.Text,lbledSelMonitorEdit.Text,edMonitorCountEdit.Text,edMonitorPriceEdit.Text,
                                               {Case Info}         edCaseNameEdit.Text,edCaseMarkEdit.Text,lbledSelCaseEdit.Text,edCaseCountEdit.Text,edCasePriceEdit.Text,
                                               {CDR Info}          edCDRNameEdit.Text,edCDRMarkEdit.Text,lbledSelCdRomEdit.Text,edCDRCountEdit.Text,edCDRPriceEdit.Text,
                                               {CDw Info}          edCDWNameEdit.Text,edCDWMarkEdit.Text,lbledSelCdWriterEdit.Text,edCDWCountEdit.Text,edCDWPriceEdit.Text,
                                               {DVDr Info}         edDVDRNameEdit.Text,edDVDRMarkEdit.Text,lbledSelDvdRomEdit.Text,edDVDRCountEdit.Text,edDVDRPriceEdit.Text,
                                               {DVDw Info}         edDVDWNameEdit.Text,edDVDWMarkEdit.Text,lbledSelDvdWriterEdit.Text,edDVDWCountEdit.Text,edDVDWPriceEdit.Text,
                                               {Spk Info}          edSPNameEdit.Text,edSPMarkEdit.Text,lbledSelSpeakerEdit.Text,edSPCountEdit.Text,edSPPriceEdit.Text,
                                               {KYB Info}          edKeyBNameEdit.Text,edKeyBMarkEdit.Text,lbledSelKeyBoardEdit.Text,edKeyBCountEdit.Text,edKeyBPriceEdit.Text,
                                               {Mouse Info}        edMouseNameEdit.Text,edMouseMarkEdit.Text,lbledSelMouseEdit.Text,edMouseCountEdit.Text,edMousePriceEdit.Text,
                                               {Sound Info}        edSoundNameEdit.Text,edSoundMarkEdit.Text,lbledSelSoundEdit.Text,edSoundCountEdit.Text,edSoundPriceEdit.Text,
                                               {VGA Info}          edVGANameEdit.Text,edVGAMarkEdit.Text,lbledSelVGAEdit.Text,edVGACountEdit.Text,edVGAPriceEdit.Text,
                                               {SCN Info}          edScannerNameEdit.Text,edScannerMarkEdit.Text,lbledSelScannerEdit.Text,edScannerCountEdit.Text,edScannerPriceEdit.Text,
                                               {PRN Info}          edPrinterNameEdit.Text,edPrinterMarkEdit.Text,lbledSelPrinterEdit.Text,edPrinterCountEdit.Text,edPrinterPriceEdit.Text,
                                               {TVC info}          edTVCNameEdit.Text,edTVCMarkEdit.Text,lbledSelTvCardEdit.Text,edTVCCountEdit.Text,edTVCPriceEdit.Text,
                                               {LanC Info}         edLANCNameEdit.Text,edLANCMarkEdit.Text,lbledSelLanCardEdit.Text,edLANCCountEdit.Text,edLANCPriceEdit.Text,
                                               {Modem Info}        edModemNameEdit.Text,edModemMarkEdit.Text,lbledSelModemEdit.Text,edModemCountEdit.Text,edModemPriceEdit.Text,
                                               {WebCam Info}       edWebCamNameEdit.Text,edWebCamMarkEdit.Text,lbledSelWebCamEdit.Text,edWebCamCountEdit.Text,edWebCamPriceEdit.Text,
                                               {HSet info}         edHSetNameEdit.Text,edHSetMarkEdit.Text,lbledSelHeadSetEdit.Text,edHSetCountEdit.Text,edHSetPriceEdit.Text,
                                               {MCic info}         edMcNameEdit.Text,edMcMarkEdit.Text,lbledSelMicroPhoneEdit.Text,edMcCountEdit.Text,edMcPriceEdit.Text,
                                               {Ups Info}          edUPSNameEdit.Text,edUPSMarkEdit.Text,lbledSelUPSEdit.Text,edUPSCountEdit.Text,edUPSPriceEdit.Text,
                                               {sw info}           edSwNameEdit.Text,edSwMarkEdit.Text,lbledSelSwitchEdit.Text,edSwCountEdit.Text,edSwPriceEdit.Text,
                                               {FDD Info}          edFDDNameEdit.Text,edFDDMarkEdit.Text,lbledSelFloppyEdit.Text,edFDDCountEdit.Text,edFDDPriceEdit.Text,
                                               {ZipDrive info}     edZDriveNameEdit.Text,edZDriveMarkEdit.Text,lbledSelZipDriveEdit.Text,edZDriveCountEdit.Text,edZDrivePriceEdit.Text,
                                               {Extra info}        edExtraNameEdit.Text,edExtraMarkEdit.Text,lbledSelExtraEdit.Text,edExtraCountEdit.Text,edExtraPriceEdit.Text,
                                               {GP info}           cmbpardakhtKindEdit.Text,redGPCommentsEdit.Text,
                                               {Check info}        clbledTotalGpEdit.Text,ClbledPishPardakhtEdit.Text,ClbledVarantyPriceEdit.Text,ClbledAsembelPriceEdit.Text,ClbledTakhfifEdit.Text,ClbledMandeEdit.Text,ClbledMablaghEdit.Text,CPayDateEdit.Date,CheckPayDateEdit.Date,CheckVosolDateEdit.Date,ClbledCheckNoEdit.Text,ClbledBankNameEdit.Text,ClbledBankAddressEdit.Text,CredCommentsEdit.Text,chbForZemanatEdit.Checked);
                    end;
             end;//end of case
     end;
     if CheckData(False) Then
     begin
        ClearAllTextBox;
        clearAllDate;
     end;
end;

procedure TfmSellSystem.btnDelClick(Sender: TObject);
begin
     if fmDMmain.YesNoDialog.Show('¬Ì« «ÿ„Ì‰«‰ œ«—Ìœ ø',HbtWarning) Then
        fmDMmain.tblOrder.Delete;
end;

function TfmSellSystem.Calc(ForInsert:Boolean): String;
var
   thisResult : Double;
begin
     thisResult := 0.0;
     if ForInsert Then
     begin
          if lbledSelCpu.Text<>'' Then
          begin
               if edCpuCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Cpu'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edCpuCount.SetFocus;
                  Exit;
               end;
               if edCpuPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Cpu'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edCpuPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edCpuCount.Text)*StrToFloat(edCpuPrice.Text);
          end;
          if lbledSelRam.Text<>'' Then
          begin
               if edRamCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'RAM'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edRamCount.SetFocus;
                  Exit;
               end;
               if edRamPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'RAM'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edRamPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edRamCount.Text)*StrToFloat(edRamPrice.Text);
          end;
          if lbledSelHard.Text<>'' Then
          begin
               if edHardCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Hard'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edHardCount.SetFocus;
                  Exit;
               end;
               if edHardPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Hard'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edHardPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edHardCount.Text)*StrToFloat(edHardPrice.Text);
          end;
          if lbledSelMb.Text<>'' Then
          begin
               if edMbCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Main Board'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edMbCount.SetFocus;
                  Exit;
               end;
               if edMBPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Main Board'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edMBPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edMbCount.Text)*StrToFloat(edMBPrice.Text);
          end;
          if lbledSelMonitor.Text<>'' Then
          begin
               if edMonitorCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Monitor'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edMonitorCount.SetFocus;
                  Exit;
               end;
               if edMonitorPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Monitor'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edMonitorPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edMonitorCount.Text)*StrToFloat(edMonitorPrice.Text);
          end;
          if lbledSelCase.Text<>'' Then
          begin
               if edCaseCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Case'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edCaseCount.SetFocus;
                  Exit;
               end;
               if edCpuPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Case'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edCasePrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edCaseCount.Text)*StrToFloat(edCasePrice.Text);
          end;
          if lbledSelCdRom.Text<>'' Then
          begin
               if edCDRCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'CDR'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edCDRCount.SetFocus;
                  Exit;
               end;
               if edCDRPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'CDR'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edCDRPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edCDRCount.Text)*StrToFloat(edCDRPrice.Text);
          end;
          if lbledSelCdWriter.Text<>'' Then
          begin
               if edCDWCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'CDW'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edCDWCount.SetFocus;
                  Exit;
               end;
               if edCDWPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'CDW'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edCDWPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edCDWCount.Text)*StrToFloat(edCDWPrice.Text);
          end;
          if lbledSelDvdRom.Text<>'' Then
          begin
               if edDVDRCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'DVDR'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edDVDRCount.SetFocus;
                  Exit;
               end;
               if edDVDRPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'DVDR'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edDVDRPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edDVDRCount.Text)*StrToFloat(edDVDRPrice.Text);
          end;
          if lbledSelDvdWriter.Text<>'' Then
          begin
               if edDVDWCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'DVDW'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edDVDWCount.SetFocus;
                  Exit;
               end;
               if edDVDWPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'DVDW'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edDVDWPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edDVDWCount.Text)*StrToFloat(edDVDWPrice.Text);
          end;
          if lbledSelSpeaker.Text<>'' Then
          begin
               if edSPCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Speaker'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edSPCount.SetFocus;
                  Exit;
               end;
               if edSPPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Speaker'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edSPPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edSPCount.Text)*StrToFloat(edSPPrice.Text);
          end;
          if lbledSelKeyBoard.Text<>'' Then
          begin
               if edKeyBCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'KeyBoard'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edKeyBCount.SetFocus;
                  Exit;
               end;
               if edKeyBPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'KeyBoard'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edKeyBPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edKeyBCount.Text)*StrToFloat(edKeyBPrice.Text);
          end;
          if lbledSelMouse.Text<>'' Then
          begin
               if edMouseCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Mouse'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edMouseCount.SetFocus;
                  Exit;
               end;
               if edMousePrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Mouse'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edMousePrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edMouseCount.Text)*StrToFloat(edMousePrice.Text);
          end;
          if lbledSelSound.Text<>'' Then
          begin
               if edSoundCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Sound'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edSoundCount.SetFocus;
                  Exit;
               end;
               if edCpuPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Sound'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edSoundPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edSoundCount.Text)*StrToFloat(edSoundPrice.Text);
          end;
          if lbledSelVGA.Text<>'' Then
          begin
               if edVGACount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'VGA'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edVGACount.SetFocus;
                  Exit;
               end;
               if edVGAPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'VGA'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edVGAPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edVGACount.Text)*StrToFloat(edVGAPrice.Text);
          end;
          if lbledSelScanner.Text<>'' Then
          begin
               if edScannerCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Scanner'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edScannerCount.SetFocus;
                  Exit;
               end;
               if edScannerPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Scanner'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edScannerPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edScannerCount.Text)*StrToFloat(edScannerPrice.Text);
          end;
          if lbledSelPrinter.Text<>'' Then
          begin
               if edPrinterCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Printer'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edPrinterCount.SetFocus;
                  Exit;
               end;
               if edPrinterPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Printer'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edPrinterPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edPrinterCount.Text)*StrToFloat(edPrinterPrice.Text);
          end;
          if lbledSelTvCard.Text<>'' Then
          begin
               if edTVCCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'TV CARD'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edTVCCount.SetFocus;
                  Exit;
               end;
               if edTVCPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'TV CARD'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edTVCPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edTVCCount.Text)*StrToFloat(edTVCPrice.Text);
          end;
          if lbledSelLanCard.Text<>'' Then
          begin
               if edLANCCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'LAN CARD'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edLANCCount.SetFocus;
                  Exit;
               end;
               if edLANCPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'LAN CARD'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edLANCPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edLANCCount.Text)*StrToFloat(edLANCPrice.Text);
          end;
          if lbledSelModem.Text<>'' Then
          begin
               if edModemCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Modem'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edModemCount.SetFocus;
                  Exit;
               end;
               if edModemPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Modem'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edModemPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edModemCount.Text)*StrToFloat(edModemPrice.Text);
          end;
          if lbledSelWebCam.Text<>'' Then
          begin
               if edWebCamCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Web Cam'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edWebCamCount.SetFocus;
                  Exit;
               end;
               if edWebCamPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Web Cam'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edWebCamPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edWebCamCount.Text)*StrToFloat(edWebCamPrice.Text);
          end;
          if lbledSelHeadSet.Text<>'' Then
          begin
               if edHSetCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'HeadSet'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edHSetPrice.SetFocus;
                  Exit;
               end;
               if edHSetPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'HeadSet'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edHSetPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edHSetCount.Text)*StrToFloat(edHSetPrice.Text);
          end;
          if lbledSelMicroPhone.Text<>'' Then
          begin
               if edMcCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Microphone'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edMcCount.SetFocus;
                  Exit;
               end;
               if edMcPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Microphone'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edMcPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edMcPrice.Text)*StrToFloat(edMcCount.Text);
          end;
          if lbledSelUPS.Text<>'' Then
          begin
               if edUPSCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'UPS'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edUPSCount.SetFocus;
                  Exit;
               end;
               if edUPSPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'UPS'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edUPSPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edUPSCount.Text)*StrToFloat(edUPSPrice.Text);
          end;
          if lbledSelSwitch.Text<>'' Then
          begin
               if edSwCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Switch'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edSwCount.SetFocus;
                  Exit;
               end;
               if edSwPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Switch'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edSwPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edSwCount.Text)*StrToFloat(edSwPrice.Text);
          end;
          if lbledSelFloppy.Text<>'' Then
          begin
               if edFDDCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Floppy'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edFDDCount.SetFocus;
                  Exit;
               end;
               if edFDDPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Floppy'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edFDDPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edFDDCount.Text)*StrToFloat(edFDDPrice.Text);
          end;
          if lbledSelZipDrive.Text<>'' Then
          begin
               if edZDriveCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'ZIP Drive'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edZDriveCount.SetFocus;
                  Exit;
               end;
               if edZDrivePrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'ZIP Drive'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edZDrivePrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edZDriveCount.Text)*StrToFloat(edZDrivePrice.Text);
          end;
          if lbledSelExtra.Text<>'' Then
          begin
               if edExtraCount.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'ﬁÿ⁄Â «÷«›Ì'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edExtraCount.SetFocus;
                  Exit;
               end;
               if edExtraPrice.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'ﬁÿ⁄Â «÷«›Ì'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edExtraPrice.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edExtraCount.Text)*StrToFloat(edExtraPrice.Text);
          end;
     end
     //----------------------------------------------------------------------------
     else
     begin
          if lbledSelCpuEdit.Text<>'' Then
          begin
               if edCpuCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Cpu'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edCpuCountEdit.SetFocus;
                  Exit;
               end;
               if edCpuPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Cpu'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edCpuPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edCpuCountEdit.Text)*StrToFloat(edCpuPriceEdit.Text);
          end;
          if lbledSelRamEdit.Text<>'' Then
          begin
               if edRamCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'RAM'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edRamCountEdit.SetFocus;
                  Exit;
               end;
               if edRamPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'RAM'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edRamPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edRamCountEdit.Text)*StrToFloat(edRamPriceEdit.Text);
          end;
          if lbledSelHardEdit.Text<>'' Then
          begin
               if edHardCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Hard'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edHardCountEdit.SetFocus;
                  Exit;
               end;
               if edHardPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Hard'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edHardPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edHardCountEdit.Text)*StrToFloat(edHardPriceEdit.Text);
          end;
          if lbledSelMbEdit.Text<>'' Then
          begin
               if edMbCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Main Board'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edMbCountEdit.SetFocus;
                  Exit;
               end;
               if edMBPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Main Board'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edMBPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edMbCountEdit.Text)*StrToFloat(edMBPriceEdit.Text);
          end;
          if lbledSelMonitorEdit.Text<>'' Then
          begin
               if edMonitorCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Monitor'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edMonitorCountEdit.SetFocus;
                  Exit;
               end;
               if edMonitorPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Monitor'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edMonitorPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edMonitorCountEdit.Text)*StrToFloat(edMonitorPriceEdit.Text);
          end;
          if lbledSelCaseEdit.Text<>'' Then
          begin
               if edCaseCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Case'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edCaseCountEdit.SetFocus;
                  Exit;
               end;
               if edCpuPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Case'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edCasePriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edCaseCountEdit.Text)*StrToFloat(edCasePriceEdit.Text);
          end;
          if lbledSelCdRomEdit.Text<>'' Then
          begin
               if edCDRCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'CDR'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edCDRCountEdit.SetFocus;
                  Exit;
               end;
               if edCDRPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'CDR'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edCDRPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edCDRCountEdit.Text)*StrToFloat(edCDRPriceEdit.Text);
          end;
          if lbledSelCdWriterEdit.Text<>'' Then
          begin
               if edCDWCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'CDW'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edCDWCountEdit.SetFocus;
                  Exit;
               end;
               if edCDWPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'CDW'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edCDWPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edCDWCountEdit.Text)*StrToFloat(edCDWPriceEdit.Text);
          end;
          if lbledSelDvdRomEdit.Text<>'' Then
          begin
               if edDVDRCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'DVDR'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edDVDRCountEdit.SetFocus;
                  Exit;
               end;
               if edDVDRPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'DVDR'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edDVDRPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edDVDRCountEdit.Text)*StrToFloat(edDVDRPriceEdit.Text);
          end;
          if lbledSelDvdWriterEdit.Text<>'' Then
          begin
               if edDVDWCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'DVDW'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edDVDWCountEdit.SetFocus;
                  Exit;
               end;
               if edDVDWPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'DVDW'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edDVDWPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edDVDWCountEdit.Text)*StrToFloat(edDVDWPriceEdit.Text);
          end;
          if lbledSelSpeakerEdit.Text<>'' Then
          begin
               if edSPCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Speaker'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edSPCountEdit.SetFocus;
                  Exit;
               end;
               if edSPPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Speaker'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edSPPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edSPCountEdit.Text)*StrToFloat(edSPPriceEdit.Text);
          end;
          if lbledSelKeyBoardEdit.Text<>'' Then
          begin
               if edKeyBCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'KeyBoard'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edKeyBCountEdit.SetFocus;
                  Exit;
               end;
               if edKeyBPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'KeyBoard'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edKeyBPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edKeyBCountEdit.Text)*StrToFloat(edKeyBPriceEdit.Text);
          end;
          if lbledSelMouseEdit.Text<>'' Then
          begin
               if edMouseCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Mouse'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edMouseCountEdit.SetFocus;
                  Exit;
               end;
               if edMousePriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Mouse'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edMousePriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edMouseCountEdit.Text)*StrToFloat(edMousePriceEdit.Text);
          end;
          if lbledSelSoundEdit.Text<>'' Then
          begin
               if edSoundCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Sound'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edSoundCountEdit.SetFocus;
                  Exit;
               end;
               if edCpuPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Sound'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edSoundPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edSoundCountEdit.Text)*StrToFloat(edSoundPriceEdit.Text);
          end;
          if lbledSelVGAEdit.Text<>'' Then
          begin
               if edVGACountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'VGA'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edVGACountEdit.SetFocus;
                  Exit;
               end;
               if edVGAPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'VGA'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edVGAPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edVGACountEdit.Text)*StrToFloat(edVGAPriceEdit.Text);
          end;
          if lbledSelScannerEdit.Text<>'' Then
          begin
               if edScannerCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Scanner'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edScannerCountEdit.SetFocus;
                  Exit;
               end;
               if edScannerPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Scanner'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edScannerPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edScannerCountEdit.Text)*StrToFloat(edScannerPriceEdit.Text);
          end;
          if lbledSelPrinterEdit.Text<>'' Then
          begin
               if edPrinterCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Printer'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edPrinterCountEdit.SetFocus;
                  Exit;
               end;
               if edPrinterPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Printer'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edPrinterPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edPrinterCountEdit.Text)*StrToFloat(edPrinterPriceEdit.Text);
          end;
          if lbledSelTvCardEdit.Text<>'' Then
          begin
               if edTVCCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'TV CARD'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edTVCCountEdit.SetFocus;
                  Exit;
               end;
               if edTVCPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'TV CARD'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edTVCPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edTVCCountEdit.Text)*StrToFloat(edTVCPriceEdit.Text);
          end;
          if lbledSelLanCardEdit.Text<>'' Then
          begin
               if edLANCCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'LAN CARD'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edLANCCountEdit.SetFocus;
                  Exit;
               end;
               if edLANCPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'LAN CARD'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edLANCPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edLANCCountEdit.Text)*StrToFloat(edLANCPriceEdit.Text);
          end;
          if lbledSelModemEdit.Text<>'' Then
          begin
               if edModemCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Modem'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edModemCountEdit.SetFocus;
                  Exit;
               end;
               if edModemPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Modem'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edModemPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edModemCountEdit.Text)*StrToFloat(edModemPriceEdit.Text);
          end;
          if lbledSelWebCamEdit.Text<>'' Then
          begin
               if edWebCamCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Web Cam'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edWebCamCountEdit.SetFocus;
                  Exit;
               end;
               if edWebCamPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Web Cam'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edWebCamPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edWebCamCountEdit.Text)*StrToFloat(edWebCamPriceEdit.Text);
          end;
          if lbledSelHeadSetEdit.Text<>'' Then
          begin
               if edHSetCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'HeadSet'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edHSetPriceEdit.SetFocus;
                  Exit;
               end;
               if edHSetPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'HeadSet'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edHSetPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edHSetCountEdit.Text)*StrToFloat(edHSetPriceEdit.Text);
          end;
          if lbledSelMicroPhoneEdit.Text<>'' Then
          begin
               if edMcCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Microphone'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edMcCountEdit.SetFocus;
                  Exit;
               end;
               if edMcPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Microphone'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edMcPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edMcPriceEdit.Text)*StrToFloat(edMcCountEdit.Text);
          end;
          if lbledSelUPSEdit.Text<>'' Then
          begin
               if edUPSCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'UPS'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edUPSCountEdit.SetFocus;
                  Exit;
               end;
               if edUPSPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'UPS'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edUPSPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edUPSCountEdit.Text)*StrToFloat(edUPSPriceEdit.Text);
          end;
          if lbledSelSwitchEdit.Text<>'' Then
          begin
               if edSwCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Switch'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edSwCountEdit.SetFocus;
                  Exit;
               end;
               if edSwPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Switch'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edSwPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edSwCountEdit.Text)*StrToFloat(edSwPriceEdit.Text);
          end;
          if lbledSelFloppyEdit.Text<>'' Then
          begin
               if edFDDCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'Floppy'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edFDDCountEdit.SetFocus;
                  Exit;
               end;
               if edFDDPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'Floppy'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edFDDPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edFDDCountEdit.Text)*StrToFloat(edFDDPriceEdit.Text);
          end;
          if lbledSelZipDriveEdit.Text<>'' Then
          begin
               if edZDriveCountEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'ZIP Drive'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edZDriveCountEdit.SetFocus;
                  Exit;
               end;
               if edZDrivePriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'ZIP Drive'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edZDrivePriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edZDriveCountEdit.Text)*StrToFloat(edZDrivePriceEdit.Text);
          end;
          if lbledSelExtraEdit.Text<>'' Then
          begin
               if edExtraNameEdit.Text ='' Then
               begin
                  fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ '+' '+'ﬁÿ⁄Â «÷«›Ì'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                  edExtraCountEdit.SetFocus;
                  Exit;
               end;
               if edExtraPriceEdit.Text = '' Then
               begin
                 fmDMmain.MessageDialog.Show('·ÿ›« ﬁÌ„  Ê«Õœ »—«Ì'+' '+'ﬁÿ⁄Â «÷«›Ì'+' '+'—« „‘Œ’ ò‰Ìœ',HbtError);
                 edExtraPriceEdit.SetFocus;
                 Exit;
               end;
                thisResult := thisResult+StrToFloat(edExtraCountEdit.Text)*StrToFloat(edExtraPriceEdit.Text);
          end;
     end;
     Result := FloatTostr(thisResult);
end;

procedure TfmSellSystem.btnCalcEditClick(Sender: TObject);
Var
   TotalPrice:String;
begin
     TotalPrice := Calc(False);
     lbledTotalCalcEdit.Text := TotalPrice;
     case cmbpardakhtKindEdit.ItemIndex of
          0:nLbledTotalGPedit.Text := TotalPrice;
          1:AlbledTotalGpEdit.Text := TotalPrice;
          2:clbledTotalGpEdit.Text := TotalPrice;
     end;
end;

procedure TfmSellSystem.btnCalc1Click(Sender: TObject);
Var
   TotalPrice:String;
begin
     TotalPrice := Calc(True);
     lbledTotalCalc.Text := TotalPrice;
     case cmbPardakhtKind.ItemIndex of
          0:nLbledTotalGP.Text := TotalPrice;
          1:AlbledTotalGp.Text := TotalPrice;
          2:clbledTotalGp.Text := TotalPrice;
     end;
end;

function TfmSellSystem.CalcMande(ForInsert: Boolean): String;
var
   thisResult : Integer;
begin
     thisResult := 0;
     if ForInsert Then
     begin
          case cmbPardakhtKind.ItemIndex of
               0:
                 begin
                      thisResult := StrToInt(nLbledTotalGP.Text)- StrToInt(NlbledPishPardakht.Text)- StrToInt(NlbledVarantyPrice.Text)- StrToInt(NlbledAsembelPrice.Text)- StrToInt(NlbledTakhfif.Text);
                 end;
               1:
                 begin
                      thisResult := StrToInt(ALbledTotalGP.Text)- StrToInt(AlbledPishPardakht.Text)- StrToInt(AlbledVarantyPrice.Text)- StrToInt(AlbledAsembelPrice.Text)- StrToInt(AlbledTakhfif.Text);
                 end;
               2:
                 begin
                      thisResult := StrToInt(CLbledTotalGP.Text)- StrToInt(ClbledPishPardakht.Text)- StrToInt(ClbledVarantyPrice.Text)- StrToInt(ClbledAsembelPrice.Text)- StrToInt(ClbledTakhfif.Text);
                 end;
          end;
     end
     else
     begin
          case cmbPardakhtKindEdit.ItemIndex of
               0:
                 begin
                      thisResult := StrToInt(nLbledTotalGPEdit.Text)- StrToInt(NlbledPishPardakhtEdit.Text)- StrToInt(NlbledVarantyPriceEdit.Text)- StrToInt(NlbledAsembelPriceEdit.Text)- StrToInt(NlbledTakhfifEdit.Text);
                 end;
               1:
                 begin
                      thisResult := StrToInt(ALbledTotalGPEdit.Text)- StrToInt(AlbledPishPardakhtEdit.Text)- StrToInt(AlbledVarantyPriceEdit.Text)- StrToInt(AlbledAsembelPriceEdit.Text)- StrToInt(AlbledTakhfifEdit.Text);
                 end;
               2:
                 begin
                      thisResult := StrToInt(CLbledTotalGPEdit.Text)- StrToInt(ClbledPishPardakhtEdit.Text)- StrToInt(ClbledVarantyPriceEdit.Text)- StrToInt(ClbledAsembelPriceEdit.Text)- StrToInt(ClbledTakhfifEdit.Text);
                 end;
          end;
     end;
     Result := inttostr(thisResult);
end;

procedure TfmSellSystem.NlbledTakhfifEditExit(Sender: TObject);
begin
     if NlbledTakhfifEdit.Text = '' Then
        NlbledTakhfifEdit.Text := '0';
     NlbledMandeEdit.Text := CalcMande(False);
end;

procedure TfmSellSystem.AlbledTakhfifEditExit(Sender: TObject);
begin
     if AlbledTakhfif.Text = '' Then
        AlbledTakhfif.Text := '0';
     AlbledMandeEdit.Text := CalcMande(False);
end;

procedure TfmSellSystem.ClbledTakhfifEditExit(Sender: TObject);
begin
     ClbledMandeEdit.Text := CalcMande(False);
end;

procedure TfmSellSystem.NlbledTakhfifExit(Sender: TObject);
begin
     if NlbledTakhfif.Text = '' Then
        NlbledTakhfif.Text := '0';
     NlbledMande.Text := CalcMande(True);
end;

procedure TfmSellSystem.AlbledTakhfifExit(Sender: TObject);
begin
     if  AlbledTakhfif.Text = '' Then
         AlbledTakhfif.Text := '0';
      AlbledMande.Text := CalcMande(True);
end;

procedure TfmSellSystem.ClbledTakhfifExit(Sender: TObject);
begin
     if ClbledTakhfif.Text = '' Then
        ClbledTakhfif.Text := '0';
     ClbledMande.Text := CalcMande(True);
end;

procedure TfmSellSystem.BtnSaveNewClick(Sender: TObject);
begin
     with TDefSystemSellOrder Do
     begin
          //if CheckData(True) Then
          case cmbPardakhtKind.ItemIndex of
               0:
                 begin
                    if CheckData(True) Then
                    begin
                      InsertNValues(lbledFactorNo.Text,SellDate.Date,lbledCount.Text,lbledCustomer.Text,True,redComments.Text,
                                   {CpuInfo}                edCpuName.Text,edcpumark.Text,lbledSelCpu.Text,edCpuCount.Text,edCpuPrice.Text,
                                   {RamInfo}                edRamName.Text,edRamMark.Text,lbledSelRam.Text,edRamCount.Text,edRamPrice.Text,
                                   {Hardinfo}               edHardName.Text ,edHardMark.Text,lbledSelHard.Text,edHardCount.Text,edHardPrice.Text,
                                   {MainBoradInfo}          edMBName.Text,edMBMark.Text,lbledSelMb.Text,edMbCount.Text,edMBPrice.Text,
                                   {Monitor Info}           edMonitorName.Text,edMonitorMark.Text,lbledSelMonitor.Text,edMonitorCount.Text,edMonitorPrice.Text,
                                   {case Info}              edCaseName.Text,edCaseMark.Text,lbledSelCase.Text,edCaseCount.Text,edCasePrice.Text,
                                   {CDRom Info}             edCDRName.Text,edCDRMark.Text,lbledSelCdRom.Text,edCDRCount.Text,edCDRPrice.Text,
                                   {CDWriter Info}          edCDWName.Text,edCDWMark.Text,lbledSelCdWriter.Text,edCDWCount.Text,edCDWPrice.Text,
                                   {DVDRom Info}            edDVDRName.Text,edDVDRMark.Text,lbledSelDvdRom.Text,edDVDRCount.Text,edDVDRPrice.Text,
                                   {DVDWriter Info}         edDVDWName.Text,edDVDWMark.Text,lbledSelDvdWriter.Text,edDVDWCount.Text,edDVDWPrice.Text,
                                   {Speaker Info}           edSPName.Text,edSPMark.Text,lbledSelSpeaker.Text,edSPCount.Text,edSPPrice.Text,
                                   {KeyBoard Info}          edKeyBName.Text,edKeyBMark.Text,lbledSelKeyBoard.Text,edSPCount.Text,edSPPrice.Text,
                                   {Mouse info}             edMouseName.Text,edMouseMark.Text,lbledSelMouse.Text,edMouseCount.Text,edMousePrice.Text,
                                   {Sound info}             edSoundName.Text,edSoundMark.Text,lbledSelSound.Text,edSoundCount.Text,edSoundPrice.Text,
                                   {VGA info}               edVGAName.Text,edVGAMark.Text,lbledSelVGA.Text,edVGACount.Text,edVGAPrice.Text,
                                   {Scanner Info}           edScannerName.Text,edScannerMark.Text,lbledSelScanner.Text,edScannerCount.Text,edScannerPrice.Text,
                                   {Printer Info}           edPrinterName.Text,edPrinterMark.Text,lbledSelPrinter.Text,edPrinterCount.Text,edPrinterPrice.Text,
                                   {TvCard Info}            edTVCName.Text,edTVCMark.Text,lbledSelTvCard.Text,edTVCCount.Text,edTVCPrice.Text,
                                   {LanCard Info}           edLANCName.Text,edLANCMark.Text,lbledSelLanCard.Text,edLANCCount.Text,edLANCPrice.Text,
                                   {Modem Info}             edModemName.Text,edModemMark.Text,lbledSelModem.Text,edModemCount.Text,edModemPrice.Text,
                                   {Web cam Info}           edWebCamName.Text,edWebCamMark.Text,lbledSelWebCam.Text,edWebCamCount.Text,edWebCamPrice.Text,
                                   {HeadSet Info}           edHSetName.Text,edHSetMark.Text,lbledSelHeadSet.Text,edHSetCount.Text,edHSetPrice.Text,
                                   {MicroPhone Info}        edMcName.Text,edMcMark.Text,lbledSelMicroPhone.Text,edMcCount.Text,edMcPrice.Text,
                                   {Ups Info}               edUPSName.Text,edUPSMark.Text,lbledSelUPS.Text,edUPSCount.Text,edUPSPrice.Text,
                                   {Switch Info}            edSwName.Text,edSwMark.Text,lbledSelSwitch.Text,edSwCount.Text,edSwPrice.Text,
                                   {Floppy Info}            edFDDName.Text,edFDDMark.Text,lbledSelFloppy.Text,edFDDCount.Text,edFDDPrice.Text,
                                   {Zip Drive Info}         edZDriveName.Text,edZDriveMark.Text,lbledSelZipDrive.Text,edZDriveCount.Text,edZDrivePrice.Text,
                                   {Extra Info}             edExtraName.Text,edExtraMark.Text,lbledSelExtra.Text,edExtraCount.Text,edExtraPrice.Text,
                                   {GP Info}                cmbPardakhtKind.Text,redGPComments.Text,
                                   {Naghd Info}             nLbledTotalGP.Text,NlbledPishPardakht.Text,NlbledVarantyPrice.Text,NlbledAsembelPrice.Text,NlbledTakhfif.Text,NlbledMande.Text,NPayDate.Date,NredComments.Text);
                      fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ‘œ',HbtInformation);
                    end;
                 end;
                 1:
                   begin
                    if CheckData(True) Then
                    begin
                      InsertAValues(lbledFactorNo.Text,SellDate.Date,lbledCount.Text,lbledCustomer.Text,True,redComments.Text,
                                   {CpuInfo}                edCpuName.Text,edcpumark.Text,lbledSelCpu.Text,edCpuCount.Text,edCpuPrice.Text,
                                   {RamInfo}                edRamName.Text,edRamMark.Text,lbledSelRam.Text,edRamCount.Text,edRamPrice.Text,
                                   {Hardinfo}               edHardName.Text ,edHardMark.Text,lbledSelHard.Text,edHardCount.Text,edHardPrice.Text,
                                   {MainBoradInfo}          edMBName.Text,edMBMark.Text,lbledSelMb.Text,edMbCount.Text,edMBPrice.Text,
                                   {Monitor Info}           edMonitorName.Text,edMonitorMark.Text,lbledSelMonitor.Text,edMonitorCount.Text,edMonitorPrice.Text,
                                   {case Info}              edCaseName.Text,edCaseMark.Text,lbledSelCase.Text,edCaseCount.Text,edCasePrice.Text,
                                   {CDRom Info}             edCDRName.Text,edCDRMark.Text,lbledSelCdRom.Text,edCDRCount.Text,edCDRPrice.Text,
                                   {CDWriter Info}          edCDWName.Text,edCDWMark.Text,lbledSelCdWriter.Text,edCDWCount.Text,edCDWPrice.Text,
                                   {DVDRom Info}            edDVDRName.Text,edDVDRMark.Text,lbledSelDvdRom.Text,edDVDRCount.Text,edDVDRPrice.Text,
                                   {DVDWriter Info}         edDVDWName.Text,edDVDWMark.Text,lbledSelDvdWriter.Text,edDVDWCount.Text,edDVDWPrice.Text,
                                   {Speaker Info}           edSPName.Text,edSPMark.Text,lbledSelSpeaker.Text,edSPCount.Text,edSPPrice.Text,
                                   {KeyBoard Info}          edKeyBName.Text,edKeyBMark.Text,lbledSelKeyBoard.Text,edSPCount.Text,edSPPrice.Text,
                                   {Mouse info}             edMouseName.Text,edMouseMark.Text,lbledSelMouse.Text,edMouseCount.Text,edMousePrice.Text,
                                   {Sound info}             edSoundName.Text,edSoundMark.Text,lbledSelSound.Text,edSoundCount.Text,edSoundPrice.Text,
                                   {VGA info}               edVGAName.Text,edVGAMark.Text,lbledSelVGA.Text,edVGACount.Text,edVGAPrice.Text,
                                   {Scanner Info}           edScannerName.Text,edScannerMark.Text,lbledSelScanner.Text,edScannerCount.Text,edScannerPrice.Text,
                                   {Printer Info}           edPrinterName.Text,edPrinterMark.Text,lbledSelPrinter.Text,edPrinterCount.Text,edPrinterPrice.Text,
                                   {TvCard Info}            edTVCName.Text,edTVCMark.Text,lbledSelTvCard.Text,edTVCCount.Text,edTVCPrice.Text,
                                   {LanCard Info}           edLANCName.Text,edLANCMark.Text,lbledSelLanCard.Text,edLANCCount.Text,edLANCPrice.Text,
                                   {Modem Info}             edModemName.Text,edModemMark.Text,lbledSelModem.Text,edModemCount.Text,edModemPrice.Text,
                                   {Web cam Info}           edWebCamName.Text,edWebCamMark.Text,lbledSelWebCam.Text,edWebCamCount.Text,edWebCamPrice.Text,
                                   {HeadSet Info}           edHSetName.Text,edHSetMark.Text,lbledSelHeadSet.Text,edHSetCount.Text,edHSetPrice.Text,
                                   {MicroPhone Info}        edMcName.Text,edMcMark.Text,lbledSelMicroPhone.Text,edMcCount.Text,edMcPrice.Text,
                                   {Ups Info}               edUPSName.Text,edUPSMark.Text,lbledSelUPS.Text,edUPSCount.Text,edUPSPrice.Text,
                                   {Switch Info}            edSwName.Text,edSwMark.Text,lbledSelSwitch.Text,edSwCount.Text,edSwPrice.Text,
                                   {Floppy Info}            edFDDName.Text,edFDDMark.Text,lbledSelFloppy.Text,edFDDCount.Text,edFDDPrice.Text,
                                   {Zip Drive Info}         edZDriveName.Text,edZDriveMark.Text,lbledSelZipDrive.Text,edZDriveCount.Text,edZDrivePrice.Text,
                                   {Extra Info}             edExtraName.Text,edExtraMark.Text,lbledSelExtra.Text,edExtraCount.Text,edExtraPrice.Text,
                                   {GP Info}                cmbPardakhtKind.Text,redGPComments.Text,
                                   {Aghsat Info}            AlbledTotalGp.Text,AlbledPishPardakht.Text,AlbledVarantyPrice.Text,AlbledAsembelPrice.Text,AlbledTakhfif.Text,AlbledMande.Text,AlbledGhestDay.Text,AlbledGhestPrice.Text,APayDate.Date,AStartDate.Date,AEndDate.Date,AredComments.Text);
                      fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ‘œ',HbtInformation);
                    end;


                   end;
                 2:
                   begin
                    if CheckData(True) Then
                    begin
                      InsertCValues(lbledFactorNo.Text,SellDate.Date,lbledCount.Text,lbledCustomer.Text,True,redComments.Text,
                                   {CpuInfo}                edCpuName.Text,edcpumark.Text,lbledSelCpu.Text,edCpuCount.Text,edCpuPrice.Text,
                                   {RamInfo}                edRamName.Text,edRamMark.Text,lbledSelRam.Text,edRamCount.Text,edRamPrice.Text,
                                   {Hardinfo}               edHardName.Text ,edHardMark.Text,lbledSelHard.Text,edHardCount.Text,edHardPrice.Text,
                                   {MainBoradInfo}          edMBName.Text,edMBMark.Text,lbledSelMb.Text,edMbCount.Text,edMBPrice.Text,
                                   {Monitor Info}           edMonitorName.Text,edMonitorMark.Text,lbledSelMonitor.Text,edMonitorCount.Text,edMonitorPrice.Text,
                                   {case Info}              edCaseName.Text,edCaseMark.Text,lbledSelCase.Text,edCaseCount.Text,edCasePrice.Text,
                                   {CDRom Info}             edCDRName.Text,edCDRMark.Text,lbledSelCdRom.Text,edCDRCount.Text,edCDRPrice.Text,
                                   {CDWriter Info}          edCDWName.Text,edCDWMark.Text,lbledSelCdWriter.Text,edCDWCount.Text,edCDWPrice.Text,
                                   {DVDRom Info}            edDVDRName.Text,edDVDRMark.Text,lbledSelDvdRom.Text,edDVDRCount.Text,edDVDRPrice.Text,
                                   {DVDWriter Info}         edDVDWName.Text,edDVDWMark.Text,lbledSelDvdWriter.Text,edDVDWCount.Text,edDVDWPrice.Text,
                                   {Speaker Info}           edSPName.Text,edSPMark.Text,lbledSelSpeaker.Text,edSPCount.Text,edSPPrice.Text,
                                   {KeyBoard Info}          edKeyBName.Text,edKeyBMark.Text,lbledSelKeyBoard.Text,edSPCount.Text,edSPPrice.Text,
                                   {Mouse info}             edMouseName.Text,edMouseMark.Text,lbledSelMouse.Text,edMouseCount.Text,edMousePrice.Text,
                                   {Sound info}             edSoundName.Text,edSoundMark.Text,lbledSelSound.Text,edSoundCount.Text,edSoundPrice.Text,
                                   {VGA info}               edVGAName.Text,edVGAMark.Text,lbledSelVGA.Text,edVGACount.Text,edVGAPrice.Text,
                                   {Scanner Info}           edScannerName.Text,edScannerMark.Text,lbledSelScanner.Text,edScannerCount.Text,edScannerPrice.Text,
                                   {Printer Info}           edPrinterName.Text,edPrinterMark.Text,lbledSelPrinter.Text,edPrinterCount.Text,edPrinterPrice.Text,
                                   {TvCard Info}            edTVCName.Text,edTVCMark.Text,lbledSelTvCard.Text,edTVCCount.Text,edTVCPrice.Text,
                                   {LanCard Info}           edLANCName.Text,edLANCMark.Text,lbledSelLanCard.Text,edLANCCount.Text,edLANCPrice.Text,
                                   {Modem Info}             edModemName.Text,edModemMark.Text,lbledSelModem.Text,edModemCount.Text,edModemPrice.Text,
                                   {Web cam Info}           edWebCamName.Text,edWebCamMark.Text,lbledSelWebCam.Text,edWebCamCount.Text,edWebCamPrice.Text,
                                   {HeadSet Info}           edHSetName.Text,edHSetMark.Text,lbledSelHeadSet.Text,edHSetCount.Text,edHSetPrice.Text,
                                   {MicroPhone Info}        edMcName.Text,edMcMark.Text,lbledSelMicroPhone.Text,edMcCount.Text,edMcPrice.Text,
                                   {Ups Info}               edUPSName.Text,edUPSMark.Text,lbledSelUPS.Text,edUPSCount.Text,edUPSPrice.Text,
                                   {Switch Info}            edSwName.Text,edSwMark.Text,lbledSelSwitch.Text,edSwCount.Text,edSwPrice.Text,
                                   {Floppy Info}            edFDDName.Text,edFDDMark.Text,lbledSelFloppy.Text,edFDDCount.Text,edFDDPrice.Text,
                                   {Zip Drive Info}         edZDriveName.Text,edZDriveMark.Text,lbledSelZipDrive.Text,edZDriveCount.Text,edZDrivePrice.Text,
                                   {Extra Info}             edExtraName.Text,edExtraMark.Text,lbledSelExtra.Text,edExtraCount.Text,edExtraPrice.Text,
                                   {GP Info}                cmbPardakhtKind.Text,redGPComments.Text,
                                   {Check Info}             clbledTotalGp.Text,ClbledPishPardakht.Text,ClbledVarantyPrice.Text,ClbledAsembelPrice.Text,ClbledTakhfif.Text,ClbledMande.Text,ClbledMablagh.Text,CPayDate.Date,CheckPayDate.Date,CheckVosolDate.Date,ClbledCheckNo.Text,ClbledBankName.Text,ClbledBankAddress.Text,CredComments.Text,chbForZemanat.Checked);
                      fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ‘œ',HbtInformation);
                    end;
                   end;
          end;//end of case

     end;
     if CheckData(True) Then
     begin
        ClearAllTextBox;
        clearAllDate;
     end;
     fmDMmain.tblOrder.Refresh;
     lbledFactorNo.SetFocus;
end;

procedure TfmSellSystem.tbsEditEnter(Sender: TObject);
begin
     lbledSelOrder.SetFocus;
end;

procedure TfmSellSystem.clearAllDate;
Var
   i:Integer;
begin
     for i:=0 to componentcount-1 Do
     begin
          if (Components[i] Is THbtDatePicker) Then
          begin
               //(Components[i] As THbtDatePicker).Clear;
               (Components[i] As THbtDatePicker).Date :='';
               (Components[i] As THbtDatePicker).Date := FarsiDate(DateToStr(Now),False);
          end;
     end;
end;

procedure TfmSellSystem.btnDefSellerClick(Sender: TObject);
begin
     lbledCustomer.Text := fmDefCustomer.MyShowModal;
end;

procedure TfmSellSystem.AddBitBtn28Click(Sender: TObject);
begin
     lbledCustomerEdit.Text := fmDefCustomer.MyShowModal;
end;

end.
