unit DMMain;

interface

uses
  SysUtils, Classes, ImgList, Controls, Win32ImageList, DB, DADataSource,Forms,
  ADODB, MADOTable, MADOConnection, HbtMessageDialog,MADoQuery,Dialogs,DateCurrency,
  RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave,MyPreview,HbtFormSetUp;

type
  TfmDMmain = class(TDataModule)
    imgMain: TWin32ImageList;
    cnnMain: TMADOConnection;
    tblGoodsKind: TMADOTable;
    tblGoodsKindxCode_Pk_inc: TAutoIncField;
    tblGoodsKindxGoodsTypeName: TWideStringField;
    //-----------------------------------------------------------------------------
    tblGoods: TMADOTable;
    tblGoodsxGoodsCode_Pk_Inc: TAutoIncField;
    tblGoodsxGoodsKindCode_Fk: TIntegerField;
    tblGoodsxGoodsName: TWideStringField;
    tblGoodsxGoodsMark: TWideStringField;
    tblGoodsxGoodsModel: TWideStringField;
    tblGoodsxComments: TWideStringField;
    //-----------------------------------------------------------------------------
    dsGoodsKind: TDADataSource;
    dsGoods: TDADataSource;
    //-----------------------------------------------------------------------------
    MessageDialog: THbtMessageDialogs;
    YesNoDialog: THbtDialog;
    tblPerson: TMADOTable;
    tblPersonxPersonCode_Pk_AN: TAutoIncField;
    tblPersonxName: TWideStringField;
    tblPersonxFamily: TWideStringField;
    tblPersonxJob: TWideStringField;
    tblPersonxTahsilat: TWideStringField;
    tblPersonxTell1: TWideStringField;
    tblPersonxTell2: TWideStringField;
    tblPersonxMobile: TWideStringField;
    tblPersonxHomeAddress: TWideStringField;
    tblPersonxWorkAddress: TWideStringField;
    tblPersonxComments: TWideStringField;
    dsPerson: TDADataSource;
    tblPersonxIsMarrid: TBooleanField;
    tblPersonxGendor: TBooleanField;
    tblPersonxIsSeller: TBooleanField;
    tblstoreInfo: TMADOTable;
    dsStoreInfo: TDADataSource;
    tblOrderGoodsList: TMADOTable;
    dsOrderGoodsList: TDADataSource;
    dsOrder: TDADataSource;
    tblOrder: TMADOTable;
    tblSystemInfo: TMADOTable;
    dsSystemInfo: TDADataSource;
    tblstoreInfoxCode_Pk_An: TAutoIncField;
    tblstoreInfoxGoodsCode_Fk: TIntegerField;
    tblstoreInfoxGoodsName: TWideStringField;
    tblstoreInfoxGoodsMark: TWideStringField;
    tblstoreInfoxGoodsModel: TWideStringField;
    tblstoreInfoxStoreGoodsCount: TIntegerField;
    tblstoreInfoxComments: TWideStringField;
    tblstoreInfoxBasePrice: TFloatField;
    tblGp: TMADOTable;
    tblGpxGPCode_Pk_AN: TAutoIncField;
    tblGpxOrderCode_Fk: TIntegerField;
    tblGpxGpKind: TWideStringField;
    tblGpxComments: TWideStringField;
    tblNaghd: TMADOTable;
    tblAghsat: TMADOTable;
    tblChecks: TMADOTable;
    tblNaghdxNaghdCode_Pk_AN: TIntegerField;
    tblNaghdxGpCode_Fk: TIntegerField;
    tblNaghdxTotalGP: TFloatField;
    tblNaghdxPishPardakht: TFloatField;
    tblNaghdxvarantyPrice: TFloatField;
    tblNaghdxAsemblePrice: TFloatField;
    tblNaghdxTakhfif: TFloatField;
    tblNaghdxMande: TIntegerField;
    tblNaghdxPayDate: TWideStringField;
    tblNaghdxComment: TWideStringField;
    tblChecksxCheckCode_Pk_AN: TAutoIncField;
    tblChecksxGpCode_Fk: TIntegerField;
    tblChecksxTotalGp: TFloatField;
    tblChecksxPishPardakht: TFloatField;
    tblChecksxVarantyPrice: TFloatField;
    tblChecksxAsembelPrice: TFloatField;
    tblChecksxTakhfif: TFloatField;
    tblChecksxMande: TFloatField;
    tblChecksxCheckNo: TWideStringField;
    tblChecksxCheckPirce: TFloatField;
    tblChecksxCheckVosolDate: TWideStringField;
    tblChecksxCheckTahvilDate: TWideStringField;
    tblChecksxPayDate: TWideStringField;
    tblChecksxCheckBank: TWideStringField;
    tblChecksxBankaddress: TWideStringField;
    tblChecksxIsCheckForZemanat: TBooleanField;
    tblChecksxComments: TWideStringField;
    tblOrderxOrderNo_Pk_AN: TAutoIncField;
    tblOrderxBuyOrderFactorNo: TWideStringField;
    tblOrderxSellFactorNo: TWideStringField;
    tblOrderxDate: TWideStringField;
    tblOrderxCount: TIntegerField;
    tblOrderxPersonCode_Fk: TIntegerField;
    tblOrderxIsSystemOrder: TBooleanField;
    tblOrderxGoodsBasePrice: TFloatField;
    tblOrderxComments: TWideStringField;
    tblOrderGoodsListxCode_Pk_An: TAutoIncField;
    tblOrderGoodsListxOrderNo_Fk: TIntegerField;
    tblOrderGoodsListxGoodsCode_Fk: TIntegerField;
    tblOrderGoodsListxGoodsName: TWideStringField;
    tblOrderGoodsListxCount: TIntegerField;
    tblOrderGoodsListxBasePrice: TFloatField;
    tblOrderGoodsListxIsvaranty: TBooleanField;
    tblOrderGoodsListxVarantyStartDate: TWideStringField;
    tblOrderGoodsListxVarantyEndDate: TWideStringField;
    tblOrderGoodsListxWhoVaranty: TWideStringField;
    tblOrderGoodsListxVarantyNo: TWideStringField;
    tblOrderGoodsListxVarantyComments: TWideStringField;
    tblOrderGoodsListxComments: TWideStringField;
    rvprjCustomer: TRvProject;
    rvSysCustomer: TRvSystem;
    rvdscnnCustomer: TRvDataSetConnection;
    RvPrjSeller: TRvProject;
    RvSysSeller: TRvSystem;
    rvdscnnMain: TRvDataSetConnection;
    RvPrjStoreInfo: TRvProject;
    RvSysStoreInfo: TRvSystem;
    rvdscnnStoreInfo: TRvDataSetConnection;
    tblSystemInfoxSystemCode_Pk_AN: TAutoIncField;
    tblSystemInfoxOrderNo_Fk: TIntegerField;
    tblSystemInfoxCpuCode: TIntegerField;
    tblSystemInfoxCpuName: TWideStringField;
    tblSystemInfoxCpuMark: TWideStringField;
    tblSystemInfoxCpuCount: TIntegerField;
    tblSystemInfoxCpuPrice: TFloatField;
    tblSystemInfoxRamCode: TIntegerField;
    tblSystemInfoxRamName: TWideStringField;
    tblSystemInfoxRamMark: TWideStringField;
    tblSystemInfoxRamCount: TIntegerField;
    tblSystemInfoxRamPrice: TFloatField;
    tblSystemInfoxHardCode: TIntegerField;
    tblSystemInfoxHardName: TWideStringField;
    tblSystemInfoxHardMark: TWideStringField;
    tblSystemInfoxHardCount: TIntegerField;
    tblSystemInfoxHardPrice: TFloatField;
    tblSystemInfoxMainBoardCode: TIntegerField;
    tblSystemInfoxMainBoardName: TWideStringField;
    tblSystemInfoxMainBoardMark: TWideStringField;
    tblSystemInfoxMainBoardCount: TIntegerField;
    tblSystemInfoxMainBoardPrice: TFloatField;
    tblSystemInfoxMonitorCode: TIntegerField;
    tblSystemInfoxMonitorName: TWideStringField;
    tblSystemInfoxMonitorMark: TWideStringField;
    tblSystemInfoxMonitorCount: TIntegerField;
    tblSystemInfoxMonitorPrice: TFloatField;
    tblSystemInfoxCaseCode: TIntegerField;
    tblSystemInfoxCaseName: TWideStringField;
    tblSystemInfoxCaseMark: TWideStringField;
    tblSystemInfoxCaseCount: TIntegerField;
    tblSystemInfoxCasePrice: TIntegerField;
    tblSystemInfoxCdRomCode: TIntegerField;
    tblSystemInfoxCdRomName: TWideStringField;
    tblSystemInfoxCdRommark: TWideStringField;
    tblSystemInfoxCdRomCount: TIntegerField;
    tblSystemInfoxCdRomPrice: TFloatField;
    tblSystemInfoxCdWriterCode: TIntegerField;
    tblSystemInfoxCdWriterName: TWideStringField;
    tblSystemInfoxCdWriterMark: TWideStringField;
    tblSystemInfoxCdWriterCount: TIntegerField;
    tblSystemInfoxCdWriterPrice: TFloatField;
    tblSystemInfoxDvdRomCode: TIntegerField;
    tblSystemInfoxDvdRomName: TWideStringField;
    tblSystemInfoxDvdRomMark: TWideStringField;
    tblSystemInfoxDvdRomCount: TIntegerField;
    tblSystemInfoxDvdRomPrice: TFloatField;
    tblSystemInfoxDvdWriterCode: TIntegerField;
    tblSystemInfoxDvdWriterName: TWideStringField;
    tblSystemInfoxDvdWriterMark: TWideStringField;
    tblSystemInfoxDvdWriterCount: TIntegerField;
    tblSystemInfoxDvdWriterprice: TFloatField;
    tblSystemInfoxSpeakerCode: TIntegerField;
    tblSystemInfoxSpeakerName: TWideStringField;
    tblSystemInfoxSpeakerMark: TWideStringField;
    tblSystemInfoxSpeakerCount: TIntegerField;
    tblSystemInfoxSpeakerPrice: TFloatField;
    tblSystemInfoxKeyBoardCode: TIntegerField;
    tblSystemInfoxKeyBoardName: TWideStringField;
    tblSystemInfoxKeyBoardMark: TWideStringField;
    tblSystemInfoxKeyBoardCount: TIntegerField;
    tblSystemInfoxKeyBoardPrice: TFloatField;
    tblSystemInfoxMouseCode: TIntegerField;
    tblSystemInfoxMouseName: TWideStringField;
    tblSystemInfoxMouseMark: TWideStringField;
    tblSystemInfoxMouseCount: TIntegerField;
    tblSystemInfoxMouseprice: TFloatField;
    tblSystemInfoxVGACode: TIntegerField;
    tblSystemInfoxVgaName: TWideStringField;
    tblSystemInfoxVgaMark: TWideStringField;
    tblSystemInfoxVgaCount: TIntegerField;
    tblSystemInfoxVgaPrice: TFloatField;
    tblSystemInfoxSoundCode: TIntegerField;
    tblSystemInfoxSoundName: TWideStringField;
    tblSystemInfoxSoundMark: TWideStringField;
    tblSystemInfoxSoundCount: TIntegerField;
    tblSystemInfoxSoundPrice: TFloatField;
    tblSystemInfoxScanerCode: TIntegerField;
    tblSystemInfoxScanerName: TWideStringField;
    tblSystemInfoxScanerMark: TWideStringField;
    tblSystemInfoxScanerCount: TIntegerField;
    tblSystemInfoxScanerprice: TFloatField;
    tblSystemInfoxPrinterCode: TIntegerField;
    tblSystemInfoxPrinterName: TWideStringField;
    tblSystemInfoxPrinterMark: TWideStringField;
    tblSystemInfoxPrinterCount: TIntegerField;
    tblSystemInfoxPrinterPrice: TFloatField;
    tblSystemInfoxTVCARDCode: TIntegerField;
    tblSystemInfoxTVCARDName: TWideStringField;
    tblSystemInfoxTVCARDMark: TWideStringField;
    tblSystemInfoxTVCARDCount: TIntegerField;
    tblSystemInfoxTVCARDPrice: TFloatField;
    tblSystemInfoxLANCARDCode: TIntegerField;
    tblSystemInfoxLANCARDName: TWideStringField;
    tblSystemInfoxLANCARDMark: TWideStringField;
    tblSystemInfoxLANCARDCount: TIntegerField;
    tblSystemInfoxLANCARDPrice: TFloatField;
    tblSystemInfoxModemCode: TIntegerField;
    tblSystemInfoxModemName: TWideStringField;
    tblSystemInfoxModemMark: TWideStringField;
    tblSystemInfoxModemCount: TIntegerField;
    tblSystemInfoxModemPrice: TFloatField;
    tblSystemInfoxWebcamCode: TIntegerField;
    tblSystemInfoxWebcamName: TWideStringField;
    tblSystemInfoxWebCamMark: TWideStringField;
    tblSystemInfoxWebCamCount: TIntegerField;
    tblSystemInfoxWebCamPrice: TFloatField;
    tblSystemInfoxHeadSetCode: TIntegerField;
    tblSystemInfoxHeadSetName: TWideStringField;
    tblSystemInfoxHeadSetMark: TWideStringField;
    tblSystemInfoxHeadSetCount: TIntegerField;
    tblSystemInfoxHeadSetPrice: TFloatField;
    tblSystemInfoxMicrophoneCode: TIntegerField;
    tblSystemInfoxMicrophoneName: TWideStringField;
    tblSystemInfoxMicrophoneMark: TWideStringField;
    tblSystemInfoxMicrophoneCount: TIntegerField;
    tblSystemInfoxMicrophonePrice: TFloatField;
    tblSystemInfoxUPsCode: TIntegerField;
    tblSystemInfoxUpsName: TWideStringField;
    tblSystemInfoxUpsMark: TWideStringField;
    tblSystemInfoxUpsCount: TIntegerField;
    tblSystemInfoxUpsPrice: TFloatField;
    tblSystemInfoxSwitchCode: TIntegerField;
    tblSystemInfoxSwitchName: TWideStringField;
    tblSystemInfoxSwitchMark: TWideStringField;
    tblSystemInfoxSwitchCount: TIntegerField;
    tblSystemInfoxSwitchPrice: TFloatField;
    tblSystemInfoxFloppyCode: TIntegerField;
    tblSystemInfoxFloppyName: TWideStringField;
    tblSystemInfoxFloppyMark: TWideStringField;
    tblSystemInfoxFloppyCount: TIntegerField;
    tblSystemInfoxFloppyPrice: TFloatField;
    tblSystemInfoxZipDriveCode: TIntegerField;
    tblSystemInfoxZipDriveName: TWideStringField;
    tblSystemInfoxZipDriveMark: TWideStringField;
    tblSystemInfoxZipDriveCount: TIntegerField;
    tblSystemInfoxZipDrivePrice: TFloatField;
    tblSystemInfoxOtherDevice1Code: TIntegerField;
    tblSystemInfoxOtherDevice1Name: TWideStringField;
    tblSystemInfoxOtherDevice1Mark: TWideStringField;
    tblSystemInfoxOtherDevice1Count: TIntegerField;
    tblSystemInfoxOtherDevice1Price: TFloatField;
    tblAghsatxAghsatCode_Pk_AN: TAutoIncField;
    tblAghsatxGPCode_Fk: TIntegerField;
    tblAghsatxTotalGP: TFloatField;
    tblAghsatxVarantyPrice: TFloatField;
    tblAghsatxAsembelPrice: TFloatField;
    tblAghsatxPishPardakht: TFloatField;
    tblAghsatxTakhfif: TFloatField;
    tblAghsatxMande: TFloatField;
    tblAghsatxAghsatPrice: TFloatField;
    tblAghsatxStartDate: TWideStringField;
    tblAghsatxEnddate: TWideStringField;
    tblAghsatxSarResidDay: TIntegerField;
    tblAghsatxPayDate: TWideStringField;
    tblAghsatxComments: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure rvSysCustomerOverrideSetup(ReportSystem: TRvSystem;
      OverrideMode: TOverrideMode; var OverrideForm: TForm);
    procedure rvSysCustomerOverridePreview(ReportSystem: TRvSystem;
      OverrideMode: TOverrideMode; var OverrideForm: TForm);
    procedure RvSysSellerOverridePreview(ReportSystem: TRvSystem;
      OverrideMode: TOverrideMode; var OverrideForm: TForm);
    procedure RvSysSellerOverrideSetup(ReportSystem: TRvSystem;
      OverrideMode: TOverrideMode; var OverrideForm: TForm);
    procedure RvSysStoreInfoOverridePreview(ReportSystem: TRvSystem;
      OverrideMode: TOverrideMode; var OverrideForm: TForm);
    procedure RvSysStoreInfoOverrideSetup(ReportSystem: TRvSystem;
      OverrideMode: TOverrideMode; var OverrideForm: TForm);
    procedure DataModuleDestroy(Sender: TObject);
  private

  public
        qrytmp:TMADoQuery;
  end;
  //-------------------------------------------------------------------------------
  TDefGoodsClass = Class
  public
        class Procedure Insert;
        Class procedure InsertValues(GoodsKindCode:Integer;Goodsname:String;GoodsMark:String;GoodsModel:String;Comments:String);
        Class procedure InsertInto(GoodsKindCode:Integer;Goodsname:String;GoodsMark:String;GoodsModel:String;Comments:String);
        Class Procedure Delete(GoodsCode:Integer);
        Class procedure Edit;
        Class procedure Update(GoodsCode:String;GoodKindCode:String;GoodsName:String;GoodsMark:String;GoodsModel :String; Comments:String);
  end;
  TDefPersonClass = Class
  Public
        class Procedure Insert;
        Class procedure InsertValues(ShortName:String;Family:String;Job:String;Tahsilat:String;Tell1:String;Tell2:String;Mobile:String;Seller:Boolean;IsMarrid:Boolean;Gendor:Boolean;HomeAddress:String;WorkAddress:String;Comments:String);
        Class Procedure Delete(PersonCode:Integer);
        Class procedure Edit;
        Class procedure Update(PersonCode:String;ShortName:String;Family:String;Job:String;Tahsilat:String;Tell1:String;Tell2:String;Mobile:String;Seller:Boolean;IsMarrid:Boolean;Gendor:Boolean;HomeAddress:String;WorkAddress:String;Comments:String);
  end;
  TDefStoreInfoClass = Class
  public
        class Procedure Insert;
        Class procedure InsertValues(GoodsCode:Integer;GoodsName:String;GoodsMark:String;GoodsModel:String;GoodsCount:Integer;Comments:String;BasePrice:Integer);
        Class procedure InsertInto(GoodsCode:Integer;GoodsName:String;GoodsMark:String;GoodsModel:String;GoodsCount:String;Comments:String;BasePrice:String);
        Class Procedure Delete(GoodsStoreCode:Integer);
        Class procedure Edit;
        Class procedure Update(StoreGoodsCode:String;GoodsCount:String;Comments:String;BasePrice:String);
  end;
  TDefSystemBuyOrder =class
  Public
        Class procedure InsertNValues(FactorNo,BuyDate,Count,SellerCode:String;SystemOrder:Boolean;OrderComments:String;{Finish The Order Info}
                                     {Cpu Info}CpuName,CpuMark,CPuCode,CpuCount,CpuPrice:String;
                                     {Ram Info}RamName,RamMark,RamCode,RamCount,RamPrice:String;
                                     {Hard Info}HardName,Hardmark,HardCode,HardCount,HardPrice:String;
                                     {M.b Info}MainName,MainMark,MainCode,MainCount,MainPrice:String;
                                     {Monitor Info}MonitorName,MonitorMark,MonitorCode,MonitorCount,MonitorPrice:String;
                                     {Case Info}Casename,CaseMark,CaseCode,CaseCount,casePrice:String;
                                     {CdRom Info}CDRName,CDRMark,CDRCode,CDRCount,CDRPrice:String;
                                     {CDWriter Info}CDWName,CDWMark,CDWCode,CDWCount,CDWPrice:String;
                                     {DVDRom Info}DVDRomName,DVDRomMark,DVDRCode,DVDROMCount,DVDROMPrice:String;
                                     {DVDWriter Info}DVDWRITERName,DVDWRITERMark,DVDWCode,DVDWRITERCount,DVDWRITERPrice:String;
                                     {Speaker Info}SPKName,SPKMark,SPKCode,SPKCount,SPKPrice:String;
                                     {KeyBoard Info}KYBName,KYBMark,KYBCode,KYBCount,KYBPrice:String;
                                     {Mouse Info}MouseName,MouseMark,MouseCode,MouseCount,MousePrice:String;
                                     {Sound Info}SoundName,SoundMark,SoundCode,SoundCount,SoundPrice:String;
                                     {VGA Info}VGAName,VGAMark,VGACode,VGACount,VGAPrice:String;
                                     {Scanner Info}SCNname,SCNmark,SCNCode,SCNCount,SCNPrice:String;
                                     {Printer Info}PRNName,PRNMark,PRNCode,PRNCount,PRNPrice:String;
                                     {TVCard Info}TVCName,TVCMark,TVCCode,TVCCount,TVCPrice:String;
                                     {LAnCard Info}LANCName,LANCMark,LANCCode,LANCCount,LANCPrice:String;
                                     {Modem Info}ModemName,ModemMark,ModemCode,ModemCount,ModemPrice:String;
                                     {WebCam Info}WebCamName,WebCamMark,WebCamCode,WebCamCount,WebCamPrice:String;
                                     {HeadSet Info}HeadSetName,HeadSetMark,HeadSetCode,HeadSetCount,HeadSetPrice:String;
                                     {MicroPhone Info}MicrophoneName,MicrophoneMark,MicrophoneCode,MicrophoneCount,MicrophonePrice:String;
                                     {UPS Info}UPSName,UPSMark,UPSCode,UPSCount,UPSPrice:String;
                                     {Switch Info}SwitchName,SwitchMark,SwitchCode,SwitchCount,SwitchPrice:String;
                                     {Floppy infoi}FloppyName,FloppyMark,FloppyCode,FloppyCount,FloppyPrice:String;
                                     {ZipDrive Info}ZipDriveName,ZipDriveMark,ZipDriveCode,ZipDriveCount,ZipDrivePrice:String;
                                     {Extra Info}ExtraName,ExtraMark,ExtraCode,ExtraCount,ExtraPrice:String;
                                     {Pay Info}PayKind,PayComments:String;
                                     {Naghd Info}NTotalGP,NPishPardakht,NVarantyPrice,NAsembelPrice,NTakhfif,NMande,NPayDate,NComments:String);
        Class procedure UpdateNValues(OrderCode,FactorNo,BuyDate,Count,SellerCode:String;SystemOrder:Boolean;OrderComments:String;{Finish The Order Info}
                                     {Cpu Info}CpuName,CpuMark,CPuCode,CpuCount,CpuPrice:String;
                                     {Ram Info}RamName,RamMark,RamCode,RamCount,RamPrice:String;
                                     {Hard Info}HardName,Hardmark,HardCode,HardCount,HardPrice:String;
                                     {M.b Info}MainName,MainMark,MainCode,MainCount,MainPrice:String;
                                     {Monitor Info}MonitorName,MonitorMark,MonitorCode,MonitorCount,MonitorPrice:String;
                                     {Case Info}Casename,CaseMark,CaseCode,CaseCount,casePrice:String;
                                     {CdRom Info}CDRName,CDRMark,CDRCode,CDRCount,CDRPrice:String;
                                     {CDWriter Info}CDWName,CDWMark,CDWCode,CDWCount,CDWPrice:String;
                                     {DVDRom Info}DVDRomName,DVDRomMark,DVDRCode,DVDROMCount,DVDROMPrice:String;
                                     {DVDWriter Info}DVDWRITERName,DVDWRITERMark,DVDWCode,DVDWRITERCount,DVDWRITERPrice:String;
                                     {Speaker Info}SPKName,SPKMark,SPKCode,SPKCount,SPKPrice:String;
                                     {KeyBoard Info}KYBName,KYBMark,KYBCode,KYBCount,KYBPrice:String;
                                     {Mouse Info}MouseName,MouseMark,MouseCode,MouseCount,MousePrice:String;
                                     {Sound Info}SoundName,SoundMark,SoundCode,SoundCount,SoundPrice:String;
                                     {VGA Info}VGAName,VGAMark,VGACode,VGACount,VGAPrice:String;
                                     {Scanner Info}SCNname,SCNmark,SCNCode,SCNCount,SCNPrice:String;
                                     {Printer Info}PRNName,PRNMark,PRNCode,PRNCount,PRNPrice:String;
                                     {TVCard Info}TVCName,TVCMark,TVCCode,TVCCount,TVCPrice:String;
                                     {LAnCard Info}LANCName,LANCMark,LANCCode,LANCCount,LANCPrice:String;
                                     {Modem Info}ModemName,ModemMark,ModemCode,ModemCount,ModemPrice:String;
                                     {WebCam Info}WebCamName,WebCamMark,WebCamCode,WebCamCount,WebCamPrice:String;
                                     {HeadSet Info}HeadSetName,HeadSetMark,HeadSetCode,HeadSetCount,HeadSetPrice:String;
                                     {MicroPhone Info}MicrophoneName,MicrophoneMark,MicrophoneCode,MicrophoneCount,MicrophonePrice:String;
                                     {UPS Info}UPSName,UPSMark,UPSCode,UPSCount,UPSPrice:String;
                                     {Switch Info}SwitchName,SwitchMark,SwitchCode,SwitchCount,SwitchPrice:String;
                                     {Floppy infoi}FloppyName,FloppyMark,FloppyCode,FloppyCount,FloppyPrice:String;
                                     {ZipDrive Info}ZipDriveName,ZipDriveMark,ZipDriveCode,ZipDriveCount,ZipDrivePrice:String;
                                     {Extra Info}ExtraName,ExtraMark,ExtraCode,ExtraCount,ExtraPrice:String;
                                     {Pay Info}PayKind,PayComments:String;
                                     {Naghd Info}NTotalGP,NPishPardakht,NVarantyPrice,NAsembelPrice,NTakhfif,NMande,NPayDate,NComments:String);

        Class procedure InsertAValues(FactorNo,BuyDate,Count,SellerCode:String;SystemOrder:Boolean;OrderComments:String;{Finish The Order Info}
                                     {Cpu Info}CpuName,CpuMark,CPuCode,CpuCount,CpuPrice:String;
                                     {Ram Info}RamName,RamMark,RamCode,RamCount,RamPrice:String;
                                     {Hard Info}HardName,Hardmark,HardCode,HardCount,HardPrice:String;
                                     {M.b Info}MainName,MainMark,MainCode,MainCount,MainPrice:String;
                                     {Monitor Info}MonitorName,MonitorMark,MonitorCode,MonitorCount,MonitorPrice:String;
                                     {Case Info}Casename,CaseMark,CaseCode,CaseCount,casePrice:String;
                                     {CdRom Info}CDRName,CDRMark,CDRCode,CDRCount,CDRPrice:String;
                                     {CDWriter Info}CDWName,CDWMark,CDWCode,CDWCount,CDWPrice:String;
                                     {DVDRom Info}DVDRomName,DVDRomMark,DVDRCode,DVDROMCount,DVDROMPrice:String;
                                     {DVDWriter Info}DVDWRITERName,DVDWRITERMark,DVDWCode,DVDWRITERCount,DVDWRITERPrice:String;
                                     {Speaker Info}SPKName,SPKMark,SPKCode,SPKCount,SPKPrice:String;
                                     {KeyBoard Info}KYBName,KYBMark,KYBCode,KYBCount,KYBPrice:String;
                                     {Mouse Info}MouseName,MouseMark,MouseCode,MouseCount,MousePrice:String;
                                     {Sound Info}SoundName,SoundMark,SoundCode,SoundCount,SoundPrice:String;
                                     {VGA Info}VGAName,VGAMark,VGACode,VGACount,VGAPrice:String;
                                     {Scanner Info}SCNname,SCNmark,SCNCode,SCNCount,SCNPrice:String;
                                     {Printer Info}PRNName,PRNMark,PRNCode,PRNCount,PRNPrice:String;
                                     {TVCard Info}TVCName,TVCMark,TVCCode,TVCCount,TVCPrice:String;
                                     {LAnCard Info}LANCName,LANCMark,LANCCode,LANCCount,LANCPrice:String;
                                     {Modem Info}ModemName,ModemMark,ModemCode,ModemCount,ModemPrice:String;
                                     {WebCam Info}WebCamName,WebCamMark,WebCamCode,WebCamCount,WebCamPrice:String;
                                     {HeadSet Info}HeadSetName,HeadSetMark,HeadSetCode,HeadSetCount,HeadSetPrice:String;
                                     {MicroPhone Info}MicrophoneName,MicrophoneMark,MicrophoneCode,MicrophoneCount,MicrophonePrice:String;
                                     {UPS Info}UPSName,UPSMark,UPSCode,UPSCount,UPSPrice:String;
                                     {Switch Info}SwitchName,SwitchMark,SwitchCode,SwitchCount,SwitchPrice:String;
                                     {Floppy infoi}FloppyName,FloppyMark,FloppyCode,FloppyCount,FloppyPrice:String;
                                     {ZipDrive Info}ZipDriveName,ZipDriveMark,ZipDriveCode,ZipDriveCount,ZipDrivePrice:String;
                                     {Extra Info}ExtraName,ExtraMark,ExtraCode,ExtraCount,ExtraPrice:String;
                                     {Pay Info}PayKind,PayComments:String;
                                     {Aghsat Info}ATotalGP,APishPardakht,AVarantyPrice,AAsembelPrice,ATakhfif,AMande,ASarResidDay,AghsatPrice,APayDate,AStartDate,AEndDate,AComments:String);

        Class procedure UpdateAValues(OrderCode,FactorNo,BuyDate,Count,SellerCode:String;SystemOrder:Boolean;OrderComments:String;{Finish The Order Info}
                                     {Cpu Info}CpuName,CpuMark,CPuCode,CpuCount,CpuPrice:String;
                                     {Ram Info}RamName,RamMark,RamCode,RamCount,RamPrice:String;
                                     {Hard Info}HardName,Hardmark,HardCode,HardCount,HardPrice:String;
                                     {M.b Info}MainName,MainMark,MainCode,MainCount,MainPrice:String;
                                     {Monitor Info}MonitorName,MonitorMark,MonitorCode,MonitorCount,MonitorPrice:String;
                                     {Case Info}Casename,CaseMark,CaseCode,CaseCount,casePrice:String;
                                     {CdRom Info}CDRName,CDRMark,CDRCode,CDRCount,CDRPrice:String;
                                     {CDWriter Info}CDWName,CDWMark,CDWCode,CDWCount,CDWPrice:String;
                                     {DVDRom Info}DVDRomName,DVDRomMark,DVDRCode,DVDROMCount,DVDROMPrice:String;
                                     {DVDWriter Info}DVDWRITERName,DVDWRITERMark,DVDWCode,DVDWRITERCount,DVDWRITERPrice:String;
                                     {Speaker Info}SPKName,SPKMark,SPKCode,SPKCount,SPKPrice:String;
                                     {KeyBoard Info}KYBName,KYBMark,KYBCode,KYBCount,KYBPrice:String;
                                     {Mouse Info}MouseName,MouseMark,MouseCode,MouseCount,MousePrice:String;
                                     {Sound Info}SoundName,SoundMark,SoundCode,SoundCount,SoundPrice:String;
                                     {VGA Info}VGAName,VGAMark,VGACode,VGACount,VGAPrice:String;
                                     {Scanner Info}SCNname,SCNmark,SCNCode,SCNCount,SCNPrice:String;
                                     {Printer Info}PRNName,PRNMark,PRNCode,PRNCount,PRNPrice:String;
                                     {TVCard Info}TVCName,TVCMark,TVCCode,TVCCount,TVCPrice:String;
                                     {LAnCard Info}LANCName,LANCMark,LANCCode,LANCCount,LANCPrice:String;
                                     {Modem Info}ModemName,ModemMark,ModemCode,ModemCount,ModemPrice:String;
                                     {WebCam Info}WebCamName,WebCamMark,WebCamCode,WebCamCount,WebCamPrice:String;
                                     {HeadSet Info}HeadSetName,HeadSetMark,HeadSetCode,HeadSetCount,HeadSetPrice:String;
                                     {MicroPhone Info}MicrophoneName,MicrophoneMark,MicrophoneCode,MicrophoneCount,MicrophonePrice:String;
                                     {UPS Info}UPSName,UPSMark,UPSCode,UPSCount,UPSPrice:String;
                                     {Switch Info}SwitchName,SwitchMark,SwitchCode,SwitchCount,SwitchPrice:String;
                                     {Floppy infoi}FloppyName,FloppyMark,FloppyCode,FloppyCount,FloppyPrice:String;
                                     {ZipDrive Info}ZipDriveName,ZipDriveMark,ZipDriveCode,ZipDriveCount,ZipDrivePrice:String;
                                     {Extra Info}ExtraName,ExtraMark,ExtraCode,ExtraCount,ExtraPrice:String;
                                     {Pay Info}PayKind,PayComments:String;
                                     {Aghsat Info}ATotalGP,APishPardakht,AVarantyPrice,AAsembelPrice,ATakhfif,AMande,ASarResidDay,AghsatPrice,APayDate,AStartDate,AEndDate,AComments:String);

        Class procedure InsertCValues(FactorNo,BuyDate,Count,SellerCode:String;SystemOrder:Boolean;OrderComments:String;{Finish The Order Info}
                                     {Cpu Info}CpuName,CpuMark,CPuCode,CpuCount,CpuPrice:String;
                                     {Ram Info}RamName,RamMark,RamCode,RamCount,RamPrice:String;
                                     {Hard Info}HardName,Hardmark,HardCode,HardCount,HardPrice:String;
                                     {M.b Info}MainName,MainMark,MainCode,MainCount,MainPrice:String;
                                     {Monitor Info}MonitorName,MonitorMark,MonitorCode,MonitorCount,MonitorPrice:String;
                                     {Case Info}Casename,CaseMark,CaseCode,CaseCount,casePrice:String;
                                     {CdRom Info}CDRName,CDRMark,CDRCode,CDRCount,CDRPrice:String;
                                     {CDWriter Info}CDWName,CDWMark,CDWCode,CDWCount,CDWPrice:String;
                                     {DVDRom Info}DVDRomName,DVDRomMark,DVDRCode,DVDROMCount,DVDROMPrice:String;
                                     {DVDWriter Info}DVDWRITERName,DVDWRITERMark,DVDWCode,DVDWRITERCount,DVDWRITERPrice:String;
                                     {Speaker Info}SPKName,SPKMark,SPKCode,SPKCount,SPKPrice:String;
                                     {KeyBoard Info}KYBName,KYBMark,KYBCode,KYBCount,KYBPrice:String;
                                     {Mouse Info}MouseName,MouseMark,MouseCode,MouseCount,MousePrice:String;
                                     {Sound Info}SoundName,SoundMark,SoundCode,SoundCount,SoundPrice:String;
                                     {VGA Info}VGAName,VGAMark,VGACode,VGACount,VGAPrice:String;
                                     {Scanner Info}SCNname,SCNmark,SCNCode,SCNCount,SCNPrice:String;
                                     {Printer Info}PRNName,PRNMark,PRNCode,PRNCount,PRNPrice:String;
                                     {TVCard Info}TVCName,TVCMark,TVCCode,TVCCount,TVCPrice:String;
                                     {LAnCard Info}LANCName,LANCMark,LANCCode,LANCCount,LANCPrice:String;
                                     {Modem Info}ModemName,ModemMark,ModemCode,ModemCount,ModemPrice:String;
                                     {WebCam Info}WebCamName,WebCamMark,WebCamCode,WebCamCount,WebCamPrice:String;
                                     {HeadSet Info}HeadSetName,HeadSetMark,HeadSetCode,HeadSetCount,HeadSetPrice:String;
                                     {MicroPhone Info}MicrophoneName,MicrophoneMark,MicrophoneCode,MicrophoneCount,MicrophonePrice:String;
                                     {UPS Info}UPSName,UPSMark,UPSCode,UPSCount,UPSPrice:String;
                                     {Switch Info}SwitchName,SwitchMark,SwitchCode,SwitchCount,SwitchPrice:String;
                                     {Floppy infoi}FloppyName,FloppyMark,FloppyCode,FloppyCount,FloppyPrice:String;
                                     {ZipDrive Info}ZipDriveName,ZipDriveMark,ZipDriveCode,ZipDriveCount,ZipDrivePrice:String;
                                     {Extra Info}ExtraName,ExtraMark,ExtraCode,ExtraCount,ExtraPrice:String;
                                     {Pay Info}PayKind,PayComments:String;
                                     {Check Info}CTotalGP,CPishPardakht,CVarantyPrice,CAsembelPrice,CTakhfif,CMande,CCheckPrice,CPayDate,CGetDate,CVosolDate,CCheckNo,CBankName,CBankAddress,CComments:String;Forzemanat:Boolean);

        Class procedure UpdateCValues(OrderCode,FactorNo,BuyDate,Count,SellerCode:String;SystemOrder:Boolean;OrderComments:String;{Finish The Order Info}
                                     {Cpu Info}CpuName,CpuMark,CPuCode,CpuCount,CpuPrice:String;
                                     {Ram Info}RamName,RamMark,RamCode,RamCount,RamPrice:String;
                                     {Hard Info}HardName,Hardmark,HardCode,HardCount,HardPrice:String;
                                     {M.b Info}MainName,MainMark,MainCode,MainCount,MainPrice:String;
                                     {Monitor Info}MonitorName,MonitorMark,MonitorCode,MonitorCount,MonitorPrice:String;
                                     {Case Info}Casename,CaseMark,CaseCode,CaseCount,casePrice:String;
                                     {CdRom Info}CDRName,CDRMark,CDRCode,CDRCount,CDRPrice:String;
                                     {CDWriter Info}CDWName,CDWMark,CDWCode,CDWCount,CDWPrice:String;
                                     {DVDRom Info}DVDRomName,DVDRomMark,DVDRCode,DVDROMCount,DVDROMPrice:String;
                                     {DVDWriter Info}DVDWRITERName,DVDWRITERMark,DVDWCode,DVDWRITERCount,DVDWRITERPrice:String;
                                     {Speaker Info}SPKName,SPKMark,SPKCode,SPKCount,SPKPrice:String;
                                     {KeyBoard Info}KYBName,KYBMark,KYBCode,KYBCount,KYBPrice:String;
                                     {Mouse Info}MouseName,MouseMark,MouseCode,MouseCount,MousePrice:String;
                                     {Sound Info}SoundName,SoundMark,SoundCode,SoundCount,SoundPrice:String;
                                     {VGA Info}VGAName,VGAMark,VGACode,VGACount,VGAPrice:String;
                                     {Scanner Info}SCNname,SCNmark,SCNCode,SCNCount,SCNPrice:String;
                                     {Printer Info}PRNName,PRNMark,PRNCode,PRNCount,PRNPrice:String;
                                     {TVCard Info}TVCName,TVCMark,TVCCode,TVCCount,TVCPrice:String;
                                     {LAnCard Info}LANCName,LANCMark,LANCCode,LANCCount,LANCPrice:String;
                                     {Modem Info}ModemName,ModemMark,ModemCode,ModemCount,ModemPrice:String;
                                     {WebCam Info}WebCamName,WebCamMark,WebCamCode,WebCamCount,WebCamPrice:String;
                                     {HeadSet Info}HeadSetName,HeadSetMark,HeadSetCode,HeadSetCount,HeadSetPrice:String;
                                     {MicroPhone Info}MicrophoneName,MicrophoneMark,MicrophoneCode,MicrophoneCount,MicrophonePrice:String;
                                     {UPS Info}UPSName,UPSMark,UPSCode,UPSCount,UPSPrice:String;
                                     {Switch Info}SwitchName,SwitchMark,SwitchCode,SwitchCount,SwitchPrice:String;
                                     {Floppy infoi}FloppyName,FloppyMark,FloppyCode,FloppyCount,FloppyPrice:String;
                                     {ZipDrive Info}ZipDriveName,ZipDriveMark,ZipDriveCode,ZipDriveCount,ZipDrivePrice:String;
                                     {Extra Info}ExtraName,ExtraMark,ExtraCode,ExtraCount,ExtraPrice:String;
                                     {Pay Info}PayKind,PayComments:String;
                                     {Check Info}CTotalGP,CPishPardakht,CVarantyPrice,CAsembelPrice,CTakhfif,CMande,CCheckPrice,CPayDate,CGetDate,CVosolDate,CCheckNo,CBankName,CBankAddress,CComments:String;Forzemanat:Boolean);
  end;
  TDefSystemSellOrder =class
  Public
        Class procedure InsertNValues(FactorNo,SellDate,Count,CustomerCode:String;SystemOrder:Boolean;OrderComments:String;{Finish The Order Info}
                                     {Cpu Info}CpuName,CpuMark,CPuCode,CpuCount,CpuPrice:String;
                                     {Ram Info}RamName,RamMark,RamCode,RamCount,RamPrice:String;
                                     {Hard Info}HardName,Hardmark,HardCode,HardCount,HardPrice:String;
                                     {M.b Info}MainName,MainMark,MainCode,MainCount,MainPrice:String;
                                     {Monitor Info}MonitorName,MonitorMark,MonitorCode,MonitorCount,MonitorPrice:String;
                                     {Case Info}Casename,CaseMark,CaseCode,CaseCount,casePrice:String;
                                     {CdRom Info}CDRName,CDRMark,CDRCode,CDRCount,CDRPrice:String;
                                     {CDWriter Info}CDWName,CDWMark,CDWCode,CDWCount,CDWPrice:String;
                                     {DVDRom Info}DVDRomName,DVDRomMark,DVDRCode,DVDROMCount,DVDROMPrice:String;
                                     {DVDWriter Info}DVDWRITERName,DVDWRITERMark,DVDWCode,DVDWRITERCount,DVDWRITERPrice:String;
                                     {Speaker Info}SPKName,SPKMark,SPKCode,SPKCount,SPKPrice:String;
                                     {KeyBoard Info}KYBName,KYBMark,KYBCode,KYBCount,KYBPrice:String;
                                     {Mouse Info}MouseName,MouseMark,MouseCode,MouseCount,MousePrice:String;
                                     {Sound Info}SoundName,SoundMark,SoundCode,SoundCount,SoundPrice:String;
                                     {VGA Info}VGAName,VGAMark,VGACode,VGACount,VGAPrice:String;
                                     {Scanner Info}SCNname,SCNmark,SCNCode,SCNCount,SCNPrice:String;
                                     {Printer Info}PRNName,PRNMark,PRNCode,PRNCount,PRNPrice:String;
                                     {TVCard Info}TVCName,TVCMark,TVCCode,TVCCount,TVCPrice:String;
                                     {LAnCard Info}LANCName,LANCMark,LANCCode,LANCCount,LANCPrice:String;
                                     {Modem Info}ModemName,ModemMark,ModemCode,ModemCount,ModemPrice:String;
                                     {WebCam Info}WebCamName,WebCamMark,WebCamCode,WebCamCount,WebCamPrice:String;
                                     {HeadSet Info}HeadSetName,HeadSetMark,HeadSetCode,HeadSetCount,HeadSetPrice:String;
                                     {MicroPhone Info}MicrophoneName,MicrophoneMark,MicrophoneCode,MicrophoneCount,MicrophonePrice:String;
                                     {UPS Info}UPSName,UPSMark,UPSCode,UPSCount,UPSPrice:String;
                                     {Switch Info}SwitchName,SwitchMark,SwitchCode,SwitchCount,SwitchPrice:String;
                                     {Floppy infoi}FloppyName,FloppyMark,FloppyCode,FloppyCount,FloppyPrice:String;
                                     {ZipDrive Info}ZipDriveName,ZipDriveMark,ZipDriveCode,ZipDriveCount,ZipDrivePrice:String;
                                     {Extra Info}ExtraName,ExtraMark,ExtraCode,ExtraCount,ExtraPrice:String;
                                     {Pay Info}PayKind,PayComments:String;
                                     {Naghd Info}NTotalGP,NPishPardakht,NVarantyPrice,NAsembelPrice,NTakhfif,NMande,NPayDate,NComments:String);
        Class procedure UpdateNValues(OrderCode,FactorNo,SellDate,Count,CustomerCode:String;SystemOrder:Boolean;OrderComments:String;{Finish The Order Info}
                                     {Cpu Info}CpuName,CpuMark,CPuCode,CpuCount,CpuPrice:String;
                                     {Ram Info}RamName,RamMark,RamCode,RamCount,RamPrice:String;
                                     {Hard Info}HardName,Hardmark,HardCode,HardCount,HardPrice:String;
                                     {M.b Info}MainName,MainMark,MainCode,MainCount,MainPrice:String;
                                     {Monitor Info}MonitorName,MonitorMark,MonitorCode,MonitorCount,MonitorPrice:String;
                                     {Case Info}Casename,CaseMark,CaseCode,CaseCount,casePrice:String;
                                     {CdRom Info}CDRName,CDRMark,CDRCode,CDRCount,CDRPrice:String;
                                     {CDWriter Info}CDWName,CDWMark,CDWCode,CDWCount,CDWPrice:String;
                                     {DVDRom Info}DVDRomName,DVDRomMark,DVDRCode,DVDROMCount,DVDROMPrice:String;
                                     {DVDWriter Info}DVDWRITERName,DVDWRITERMark,DVDWCode,DVDWRITERCount,DVDWRITERPrice:String;
                                     {Speaker Info}SPKName,SPKMark,SPKCode,SPKCount,SPKPrice:String;
                                     {KeyBoard Info}KYBName,KYBMark,KYBCode,KYBCount,KYBPrice:String;
                                     {Mouse Info}MouseName,MouseMark,MouseCode,MouseCount,MousePrice:String;
                                     {Sound Info}SoundName,SoundMark,SoundCode,SoundCount,SoundPrice:String;
                                     {VGA Info}VGAName,VGAMark,VGACode,VGACount,VGAPrice:String;
                                     {Scanner Info}SCNname,SCNmark,SCNCode,SCNCount,SCNPrice:String;
                                     {Printer Info}PRNName,PRNMark,PRNCode,PRNCount,PRNPrice:String;
                                     {TVCard Info}TVCName,TVCMark,TVCCode,TVCCount,TVCPrice:String;
                                     {LAnCard Info}LANCName,LANCMark,LANCCode,LANCCount,LANCPrice:String;
                                     {Modem Info}ModemName,ModemMark,ModemCode,ModemCount,ModemPrice:String;
                                     {WebCam Info}WebCamName,WebCamMark,WebCamCode,WebCamCount,WebCamPrice:String;
                                     {HeadSet Info}HeadSetName,HeadSetMark,HeadSetCode,HeadSetCount,HeadSetPrice:String;
                                     {MicroPhone Info}MicrophoneName,MicrophoneMark,MicrophoneCode,MicrophoneCount,MicrophonePrice:String;
                                     {UPS Info}UPSName,UPSMark,UPSCode,UPSCount,UPSPrice:String;
                                     {Switch Info}SwitchName,SwitchMark,SwitchCode,SwitchCount,SwitchPrice:String;
                                     {Floppy infoi}FloppyName,FloppyMark,FloppyCode,FloppyCount,FloppyPrice:String;
                                     {ZipDrive Info}ZipDriveName,ZipDriveMark,ZipDriveCode,ZipDriveCount,ZipDrivePrice:String;
                                     {Extra Info}ExtraName,ExtraMark,ExtraCode,ExtraCount,ExtraPrice:String;
                                     {Pay Info}PayKind,PayComments:String;
                                     {Naghd Info}NTotalGP,NPishPardakht,NVarantyPrice,NAsembelPrice,NTakhfif,NMande,NPayDate,NComments:String);

        Class procedure InsertAValues(FactorNo,SellDate,Count,CustomerCode:String;SystemOrder:Boolean;OrderComments:String;{Finish The Order Info}
                                     {Cpu Info}CpuName,CpuMark,CPuCode,CpuCount,CpuPrice:String;
                                     {Ram Info}RamName,RamMark,RamCode,RamCount,RamPrice:String;
                                     {Hard Info}HardName,Hardmark,HardCode,HardCount,HardPrice:String;
                                     {M.b Info}MainName,MainMark,MainCode,MainCount,MainPrice:String;
                                     {Monitor Info}MonitorName,MonitorMark,MonitorCode,MonitorCount,MonitorPrice:String;
                                     {Case Info}Casename,CaseMark,CaseCode,CaseCount,casePrice:String;
                                     {CdRom Info}CDRName,CDRMark,CDRCode,CDRCount,CDRPrice:String;
                                     {CDWriter Info}CDWName,CDWMark,CDWCode,CDWCount,CDWPrice:String;
                                     {DVDRom Info}DVDRomName,DVDRomMark,DVDRCode,DVDROMCount,DVDROMPrice:String;
                                     {DVDWriter Info}DVDWRITERName,DVDWRITERMark,DVDWCode,DVDWRITERCount,DVDWRITERPrice:String;
                                     {Speaker Info}SPKName,SPKMark,SPKCode,SPKCount,SPKPrice:String;
                                     {KeyBoard Info}KYBName,KYBMark,KYBCode,KYBCount,KYBPrice:String;
                                     {Mouse Info}MouseName,MouseMark,MouseCode,MouseCount,MousePrice:String;
                                     {Sound Info}SoundName,SoundMark,SoundCode,SoundCount,SoundPrice:String;
                                     {VGA Info}VGAName,VGAMark,VGACode,VGACount,VGAPrice:String;
                                     {Scanner Info}SCNname,SCNmark,SCNCode,SCNCount,SCNPrice:String;
                                     {Printer Info}PRNName,PRNMark,PRNCode,PRNCount,PRNPrice:String;
                                     {TVCard Info}TVCName,TVCMark,TVCCode,TVCCount,TVCPrice:String;
                                     {LAnCard Info}LANCName,LANCMark,LANCCode,LANCCount,LANCPrice:String;
                                     {Modem Info}ModemName,ModemMark,ModemCode,ModemCount,ModemPrice:String;
                                     {WebCam Info}WebCamName,WebCamMark,WebCamCode,WebCamCount,WebCamPrice:String;
                                     {HeadSet Info}HeadSetName,HeadSetMark,HeadSetCode,HeadSetCount,HeadSetPrice:String;
                                     {MicroPhone Info}MicrophoneName,MicrophoneMark,MicrophoneCode,MicrophoneCount,MicrophonePrice:String;
                                     {UPS Info}UPSName,UPSMark,UPSCode,UPSCount,UPSPrice:String;
                                     {Switch Info}SwitchName,SwitchMark,SwitchCode,SwitchCount,SwitchPrice:String;
                                     {Floppy infoi}FloppyName,FloppyMark,FloppyCode,FloppyCount,FloppyPrice:String;
                                     {ZipDrive Info}ZipDriveName,ZipDriveMark,ZipDriveCode,ZipDriveCount,ZipDrivePrice:String;
                                     {Extra Info}ExtraName,ExtraMark,ExtraCode,ExtraCount,ExtraPrice:String;
                                     {Pay Info}PayKind,PayComments:String;
                                     {Aghsat Info}ATotalGP,APishPardakht,AVarantyPrice,AAsembelPrice,ATakhfif,AMande,ASarResidDay,AghsatPrice,APayDate,AStartDate,AEndDate,AComments:String);

        Class procedure UpdateAValues(OrderCode,FactorNo,SellDate,Count,CustomerCode:String;SystemOrder:Boolean;OrderComments:String;{Finish The Order Info}
                                     {Cpu Info}CpuName,CpuMark,CPuCode,CpuCount,CpuPrice:String;
                                     {Ram Info}RamName,RamMark,RamCode,RamCount,RamPrice:String;
                                     {Hard Info}HardName,Hardmark,HardCode,HardCount,HardPrice:String;
                                     {M.b Info}MainName,MainMark,MainCode,MainCount,MainPrice:String;
                                     {Monitor Info}MonitorName,MonitorMark,MonitorCode,MonitorCount,MonitorPrice:String;
                                     {Case Info}Casename,CaseMark,CaseCode,CaseCount,casePrice:String;
                                     {CdRom Info}CDRName,CDRMark,CDRCode,CDRCount,CDRPrice:String;
                                     {CDWriter Info}CDWName,CDWMark,CDWCode,CDWCount,CDWPrice:String;
                                     {DVDRom Info}DVDRomName,DVDRomMark,DVDRCode,DVDROMCount,DVDROMPrice:String;
                                     {DVDWriter Info}DVDWRITERName,DVDWRITERMark,DVDWCode,DVDWRITERCount,DVDWRITERPrice:String;
                                     {Speaker Info}SPKName,SPKMark,SPKCode,SPKCount,SPKPrice:String;
                                     {KeyBoard Info}KYBName,KYBMark,KYBCode,KYBCount,KYBPrice:String;
                                     {Mouse Info}MouseName,MouseMark,MouseCode,MouseCount,MousePrice:String;
                                     {Sound Info}SoundName,SoundMark,SoundCode,SoundCount,SoundPrice:String;
                                     {VGA Info}VGAName,VGAMark,VGACode,VGACount,VGAPrice:String;
                                     {Scanner Info}SCNname,SCNmark,SCNCode,SCNCount,SCNPrice:String;
                                     {Printer Info}PRNName,PRNMark,PRNCode,PRNCount,PRNPrice:String;
                                     {TVCard Info}TVCName,TVCMark,TVCCode,TVCCount,TVCPrice:String;
                                     {LAnCard Info}LANCName,LANCMark,LANCCode,LANCCount,LANCPrice:String;
                                     {Modem Info}ModemName,ModemMark,ModemCode,ModemCount,ModemPrice:String;
                                     {WebCam Info}WebCamName,WebCamMark,WebCamCode,WebCamCount,WebCamPrice:String;
                                     {HeadSet Info}HeadSetName,HeadSetMark,HeadSetCode,HeadSetCount,HeadSetPrice:String;
                                     {MicroPhone Info}MicrophoneName,MicrophoneMark,MicrophoneCode,MicrophoneCount,MicrophonePrice:String;
                                     {UPS Info}UPSName,UPSMark,UPSCode,UPSCount,UPSPrice:String;
                                     {Switch Info}SwitchName,SwitchMark,SwitchCode,SwitchCount,SwitchPrice:String;
                                     {Floppy infoi}FloppyName,FloppyMark,FloppyCode,FloppyCount,FloppyPrice:String;
                                     {ZipDrive Info}ZipDriveName,ZipDriveMark,ZipDriveCode,ZipDriveCount,ZipDrivePrice:String;
                                     {Extra Info}ExtraName,ExtraMark,ExtraCode,ExtraCount,ExtraPrice:String;
                                     {Pay Info}PayKind,PayComments:String;
                                     {Aghsat Info}ATotalGP,APishPardakht,AVarantyPrice,AAsembelPrice,ATakhfif,AMande,ASarResidDay,AghsatPrice,APayDate,AStartDate,AEndDate,AComments:String);

        Class procedure InsertCValues(FactorNo,SellDate,Count,CustomerCode:String;SystemOrder:Boolean;OrderComments:String;{Finish The Order Info}
                                     {Cpu Info}CpuName,CpuMark,CPuCode,CpuCount,CpuPrice:String;
                                     {Ram Info}RamName,RamMark,RamCode,RamCount,RamPrice:String;
                                     {Hard Info}HardName,Hardmark,HardCode,HardCount,HardPrice:String;
                                     {M.b Info}MainName,MainMark,MainCode,MainCount,MainPrice:String;
                                     {Monitor Info}MonitorName,MonitorMark,MonitorCode,MonitorCount,MonitorPrice:String;
                                     {Case Info}Casename,CaseMark,CaseCode,CaseCount,casePrice:String;
                                     {CdRom Info}CDRName,CDRMark,CDRCode,CDRCount,CDRPrice:String;
                                     {CDWriter Info}CDWName,CDWMark,CDWCode,CDWCount,CDWPrice:String;
                                     {DVDRom Info}DVDRomName,DVDRomMark,DVDRCode,DVDROMCount,DVDROMPrice:String;
                                     {DVDWriter Info}DVDWRITERName,DVDWRITERMark,DVDWCode,DVDWRITERCount,DVDWRITERPrice:String;
                                     {Speaker Info}SPKName,SPKMark,SPKCode,SPKCount,SPKPrice:String;
                                     {KeyBoard Info}KYBName,KYBMark,KYBCode,KYBCount,KYBPrice:String;
                                     {Mouse Info}MouseName,MouseMark,MouseCode,MouseCount,MousePrice:String;
                                     {Sound Info}SoundName,SoundMark,SoundCode,SoundCount,SoundPrice:String;
                                     {VGA Info}VGAName,VGAMark,VGACode,VGACount,VGAPrice:String;
                                     {Scanner Info}SCNname,SCNmark,SCNCode,SCNCount,SCNPrice:String;
                                     {Printer Info}PRNName,PRNMark,PRNCode,PRNCount,PRNPrice:String;
                                     {TVCard Info}TVCName,TVCMark,TVCCode,TVCCount,TVCPrice:String;
                                     {LAnCard Info}LANCName,LANCMark,LANCCode,LANCCount,LANCPrice:String;
                                     {Modem Info}ModemName,ModemMark,ModemCode,ModemCount,ModemPrice:String;
                                     {WebCam Info}WebCamName,WebCamMark,WebCamCode,WebCamCount,WebCamPrice:String;
                                     {HeadSet Info}HeadSetName,HeadSetMark,HeadSetCode,HeadSetCount,HeadSetPrice:String;
                                     {MicroPhone Info}MicrophoneName,MicrophoneMark,MicrophoneCode,MicrophoneCount,MicrophonePrice:String;
                                     {UPS Info}UPSName,UPSMark,UPSCode,UPSCount,UPSPrice:String;
                                     {Switch Info}SwitchName,SwitchMark,SwitchCode,SwitchCount,SwitchPrice:String;
                                     {Floppy infoi}FloppyName,FloppyMark,FloppyCode,FloppyCount,FloppyPrice:String;
                                     {ZipDrive Info}ZipDriveName,ZipDriveMark,ZipDriveCode,ZipDriveCount,ZipDrivePrice:String;
                                     {Extra Info}ExtraName,ExtraMark,ExtraCode,ExtraCount,ExtraPrice:String;
                                     {Pay Info}PayKind,PayComments:String;
                                     {Check Info}CTotalGP,CPishPardakht,CVarantyPrice,CAsembelPrice,CTakhfif,CMande,CCheckPrice,CPayDate,CGetDate,CVosolDate,CCheckNo,CBankName,CBankAddress,CComments:String;Forzemanat:Boolean);

        Class procedure UpdateCValues(OrderCode,FactorNo,SellDate,Count,CustomerCode:String;SystemOrder:Boolean;OrderComments:String;{Finish The Order Info}
                                     {Cpu Info}CpuName,CpuMark,CPuCode,CpuCount,CpuPrice:String;
                                     {Ram Info}RamName,RamMark,RamCode,RamCount,RamPrice:String;
                                     {Hard Info}HardName,Hardmark,HardCode,HardCount,HardPrice:String;
                                     {M.b Info}MainName,MainMark,MainCode,MainCount,MainPrice:String;
                                     {Monitor Info}MonitorName,MonitorMark,MonitorCode,MonitorCount,MonitorPrice:String;
                                     {Case Info}Casename,CaseMark,CaseCode,CaseCount,casePrice:String;
                                     {CdRom Info}CDRName,CDRMark,CDRCode,CDRCount,CDRPrice:String;
                                     {CDWriter Info}CDWName,CDWMark,CDWCode,CDWCount,CDWPrice:String;
                                     {DVDRom Info}DVDRomName,DVDRomMark,DVDRCode,DVDROMCount,DVDROMPrice:String;
                                     {DVDWriter Info}DVDWRITERName,DVDWRITERMark,DVDWCode,DVDWRITERCount,DVDWRITERPrice:String;
                                     {Speaker Info}SPKName,SPKMark,SPKCode,SPKCount,SPKPrice:String;
                                     {KeyBoard Info}KYBName,KYBMark,KYBCode,KYBCount,KYBPrice:String;
                                     {Mouse Info}MouseName,MouseMark,MouseCode,MouseCount,MousePrice:String;
                                     {Sound Info}SoundName,SoundMark,SoundCode,SoundCount,SoundPrice:String;
                                     {VGA Info}VGAName,VGAMark,VGACode,VGACount,VGAPrice:String;
                                     {Scanner Info}SCNname,SCNmark,SCNCode,SCNCount,SCNPrice:String;
                                     {Printer Info}PRNName,PRNMark,PRNCode,PRNCount,PRNPrice:String;
                                     {TVCard Info}TVCName,TVCMark,TVCCode,TVCCount,TVCPrice:String;
                                     {LAnCard Info}LANCName,LANCMark,LANCCode,LANCCount,LANCPrice:String;
                                     {Modem Info}ModemName,ModemMark,ModemCode,ModemCount,ModemPrice:String;
                                     {WebCam Info}WebCamName,WebCamMark,WebCamCode,WebCamCount,WebCamPrice:String;
                                     {HeadSet Info}HeadSetName,HeadSetMark,HeadSetCode,HeadSetCount,HeadSetPrice:String;
                                     {MicroPhone Info}MicrophoneName,MicrophoneMark,MicrophoneCode,MicrophoneCount,MicrophonePrice:String;
                                     {UPS Info}UPSName,UPSMark,UPSCode,UPSCount,UPSPrice:String;
                                     {Switch Info}SwitchName,SwitchMark,SwitchCode,SwitchCount,SwitchPrice:String;
                                     {Floppy infoi}FloppyName,FloppyMark,FloppyCode,FloppyCount,FloppyPrice:String;
                                     {ZipDrive Info}ZipDriveName,ZipDriveMark,ZipDriveCode,ZipDriveCount,ZipDrivePrice:String;
                                     {Extra Info}ExtraName,ExtraMark,ExtraCode,ExtraCount,ExtraPrice:String;
                                     {Pay Info}PayKind,PayComments:String;
                                     {Check Info}CTotalGP,CPishPardakht,CVarantyPrice,CAsembelPrice,CTakhfif,CMande,CCheckPrice,CPayDate,CGetDate,CVosolDate,CCheckNo,CBankName,CBankAddress,CComments:String;Forzemanat:Boolean);
  end;
  TDefBuyGoodsOrderClass  = Class
  public
        class Function  InsertOrderValue(FactorNo:Integer;BuyDate:String;Count:Integer;SellerCode:Integer;OrderComments:String{Finish The Order Info}):Integer;
        Class Procedure InsertNPayValue(OrderNo:Integer;
                                        {Pay Info}PayKind,PayComments:String;
                                        {Naghd Info}NTotalGP,NPishPardakht,NTakhfif,NMande:Integer;NPayDate,NComments:String);
        Class Procedure InsertAPayValue(OrderNo:Integer;
                                        {Pay Info}PayKind,PayComments:String;
                                        {Aghsat Info}ATotalGP,APishPardakht,ATakhfif,AMande,ASarResidDay,AghsatPrice:Integer;APayDate,AStartDate,AEndDate,AComments:String);
        Class Procedure InsertCPayValue(OrderNo:Integer;
                                        {Pay Info}PayKind,PayComments:String;
                                        {Check Info}CTotalGP,CPishPardakht,CTakhfif,CMande,CCheckPrice:Integer;CPayDate,CGetDate,CVosolDate,CCheckNo,CBankName,CBankAddress,CComments:String;Forzemanat:Boolean);

        Class Procedure InsertGoodsListValue(OrderCode,GoodCode,Count,BasePrice:Integer;GoodsName,StartvarantyDate,EndVarantydate,Compony,VarantyNo,VarantyComments,Comments:String;IsVaranty:Boolean);


        Class Procedure UpdateOrderValue(OrderCode,FactorNo,BuyDate,SellerCode,OrderComments:String{Finish The Order Info});

        Class procedure UpdateNPayValue(OrderNo:Integer;
                                        {Pay Info}PayKind,PayComments:String;
                                        {Naghd Info}NTotalGP,NPishPardakht,NTakhfif,NMande,NPayDate,NComments:String);
        Class procedure UpdateAPayValue(OrderNo:Integer;
                                        {Pay Info}PayKind,PayComments:String;
                                        {Aghsat Info}ATotalGP,APishPardakht,ATakhfif,AMande,ASarResidDay,AghsatPrice,APayDate,AStartDate,AEndDate,AComments:String);
        Class procedure UpdateCPayValue(OrderNo:Integer;
                                        {Pay Info}PayKind,PayComments:String;
                                        {Check Info}CTotalGP,CPishPardakht,CTakhfif,CMande,CCheckPrice,CPayDate,CGetDate,CVosolDate,CCheckNo,CBankName,CBankAddress,CComments:String;Forzemanat:Boolean);
  end;
  TDefSellGoodsOrderClass  = Class
  public
        class Function  InsertOrderValue(FactorNo:Integer;SellDate:String;Count:Integer;CustomerCode:Integer;OrderComments:String{Finish The Order Info}):Integer;
        Class Procedure InsertNPayValue(OrderNo:Integer;
                                        {Pay Info}PayKind,PayComments:String;
                                        {Naghd Info}NTotalGP,NPishPardakht,NTakhfif,NMande:Integer;NPayDate,NComments:String);
        Class Procedure InsertAPayValue(OrderNo:Integer;
                                        {Pay Info}PayKind,PayComments:String;
                                        {Aghsat Info}ATotalGP,APishPardakht,ATakhfif,AMande,ASarResidDay,AghsatPrice:Integer;APayDate,AStartDate,AEndDate,AComments:String);
        Class Procedure InsertCPayValue(OrderNo:Integer;
                                        {Pay Info}PayKind,PayComments:String;
                                        {Check Info}CTotalGP,CPishPardakht,CTakhfif,CMande,CCheckPrice:Integer;CPayDate,CGetDate,CVosolDate,CCheckNo,CBankName,CBankAddress,CComments:String;Forzemanat:Boolean);

        Class Procedure InsertGoodsListValue(OrderCode,GoodCode,Count,BasePrice:Integer;GoodsName,StartvarantyDate,EndVarantydate,Compony,VarantyNo,VarantyComments,Comments:String;IsVaranty:Boolean);


        Class Procedure UpdateOrderValue(OrderCode,FactorNo,SellDate,CustomerCode,OrderComments:String{Finish The Order Info});

        Class procedure UpdateNPayValue(OrderNo:Integer;
                                        {Pay Info}PayKind,PayComments:String;
                                        {Naghd Info}NTotalGP,NPishPardakht,NTakhfif,NMande,NPayDate,NComments:String);
        Class procedure UpdateAPayValue(OrderNo:Integer;
                                        {Pay Info}PayKind,PayComments:String;
                                        {Aghsat Info}ATotalGP,APishPardakht,ATakhfif,AMande,ASarResidDay,AghsatPrice,APayDate,AStartDate,AEndDate,AComments:String);
        Class procedure UpdateCPayValue(OrderNo:Integer;
                                        {Pay Info}PayKind,PayComments:String;
                                        {Check Info}CTotalGP,CPishPardakht,CTakhfif,CMande,CCheckPrice,CPayDate,CGetDate,CVosolDate,CCheckNo,CBankName,CBankAddress,CComments:String;Forzemanat:Boolean);
  end;
var
  fmDMmain: TfmDMmain;


implementation

uses DateUtils, BuySystem;

{$R *.dfm}

{ TDefGoodsClass }

class procedure TDefGoodsClass.Delete(GoodsCode: Integer);
begin
     if IntTostr(GoodsCode)='' then Exit;
     with fmDMmain.tblGoods Do
     begin
          try
             Locate('xGoodsCode_Pk_Inc',GoodsCode,[]);
             Delete;
           except on e: Exception Do fmDMmain.MessageDialog.Show('œ— Õ–› «ÿ·«⁄«  «‘ò«·Ì ÅÌ‘ ¬„œ',HbtError);
          end;
     end;
end;

class procedure TDefGoodsClass.Edit;
begin
     with fmDMmain.tblGoods do
     begin
          Try
             Edit;
          except
                on E: Exception do fmDMmain.MessageDialog.Show('œ— ÊÌ—«Ì‘ «ÿ·«⁄«  «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError);
          end;
     end;

end;

class procedure TDefGoodsClass.Insert;
begin
     with fmDMmain.tblGoods do
     begin
          try
             Insert;
          Except
                on E:Exception do fmDmMain.MessageDialog.Show('œ— œ—Ã —òÊ—œ ÃœÌœ «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError );
          end;//end of Try
     end;
end;

class procedure TDefGoodsClass.InsertInto(GoodsKindCode: Integer;
  Goodsname, GoodsMark, GoodsModel, Comments: String);
begin
      if Not GoodsKindCode> 0 Then
        Exit;
      try
         with fmDMmain.qrytmp do
         begin
              SQL.Clear;
              SQL.Text := 'INSERT INTO TblGoods '  ;
              SQL.Text := SQL.Text + '(xGoodsName,xGoodsKindCode_Fk,xGoodsMark,xGoodsModel,xComments )';
              SQL.Text := SQL.Text + ' Values ('+QuotedStr(GoodsName);
              SQL.Text := SQL.Text + ' , '+IntTostr(GoodsKindCode);
              SQL.Text := SQL.Text + ' , '+QuotedStr(GoodsMark);
              SQL.Text := SQL.Text + ' , '+QuotedStr(GoodsModel);
              SQL.Text := SQL.Text + ' , '+QuotedStr(Comments);
              SQL.Text := SQL.Text + ');' ;
              ShowMessage(SQL.Text);
              ExecSQL;
         end;
      Except
            on E:Exception do fmDmMain.MessageDialog.Show('œ— À»  —òÊ—œ ÃœÌœ «‘ò«·Ì »ÊÃÊœ ¬„œ.',HbtError );
      end;//end of Try
end;

class procedure TDefGoodsClass.InsertValues(GoodsKindCode: Integer; Goodsname, GoodsMark, GoodsModel,
  Comments: String);
begin
     if Not GoodsKindCode> 0 Then
        Exit;
     with fmDMmain.tblGoods do
     begin
          try
             if not Active Then
                Open;
             Insert;
             
             FieldByName('xGoodsKindCode_Fk').AsInteger := GoodsKindCode;
             FieldByName('xGoodsName').AsString  := Goodsname;
             FieldByName('xGoodsMark').AsString  := GoodsMark;
             FieldByName('xGoodsModel').AsString := GoodsModel;
             FieldByName('xComments').AsString   := Comments;

             Post;
          Except
                on E:Exception do fmDmMain.MessageDialog.Show('œ— À»  —òÊ—œ ÃœÌœ «‘ò«·Ì »ÊÃÊœ ¬„œ.',HbtError );
          end;//end of Try
     end;
end;

class procedure TDefGoodsClass.Update(GoodsCode, GoodKindCode: String;
  GoodsName, GoodsMark, GoodsModel, Comments: String);
begin
     with fmDMmain.qrytmp do
     begin
          SQL.Clear;
          SQL.Text := 'Update tblGoods Set'  ;
          SQL.Text := SQL.Text + 'xGoodsName = '+QuotedStr(GoodsName);
          SQL.Text := SQL.Text + ',xGoodsKindCode_Fk ='+GoodKindCode;
          SQL.Text := SQL.Text + ',xGoodsMark = '+QuotedStr(GoodsMark);
          SQL.Text := SQL.Text + ',xGoodsModel ='+QuotedStr(GoodsModel);
          SQL.Text := SQL.Text + ',xComments =' +QuotedStr(Comments);
          SQL.Text := SQL.Text +' where  xGoodsCode_Pk_Inc ='+GoodsCode;
          ExecSQL;
     end;

end;

procedure TfmDMmain.DataModuleCreate(Sender: TObject);
begin
     qrytmp := TMADOQuery.Create(self);
     qrytmp.Connection := cnnMain;
     qrytmp.SQL.Clear;
end;

{ TDefPersonClass }

class procedure TDefPersonClass.Delete(PersonCode: Integer);
begin
     if  IntTostr(PersonCode)='' then Exit;
     with fmDMmain.tblPerson Do
     begin
          try
             Locate('xPersonCode_Pk_AN',PersonCode,[]);
             Delete;
           except on e: Exception Do fmDMmain.MessageDialog.Show('œ— Õ–› «ÿ·«⁄«  «‘ò«·Ì ÅÌ‘ ¬„œ',HbtError);
          end;
     end;
end;

class procedure TDefPersonClass.Edit;
begin
     with fmDMmain.tblPerson do
     begin
          Try
             Edit;
          except
                on E: Exception do fmDMmain.MessageDialog.Show('œ— ÊÌ—«Ì‘ «ÿ·«⁄«  «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError);
          end;
     end;
end;

class procedure TDefPersonClass.Insert;
begin
     with fmDMmain.tblPerson do
     begin
          try
             Insert;
          Except
                on E:Exception do fmDmMain.MessageDialog.Show('œ— œ—Ã —òÊ—œ ÃœÌœ «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError );
          end;//end of Try
     end;
end;


class procedure TDefPersonClass.InsertValues(ShortName, Family, Job, Tahsilat,
  Tell1, Tell2, Mobile: String; Seller,IsMarrid, Gendor: Boolean;
  HomeAddress, WorkAddress, Comments: String);
begin
     with fmDMmain.tblPerson do
     begin
          try
             if not Active Then
                Open;
             Insert;
             
             FieldByName('xIsMarrid').AsBoolean   := IsMarrid;
             FieldByName('xGendor').AsBoolean     := Gendor;
             FieldByName('xName').AsString        := ShortName;
             FieldByName('xFamily').AsString      := Family;
             FieldByName('xIsSeller').AsBoolean   := Seller;
             FieldByName('xJob').AsString         := Job;
             FieldByName('xTahsilat').AsString    := Tahsilat;
             FieldByName('xTell1').AsString       := Tell1;
             FieldByName('xTell2').AsString       := Tell2;
             FieldByName('xMobile').AsString      := Mobile;
             FieldByName('xHomeAddress').AsString := HomeAddress;
             FieldByName('xWorkAddress').AsString := WorkAddress;
             FieldByName('xComments').AsString    := Comments;
             Post;
          Except
                on E:Exception do fmDmMain.MessageDialog.Show('œ— À»  —òÊ—œ ÃœÌœ «‘ò«·Ì »ÊÃÊœ ¬„œ.',HbtError );
          end;//end of Try
     end;
end;

class procedure TDefPersonClass.Update(PersonCode, ShortName, Family, Job,
  Tahsilat, Tell1, Tell2, Mobile: String; Seller, IsMarrid,
  Gendor: Boolean; HomeAddress, WorkAddress, Comments: String);
begin
     with fmDMmain.qrytmp do
     begin
          SQL.Clear;
          SQL.Text := 'Update tblPerson Set'  ;
          SQL.Text := SQL.Text + 'xIsMarrid     = '+BoolToStr(IsMarrid);
          SQL.Text := SQL.Text + ',xGendor      = '+BoolToStr(Gendor);
          SQL.Text := SQL.Text + ',xName        = '+QuotedStr(ShortName);
          SQL.Text := SQL.Text + ',xFamily      = '+QuotedStr(Family);
          SQL.Text := SQL.Text + ',xIsSeller    = '+BoolToStr(Seller);
          SQL.Text := SQL.Text + ',xJob         = '+QuotedStr(Job);
          SQL.Text := SQL.Text + ',xTahsilat    = '+QuotedStr(Tahsilat);
          SQL.Text := SQL.Text + ',xTell1       = '+QuotedStr(Tell1);
          SQL.Text := SQL.Text + ',xTell2       = '+QuotedStr(Tell2);
          SQL.Text := SQL.Text + ',xMobile      = '+QuotedStr(Mobile);
          SQL.Text := SQL.Text + ',xHomeAddress = '+QuotedStr(HomeAddress);
          SQL.Text := SQL.Text + ',xWorkAddress = '+QuotedStr(WorkAddress);
          SQL.Text := SQL.Text + ',xComments    = '+QuotedStr(Comments);
          SQL.Text := SQL.Text +' where  xPersonCode_Pk_AN ='+PersonCode;
          ExecSQL;
     end;
end;

{ TDefStoreInfoClass }

class procedure TDefStoreInfoClass.Delete(GoodsStoreCode: Integer);
begin
     if IntTostr(GoodsStoreCode)='' then Exit;
     with fmDMmain.tblstoreInfo Do
     begin
          try
             Locate('xCode_Pk_An',GoodsStoreCode,[]);
             Delete;
           except on e: Exception Do fmDMmain.MessageDialog.Show('œ— Õ–› «ÿ·«⁄«  «‘ò«·Ì ÅÌ‘ ¬„œ',HbtError);
          end;
     end;
end;

class procedure TDefStoreInfoClass.Edit;
begin
     with fmDMmain.tblstoreInfo do
     begin
          Try
             Edit;
          except
                on E: Exception do fmDMmain.MessageDialog.Show('œ— ÊÌ—«Ì‘ «ÿ·«⁄«  «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError);
          end;
     end;
end;

class procedure TDefStoreInfoClass.Insert;
begin
     with fmDMmain.tblstoreInfo do
     begin
          try
             Insert;
          Except
                on E:Exception do fmDmMain.MessageDialog.Show('œ— œ—Ã —òÊ—œ ÃœÌœ «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError );
          end;//end of Try
     end;
end;

class procedure TDefStoreInfoClass.InsertInto(GoodsCode: Integer;
  GoodsName, GoodsMark, GoodsModel, GoodsCount, Comments,BasePrice: String);
begin
      if Not GoodsCode> 0 Then
        Exit;
      try
         with fmDMmain.qrytmp do
         begin
              SQL.Clear;
              SQL.Text := 'INSERT INTO TblStoreInfo '  ;
              SQL.Text := SQL.Text + '(xGoodsName,xGoodsCode_Fk,xGoodsMark,xGoodsModel,xStoreGoodsCount,xComments,xBasePrice )';
              SQL.Text := SQL.Text + ' Values ('+QuotedStr(GoodsName);
              SQL.Text := SQL.Text + ' , '+IntTostr(GoodsCode);
              SQL.Text := SQL.Text + ' , '+QuotedStr(GoodsMark);
              SQL.Text := SQL.Text + ' , '+QuotedStr(GoodsModel);
              SQL.Text := SQL.Text + ' , '+GoodsCount;
              SQL.Text := SQL.Text + ' , '+QuotedStr(Comments);
              SQL.Text := SQL.Text + ' , '+BasePrice;              
              SQL.Text := SQL.Text + ');' ;
              ShowMessage(SQL.Text);
              ExecSQL;
         end;
      Except
            on E:Exception do fmDmMain.MessageDialog.Show('œ— À»  —òÊ—œ ÃœÌœ «‘ò«·Ì »ÊÃÊœ ¬„œ.',HbtError );
      end;//end of Try
end;


class procedure TDefStoreInfoClass.InsertValues(GoodsCode: Integer;
  GoodsName, GoodsMark, GoodsModel: String; GoodsCount: Integer;
  Comments: String;BasePrice:Integer);
begin
     if Not GoodsCode > 0 Then
        Exit;
     with fmDMmain.tblstoreInfo do
     begin
          try
             if not Active Then
                Open;
             Insert;
             
             FieldByName('xGoodsCode_Fk').AsInteger    := GoodsCode;
             FieldByName('xGoodsName').AsString        := Goodsname;
             FieldByName('xGoodsMark').AsString        := GoodsMark;
             FieldByName('xGoodsModel').AsString       := GoodsModel;
             FieldByName('xStoreGoodsCount').AsInteger := GoodsCount;
             FieldByName('xBasePrice').AsInteger       := BasePrice;
             FieldByName('xComments').AsString         := Comments;

             Post;
          Except
                on E:Exception do fmDmMain.MessageDialog.Show('œ— À»  —òÊ—œ ÃœÌœ «‘ò«·Ì »ÊÃÊœ ¬„œ.',HbtError );
          end;//end of Try
     end;
end;


class procedure TDefStoreInfoClass.Update(StoreGoodsCode, GoodsCount,
  Comments,BasePrice: String);
begin
     with fmDMmain.qrytmp do
     begin
          SQL.Clear;
          SQL.Text := 'Update tblStoreInfo Set'  ;
          SQL.Text := SQL.Text + 'xStoreGoodsCount = '+GoodsCount;
          SQL.Text := SQL.Text + ',xBasePrice = '+BasePrice;
          SQL.Text := SQL.Text + ',xComments    = '+QuotedStr(Comments);
          SQL.Text := SQL.Text +' where  xCode_Pk_An ='+StoreGoodsCode;
          ExecSQL;
     end;
end;

{ TDefSystemBuyOrder }





class procedure TDefSystemBuyOrder.InsertAValues(FactorNo, BuyDate, Count,
  SellerCode: String; SystemOrder: Boolean; OrderComments, CpuName,
  CpuMark, CPuCode, CpuCount, CpuPrice, RamName, RamMark, RamCode,
  RamCount, RamPrice, HardName, Hardmark, HardCode, HardCount, HardPrice,
  MainName, MainMark, MainCode, MainCount, MainPrice, MonitorName,
  MonitorMark, MonitorCode, MonitorCount, MonitorPrice, Casename, CaseMark,
  CaseCode, CaseCount, casePrice, CDRName, CDRMark, CDRCode, CDRCount,
  CDRPrice, CDWName, CDWMark, CDWCode, CDWCount, CDWPrice, DVDRomName,
  DVDRomMark, DVDRCode, DVDROMCount, DVDROMPrice, DVDWRITERName,
  DVDWRITERMark, DVDWCode, DVDWRITERCount, DVDWRITERPrice, SPKName,
  SPKMark, SPKCode, SPKCount, SPKPrice, KYBName, KYBMark, KYBCode,
  KYBCount, KYBPrice, MouseName, MouseMark, MouseCode, MouseCount,
  MousePrice, SoundName, SoundMark, SoundCode, SoundCount, SoundPrice,
  VGAName, VGAMark, VGACode, VGACount, VGAPrice, SCNname, SCNmark, SCNCode,
  SCNCount, SCNPrice, PRNName, PRNMark, PRNCode, PRNCount, PRNPrice,
  TVCName, TVCMark, TVCCode, TVCCount, TVCPrice, LANCName, LANCMark,
  LANCCode, LANCCount, LANCPrice, ModemName, ModemMark, ModemCode,
  ModemCount, ModemPrice, WebCamName, WebCamMark, WebCamCode, WebCamCount,
  WebCamPrice, HeadSetName, HeadSetMark, HeadSetCode, HeadSetCount,
  HeadSetPrice, MicrophoneName, MicrophoneMark, MicrophoneCode,
  MicrophoneCount, MicrophonePrice, UPSName, UPSMark, UPSCode, UPSCount,
  UPSPrice, SwitchName, SwitchMark, SwitchCode, SwitchCount, SwitchPrice,
  FloppyName, FloppyMark, FloppyCode, FloppyCount, FloppyPrice,
  ZipDriveName, ZipDriveMark, ZipDriveCode, ZipDriveCount, ZipDrivePrice,
  ExtraName, ExtraMark, ExtraCode, ExtraCount, ExtraPrice, PayKind,
  PayComments, ATotalGP, APishPardakht, AVarantyPrice, AAsembelPrice,
  ATakhfif, AMande, ASarResidDay, AghsatPrice, APayDate, AStartDate,
  AEndDate, AComments: String);
Var
   thisOrderNo,thisPayKind:Integer;
begin
     with fmDMmain Do
     begin
          try
              with tblOrder do
              begin
                   if not Active Then
                      Open;
                   Insert;

                   FieldByName('xBuyOrderFactorNo').AsInteger := StrToint(FactorNo);
                   FieldByName('xDate').AsString := Fillblank(BuyDate) ;
                   FieldByName('xCount').AsInteger := StrToint(Count);
                   FieldByName('xPersonCode_Fk').AsInteger := StrToint(SellerCode);
                   FieldByName('xIsSystemOrder').AsBoolean := SystemOrder;
                   FieldByName('xComments').AsString := OrderComments;

                   Post;
                   Refresh;
                   Locate('xBuyOrderFactorNo',FactorNo,[]);
                   thisOrderNo := FieldByName('xOrderNo_Pk_AN').AsInteger;
              end;
              with tblSystemInfo do
              begin
                       if not Active Then
                          Open;
                       Insert;
                       FieldByName('xOrderNo_Fk').AsInteger := thisOrderNo;

                       //------------------------------------------------------------------
                       //-------------------------- CPU Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(CPuCode)<>'' Then
                       begin
                           FieldByName('xCpuCode').AsInteger  := StrToint(CPuCode);
                           FieldByName('xCpuName').AsString   := CpuName;
                           FieldByName('xCpuMark').AsString   := CpuMark;
                           FieldByName('xCpuCount').AsInteger := StrToint(CpuCount) ;
                           FieldByName('xCpuPrice').AsFloat   := StrToFloat(CpuPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- RAM INFO -------------------------------
                       //------------------------------------------------------------------
                       if Trim(RamCode) <>'' Then
                       begin
                           FieldByName('xRamCode').AsInteger  := StrToint(RamCode);
                           FieldByName('xRamName').AsString   := RamName;
                           FieldByName('xRamMark').AsString   := RamMark;
                           FieldByName('xRamCount').AsInteger := StrToint(RamCount);
                           FieldByName('xRamPrice').AsFloat   := StrToFloat(RamPrice);
                       end;
                       //------------------------------------------------------------------
                       //-------------------------- Hard Info -----------------------------
                       //------------------------------------------------------------------
                       if Trim(HardCode) <> '' Then
                       begin
                           FieldByName('xHardCode').AsInteger  := StrToint(HardCode);
                           FieldByName('xHardName').AsString   := HardName;
                           FieldByName('xHardMark').AsString   := HardMark;
                           FieldByName('xHardCount').AsInteger := StrToint(HardCount);
                           FieldByName('xHardPrice').AsFloat   := StrToFloat(HardPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- MainBoard Info -------------------------
                       //------------------------------------------------------------------
                       if Trim(MainCode) <> '' Then
                       begin
                           FieldByName('xMainBoardCode').AsInteger  := StrToint(MainCode);
                           FieldByName('xMainBoardName').AsString   := MainName;
                           FieldByName('xMainBoardMark').AsString   := MainMark;
                           FieldByName('xMainBoardCount').AsInteger := StrToint(MainCount);
                           FieldByName('xMainBoardPrice').AsFloat   := StrToFloat(MainPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- Monitor Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(MonitorCode) <> '' Then
                       begin
                           FieldByName('xMonitorCode').AsInteger  := StrToint(MonitorCode);
                           FieldByName('xMonitorName').AsString   := MonitorName;
                           FieldByName('xMonitorMark').AsString   := MonitorMark;
                           FieldByName('xMonitorCount').AsInteger := StrToint(MonitorCount);
                           FieldByName('xMonitorPrice').AsFloat   := StrToFloat(MonitorPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- Case Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(CaseCode) <> '' Then
                       begin
                           FieldByName('xCaseCode').AsInteger  := StrToint(CaseCode);
                           FieldByName('xCaseName').AsString   := Casename;
                           FieldByName('xCaseMark').AsString   := CaseMark;
                           FieldByName('xCaseCount').AsInteger := StrToint(CaseCount);
                           FieldByName('xCasePrice').AsFloat   := StrToFloat(casePrice);
                       end;
                       //------------------------------------------------------------------
                       //-------------------------- CdROM Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(CDRCode) <> '' Then
                       begin
                           FieldByName('xCDRomCode').AsInteger  := StrToint(CDRCode);
                           FieldByName('xCDRomName').AsString   := CDRName;
                           FieldByName('xCDRomMark').AsString   := CDRMark;
                           FieldByName('xCDRomCount').AsInteger := StrToint(CDRCount);
                           FieldByName('xCDRomPrice').AsFloat   := StrToFloat(CDRPrice);
                       end;
                       //------------------------------------------------------------------
                       //--------------------------CDWriter Info --------------------------
                       //------------------------------------------------------------------
                       if Trim(CDWCode) <> '' Then
                       begin
                           FieldByName('xCDWriterCode').AsInteger:= StrToInt(CDWCode);
                           FieldByName('xCdWriterName').AsString := CDWName;
                           FieldByName('xCDWriterMark').AsString := CDWMark;
                           FieldByName('xCdWriterCount').AsInteger := StrToint(CDWCount);
                           FieldByName('xCdWriterPrice').AsFloat := StrToFloat(CDWPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- DVDRom Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(DVDRCode) <> '' Then
                       begin
                           FieldByName('xDvdRomCode').AsInteger  := StrToint(DVDRCode);
                           FieldByName('xDvdRomName').AsString   := DVDRomName;
                           FieldByName('xDvdRomMark').AsString   := DVDRomMark;
                           FieldByName('xDvdRomCount').AsInteger := StrToint(DVDROMCount);
                           FieldByName('xDvdRomPrice').AsFloat   := StrToFloat(DVDROMPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ DVDWriter Info --------------------------
                       //------------------------------------------------------------------
                       if Trim(DVDWCode) <> '' Then
                       begin
                           FieldByName('xDvdWriterCode').AsInteger  := StrToint(DVDWCode);
                           FieldByName('xDvdWriterName').AsString   := DVDWRITERName;
                           FieldByName('xDvdWriterMark').AsString   := DVDWRITERMark;
                           FieldByName('xDvdWriterCount').AsInteger := StrToint(DVDWRITERCount);
                           FieldByName('xDvdWriterprice').AsFloat   := StrToFloat(DVDWRITERPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Speaker Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(SPKCode) <> '' Then
                       begin
                           FieldByName('xSpeakerCode').AsInteger  := StrToint(SPKCode);
                           FieldByName('xSpeakerName').AsString   := SPKName;
                           FieldByName('xSpeakerMark').AsString   := SPKMark;
                           FieldByName('xSpeakerCount').AsInteger := StrToint(SPKCount);
                           FieldByName('xSpeakerPrice').AsFloat   := StrToFloat(SPKPrice);
                       end;
                       //------------------------------------------------------------------
                       //----------------------- KeyBoard Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(KYBCode) <> '' Then
                       begin
                           FieldByName('xKeyBoardCode').AsInteger  := StrToint(KYBCode);
                           FieldByName('xKeyBoardName').AsString   := KYBName;
                           FieldByName('xKeyBoardMark').AsString   := KYBMark;
                           FieldByName('xKeyBoardCount').AsInteger := StrToint(KYBCount);
                           FieldByName('xKeyBoardPrice').AsFloat   := StrToFloat(KYBPrice);
                       end;
                       //------------------------------------------------------------------
                       //----------------------- Mouse Info -------------------------------
                       //------------------------------------------------------------------
                       if Trim(MouseCode) <> '' Then
                       begin
                           FieldByName('xMouseCode').AsInteger   := StrToint(MouseCode);
                           FieldByName('xMouseName').AsString    := MouseName;
                           FieldByName('xMouseMark').AsString    := MouseMark;
                           FieldByName('xMouseCount').AsInteger  := StrToint(MouseCount);
                           FieldByName('xMouseprice').AsFloat    := StrToFloat(MousePrice);
                       end;
                       //------------------------------------------------------------------
                       //--------------------- Sound Info ---------------------------------
                       //------------------------------------------------------------------
                       if Trim(SoundCode) <> '' Then
                       begin
                           FieldByName('xSoundCode').AsInteger  := StrToint(SoundCode);
                           FieldByName('xSoundName').AsString   := SoundName;
                           FieldByName('xSoundMark').AsString   := SoundMark;
                           FieldByName('xSoundCount').AsInteger := StrToint(SoundCount);
                           FieldByName('xSoundPrice').AsFloat   := StrToFloat(SoundPrice);
                       end;
                       //------------------------------------------------------------------
                       //--------------------- Scanner Info -------------------------------
                       //------------------------------------------------------------------
                       if Trim(SCNCode) <> '' Then
                       begin
                           FieldByName('xScanerCode').AsInteger  := StrToint(SCNCode);
                           FieldByName('xScanerName').AsString   := SCNname;
                           FieldByName('xScanerMark').AsString   := SCNmark;
                           FieldByName('xScanerCount').AsInteger := StrToint(SCNCount);
                           FieldByName('xScanerprice').AsFloat   := StrToFloat(SCNPrice);
                       end;
                       //------------------------------------------------------------------
                       //---------------------- Printer Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(PRNCode) <> '' Then
                       begin
                           FieldByName('xPrinterCode').AsInteger  := StrToint(PRNCode);
                           FieldByName('xPrinterName').AsString   := PRNName;
                           FieldByName('xPrinterMark').AsString   := PRNMark;
                           FieldByName('xPrinterCount').AsInteger := StrToint(PRNCount);
                           FieldByName('xPrinterPrice').AsFloat   := StrToFloat(PRNPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ VGA Info --------------------------------
                       //------------------------------------------------------------------
                       if Trim(VGACode) <> '' Then
                       begin
                           FieldByName('xVGACode').AsInteger   := StrToint(VGACode);
                           FieldByName('xVgaName').AsString    := VGAName;
                           FieldByName('xVgaMark').AsString    := VGAMark;
                           FieldByName('xVgaCount').AsInteger  := StrToint(VGACount);
                           FieldByName('xVgaPrice').AsFloat    := StrToFloat(VGAPrice);
                       end;
                       //------------------------------------------------------------------
                       //----------------------- TV Card Info -----------------------------
                       //------------------------------------------------------------------
                       if Trim(TVCCode) <> '' Then
                       begin
                           FieldByName('xTVCARDCode').AsInteger  := StrToint(TVCCode);
                           FieldByName('xTVCARDName').AsString   := TVCName;
                           FieldByName('xTVCARDMark').AsString   := TVCMark;
                           FieldByName('xTVCARDCount').AsInteger := StrToint(TVCCount);
                           FieldByName('xTVCARDPrice').AsFloat   := StrToFloat(TVCPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ LAN Card Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(LANCCode) <> '' Then
                       begin
                           FieldByName('xLANCARDCode').AsInteger  := StrToint(LANCCode);
                           FieldByName('xLANCARDName').AsString   := LANCName;
                           FieldByName('xLANCARDMark').AsString   := LANCMark;
                           FieldByName('xLANCARDCount').AsInteger := StrToint(LANCCount);
                           FieldByName('xLANCARDPrice').AsFloat   := StrToFloat(LANCPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Modem Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(ModemCode) <> '' Then
                       begin
                           FieldByName('xModemCode').AsInteger  := StrToint(ModemCode);
                           FieldByName('xModemName').AsString   := ModemName;
                           FieldByName('xModemMark').AsString   := ModemMark;
                           FieldByName('xModemCount').AsInteger := StrToint(ModemCount);
                           FieldByName('xModemPrice').AsFloat   := StrToFloat(ModemPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Web Cam Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(WebCamCode) <> '' Then
                       begin
                           FieldByName('xWebcamCode').AsInteger  := StrToint(WebCamCode);
                           FieldByName('xWebcamName').AsString   := WebCamName;
                           FieldByName('xWebCamMark').AsString   := WebCamMark;
                           FieldByName('xWebCamCount').AsInteger := StrToint(WebCamCount);
                           FieldByName('xWebCamPrice').AsFloat   := StrToFloat(WebCamPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Head Set Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(HeadSetCode) <> '' Then
                       begin
                           FieldByName('xHeadSetCode').AsInteger  := StrToint(HeadSetCode);
                           FieldByName('xHeadSetName').AsString   := HeadSetName;
                           FieldByName('xHeadSetMark').AsString   := HeadSetMark;
                           FieldByName('xHeadSetCount').AsInteger := StrToint(HeadSetCount);
                           FieldByName('xHeadSetPrice').AsFloat   := StrToFloat(HeadSetPrice);
                       end;
                       //------------------------------------------------------------------
                       //---------------------- MicroPhone Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(MicrophoneCode) <> '' Then
                       begin
                           FieldByName('xMicroPhoneCode').AsInteger  := StrToInt(MicrophoneCode);
                           FieldByName('xMicrophoneName').AsString   := MicrophoneName;
                           FieldByName('xMicrophoneMark').AsString   := MicrophoneMark;
                           FieldByName('xMicrophoneCount').AsInteger := StrToint(MicrophoneCount);
                           FieldByName('xMicrophonePrice').AsFloat   := StrToFloat(MicrophonePrice);
                       end;
                       //------------------------------------------------------------------
                       //-------------------------- UPS Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(UPSCode) <> '' Then
                       begin
                           FieldByName('xUPSCode').AsInteger   := StrToint(UPSCode);
                           FieldByName('xUpsName').AsString    := UPSName;
                           FieldByName('xUPSMark').AsString    := UPSMark;
                           FieldByName('xUpsCount').AsInteger  := StrToint(UPSCount);
                           FieldByName('xUpsPrice').AsFloat    := StrToFloat(UPSPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- Switch Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(SwitchCode) <> '' Then
                       begin
                           FieldByName('xSwitchCode').AsInteger  := StrToint(SwitchCode);
                           FieldByName('xSwitchName').AsString   := SwitchName;
                           FieldByName('xSwitchMark').AsString   := SwitchMark;
                           FieldByName('xSwitchCount').AsInteger := StrToint(SwitchCount);
                           FieldByName('xSwitchPrice').AsFloat   := StrToFloat(SwitchPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Floppy info -----------------------------
                       //------------------------------------------------------------------
                       if Trim(FloppyCode) <> '' Then
                       begin
                           FieldByName('xFloppyCode').AsInteger  := StrToint(FloppyCode);
                           FieldByName('xFloppyName').AsString   := FloppyName;
                           FieldByName('xFloppyMark').AsString   := FloppyMark;
                           FieldByName('xFloppyCount').AsInteger := StrToint(FloppyCount);
                           FieldByName('xFloppyPrice').AsFloat   := StrToFloat(FloppyPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Zip Drive info --------------------------
                       //------------------------------------------------------------------
                       if Trim(ZipDriveCode) <> '' Then
                       begin
                           FieldByName('xZipDriveCode').AsInteger   := StrToint(ZipDriveCode);
                           FieldByName('xZipDriveName').AsString    := ZipDriveName;
                           FieldByName('xZipDriveMark').AsString    := ZipDriveMark;
                           FieldByName('xZipDriveCount').AsInteger  := StrToint(ZipDriveCount);
                           FieldByName('xZipDrivePrice').AsFloat    := StrToFloat(FloppyPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Extra Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(ExtraCode) <> '' Then
                       begin
                           FieldByName('xOtherDevice1Code').AsInteger  := StrToint(ExtraCode);
                           FieldByName('xOtherDevice1Name').AsString   := ExtraName;
                           FieldByName('xOtherDevice1Mark').AsString   := ExtraMark;
                           FieldByName('xOtherDevice1Count').AsInteger := StrToint(ExtraCount);
                           FieldByName('xOtherDevice1Price').AsFloat   := StrToFloat(ExtraPrice);
                       end;
                       //------------------------------------------------------------------
                       Post;
                       Refresh;
              end;
              //----------------------- TblGp Insert ----------------------------------
              with tblGp do
              begin
                   if not Active Then
                      Open;
                   Insert;

                   FieldByName('xOrderCode_Fk').AsInteger := thisOrderNo;
                   FieldByName('xGpKind').AsString        := PayKind;
                   FieldByName('xComments').AsString      := PayComments;

                   Post;
                   Refresh;
                   Locate('xOrderCode_Fk',thisOrderNo,[]);
                   thisPayKind := FieldByName('xGPCode_Pk_AN').AsInteger;
              end;
              //---------------------------- tblAghsat Info ---------------------------
              with tblAghsat do
              begin
                   if not Active Then
                      Open;
                   Insert;

                   FieldByName('xGPCode_Fk').AsInteger   := thisPayKind;

                   FieldByName('xTotalGP').AsFloat       := StrToFloat(ATotalGP);
                   FieldByName('xPishPardakht').AsFloat  := StrToFloat(APishPardakht);
                   FieldByName('xVarantyPrice').AsFloat  := StrToFloat(AVarantyPrice);
                   FieldByName('xAsembelPrice').AsFloat  := StrToFloat(AAsembelPrice);
                   FieldByName('xTakhfif').AsFloat       := StrToFloat(ATakhfif);
                   FieldByName('xMande').AsFloat         := StrToFloat(AMande);
                   FieldByName('xAghsatPrice').AsFloat   := StrtoFloat(AghsatPrice);
                   FieldByName('xStartDate').AsString    := AStartDate;
                   FieldByName('xEndDate').AsString      := AEndDate;
                   FieldByName('xSarResidDay').AsInteger := StrToint(ASarResidDay);
                   FieldByName('xPayDate').AsString      := APayDate;
                   FieldByName('xComments').AsString     := AComments;

                   Post;
                   Refresh;
              end;
          Except
                on E:Exception do fmDmMain.MessageDialog.Show('œ— À»  «ÿ·«⁄«  «‘ò«·Ì »ÊÃÊœ ¬„œ.',HbtError );
          end;
     end;
end;



class procedure TDefSystemBuyOrder.InsertCValues(FactorNo, BuyDate, Count,
  SellerCode: String; SystemOrder: Boolean; OrderComments, CpuName,
  CpuMark, CPuCode, CpuCount, CpuPrice, RamName, RamMark, RamCode,
  RamCount, RamPrice, HardName, Hardmark, HardCode, HardCount, HardPrice,
  MainName, MainMark, MainCode, MainCount, MainPrice, MonitorName,
  MonitorMark, MonitorCode, MonitorCount, MonitorPrice, Casename, CaseMark,
  CaseCode, CaseCount, casePrice, CDRName, CDRMark, CDRCode, CDRCount,
  CDRPrice, CDWName, CDWMark, CDWCode, CDWCount, CDWPrice, DVDRomName,
  DVDRomMark, DVDRCode, DVDROMCount, DVDROMPrice, DVDWRITERName,
  DVDWRITERMark, DVDWCode, DVDWRITERCount, DVDWRITERPrice, SPKName,
  SPKMark, SPKCode, SPKCount, SPKPrice, KYBName, KYBMark, KYBCode,
  KYBCount, KYBPrice, MouseName, MouseMark, MouseCode, MouseCount,
  MousePrice, SoundName, SoundMark, SoundCode, SoundCount, SoundPrice,
  VGAName, VGAMark, VGACode, VGACount, VGAPrice, SCNname, SCNmark, SCNCode,
  SCNCount, SCNPrice, PRNName, PRNMark, PRNCode, PRNCount, PRNPrice,
  TVCName, TVCMark, TVCCode, TVCCount, TVCPrice, LANCName, LANCMark,
  LANCCode, LANCCount, LANCPrice, ModemName, ModemMark, ModemCode,
  ModemCount, ModemPrice, WebCamName, WebCamMark, WebCamCode, WebCamCount,
  WebCamPrice, HeadSetName, HeadSetMark, HeadSetCode, HeadSetCount,
  HeadSetPrice, MicrophoneName, MicrophoneMark, MicrophoneCode,
  MicrophoneCount, MicrophonePrice, UPSName, UPSMark, UPSCode, UPSCount,
  UPSPrice, SwitchName, SwitchMark, SwitchCode, SwitchCount, SwitchPrice,
  FloppyName, FloppyMark, FloppyCode, FloppyCount, FloppyPrice,
  ZipDriveName, ZipDriveMark, ZipDriveCode, ZipDriveCount, ZipDrivePrice,
  ExtraName, ExtraMark, ExtraCode, ExtraCount, ExtraPrice, PayKind,
  PayComments, CTotalGP, CPishPardakht, CVarantyPrice, CAsembelPrice,
  CTakhfif, CMande, CCheckPrice, CPayDate, CGetDate, CVosolDate, CCheckNo,
  CBankName, CBankAddress, CComments: String; Forzemanat: Boolean);
Var
   thisOrderNo,thisPayKind:Integer;
begin
     with fmDMmain Do
     begin
          try
                  with tblOrder do
                  begin
                       if not active Then
                          Open;
                       Insert;

                       FieldByName('xBuyOrderFactorNo').AsInteger := StrToint(FactorNo);
                       FieldByName('xDate').AsString              := Fillblank(BuyDate) ;
                       FieldByName('xCount').AsInteger            := StrToint(Count);
                       FieldByName('xPersonCode_Fk').AsInteger    := StrToint(SellerCode);
                       FieldByName('xIsSystemOrder').AsBoolean    := SystemOrder;
                       FieldByName('xComments').AsString          := OrderComments;

                       Post;
                       
                       Locate('xBuyOrderFactorNo',FactorNo,[]);
                       thisOrderNo := FieldByName('xOrderNo_Pk_AN').AsInteger;
                  end;
                  with tblSystemInfo do
                  begin
                       if not Active Then
                          Open;
                       Insert;
                       FieldByName('xOrderNo_Fk').AsInteger := thisOrderNo;

                       //------------------------------------------------------------------
                       //-------------------------- CPU Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(CPuCode)<>'' Then
                       begin
                           FieldByName('xCpuCode').AsInteger  := StrToint(CPuCode);
                           FieldByName('xCpuName').AsString   := CpuName;
                           FieldByName('xCpuMark').AsString   := CpuMark;
                           FieldByName('xCpuCount').AsInteger := StrToint(CpuCount) ;
                           FieldByName('xCpuPrice').AsFloat   := StrToFloat(CpuPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- RAM INFO -------------------------------
                       //------------------------------------------------------------------
                       if Trim(RamCode) <>'' Then
                       begin
                           FieldByName('xRamCode').AsInteger  := StrToint(RamCode);
                           FieldByName('xRamName').AsString   := RamName;
                           FieldByName('xRamMark').AsString   := RamMark;
                           FieldByName('xRamCount').AsInteger := StrToint(RamCount);
                           FieldByName('xRamPrice').AsFloat   := StrToFloat(RamPrice);
                       end;
                       //------------------------------------------------------------------
                       //-------------------------- Hard Info -----------------------------
                       //------------------------------------------------------------------
                       if Trim(HardCode) <> '' Then
                       begin
                           FieldByName('xHardCode').AsInteger  := StrToint(HardCode);
                           FieldByName('xHardName').AsString   := HardName;
                           FieldByName('xHardMark').AsString   := HardMark;
                           FieldByName('xHardCount').AsInteger := StrToint(HardCount);
                           FieldByName('xHardPrice').AsFloat   := StrToFloat(HardPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- MainBoard Info -------------------------
                       //------------------------------------------------------------------
                       if Trim(MainCode) <> '' Then
                       begin
                           FieldByName('xMainBoardCode').AsInteger  := StrToint(MainCode);
                           FieldByName('xMainBoardName').AsString   := MainName;
                           FieldByName('xMainBoardMark').AsString   := MainMark;
                           FieldByName('xMainBoardCount').AsInteger := StrToint(MainCount);
                           FieldByName('xMainBoardPrice').AsFloat   := StrToFloat(MainPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- Monitor Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(MonitorCode) <> '' Then
                       begin
                           FieldByName('xMonitorCode').AsInteger  := StrToint(MonitorCode);
                           FieldByName('xMonitorName').AsString   := MonitorName;
                           FieldByName('xMonitorMark').AsString   := MonitorMark;
                           FieldByName('xMonitorCount').AsInteger := StrToint(MonitorCount);
                           FieldByName('xMonitorPrice').AsFloat   := StrToFloat(MonitorPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- Case Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(CaseCode) <> '' Then
                       begin
                           FieldByName('xCaseCode').AsInteger  := StrToint(CaseCode);
                           FieldByName('xCaseName').AsString   := Casename;
                           FieldByName('xCaseMark').AsString   := CaseMark;
                           FieldByName('xCaseCount').AsInteger := StrToint(CaseCount);
                           FieldByName('xCasePrice').AsFloat   := StrToFloat(casePrice);
                       end;
                       //------------------------------------------------------------------
                       //-------------------------- CdROM Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(CDRCode) <> '' Then
                       begin
                           FieldByName('xCDRomCode').AsInteger  := StrToint(CDRCode);
                           FieldByName('xCDRomName').AsString   := CDRName;
                           FieldByName('xCDRomMark').AsString   := CDRMark;
                           FieldByName('xCDRomCount').AsInteger := StrToint(CDRCount);
                           FieldByName('xCDRomPrice').AsFloat   := StrToFloat(CDRPrice);
                       end;
                       //------------------------------------------------------------------
                       //--------------------------CDWriter Info --------------------------
                       //------------------------------------------------------------------
                       if Trim(CDWCode) <> '' Then
                       begin
                           FieldByName('xCDWriterCode').AsInteger:= StrToInt(CDWCode);
                           FieldByName('xCdWriterName').AsString := CDWName;
                           FieldByName('xCDWriterMark').AsString := CDWMark;
                           FieldByName('xCdWriterCount').AsInteger := StrToint(CDWCount);
                           FieldByName('xCdWriterPrice').AsFloat := StrToFloat(CDWPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- DVDRom Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(DVDRCode) <> '' Then
                       begin
                           FieldByName('xDvdRomCode').AsInteger  := StrToint(DVDRCode);
                           FieldByName('xDvdRomName').AsString   := DVDRomName;
                           FieldByName('xDvdRomMark').AsString   := DVDRomMark;
                           FieldByName('xDvdRomCount').AsInteger := StrToint(DVDROMCount);
                           FieldByName('xDvdRomPrice').AsFloat   := StrToFloat(DVDROMPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ DVDWriter Info --------------------------
                       //------------------------------------------------------------------
                       if Trim(DVDWCode) <> '' Then
                       begin
                           FieldByName('xDvdWriterCode').AsInteger  := StrToint(DVDWCode);
                           FieldByName('xDvdWriterName').AsString   := DVDWRITERName;
                           FieldByName('xDvdWriterMark').AsString   := DVDWRITERMark;
                           FieldByName('xDvdWriterCount').AsInteger := StrToint(DVDWRITERCount);
                           FieldByName('xDvdWriterprice').AsFloat   := StrToFloat(DVDWRITERPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Speaker Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(SPKCode) <> '' Then
                       begin
                           FieldByName('xSpeakerCode').AsInteger  := StrToint(SPKCode);
                           FieldByName('xSpeakerName').AsString   := SPKName;
                           FieldByName('xSpeakerMark').AsString   := SPKMark;
                           FieldByName('xSpeakerCount').AsInteger := StrToint(SPKCount);
                           FieldByName('xSpeakerPrice').AsFloat   := StrToFloat(SPKPrice);
                       end;
                       //------------------------------------------------------------------
                       //----------------------- KeyBoard Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(KYBCode) <> '' Then
                       begin
                           FieldByName('xKeyBoardCode').AsInteger  := StrToint(KYBCode);
                           FieldByName('xKeyBoardName').AsString   := KYBName;
                           FieldByName('xKeyBoardMark').AsString   := KYBMark;
                           FieldByName('xKeyBoardCount').AsInteger := StrToint(KYBCount);
                           FieldByName('xKeyBoardPrice').AsFloat   := StrToFloat(KYBPrice);
                       end;
                       //------------------------------------------------------------------
                       //----------------------- Mouse Info -------------------------------
                       //------------------------------------------------------------------
                       if Trim(MouseCode) <> '' Then
                       begin
                           FieldByName('xMouseCode').AsInteger   := StrToint(MouseCode);
                           FieldByName('xMouseName').AsString    := MouseName;
                           FieldByName('xMouseMark').AsString    := MouseMark;
                           FieldByName('xMouseCount').AsInteger  := StrToint(MouseCount);
                           FieldByName('xMouseprice').AsFloat    := StrToFloat(MousePrice);
                       end;
                       //------------------------------------------------------------------
                       //--------------------- Sound Info ---------------------------------
                       //------------------------------------------------------------------
                       if Trim(SoundCode) <> '' Then
                       begin
                           FieldByName('xSoundCode').AsInteger  := StrToint(SoundCode);
                           FieldByName('xSoundName').AsString   := SoundName;
                           FieldByName('xSoundMark').AsString   := SoundMark;
                           FieldByName('xSoundCount').AsInteger := StrToint(SoundCount);
                           FieldByName('xSoundPrice').AsFloat   := StrToFloat(SoundPrice);
                       end;
                       //------------------------------------------------------------------
                       //--------------------- Scanner Info -------------------------------
                       //------------------------------------------------------------------
                       if Trim(SCNCode) <> '' Then
                       begin
                           FieldByName('xScanerCode').AsInteger  := StrToint(SCNCode);
                           FieldByName('xScanerName').AsString   := SCNname;
                           FieldByName('xScanerMark').AsString   := SCNmark;
                           FieldByName('xScanerCount').AsInteger := StrToint(SCNCount);
                           FieldByName('xScanerprice').AsFloat   := StrToFloat(SCNPrice);
                       end;
                       //------------------------------------------------------------------
                       //---------------------- Printer Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(PRNCode) <> '' Then
                       begin
                           FieldByName('xPrinterCode').AsInteger  := StrToint(PRNCode);
                           FieldByName('xPrinterName').AsString   := PRNName;
                           FieldByName('xPrinterMark').AsString   := PRNMark;
                           FieldByName('xPrinterCount').AsInteger := StrToint(PRNCount);
                           FieldByName('xPrinterPrice').AsFloat   := StrToFloat(PRNPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ VGA Info --------------------------------
                       //------------------------------------------------------------------
                       if Trim(VGACode) <> '' Then
                       begin
                           FieldByName('xVGACode').AsInteger   := StrToint(VGACode);
                           FieldByName('xVgaName').AsString    := VGAName;
                           FieldByName('xVgaMark').AsString    := VGAMark;
                           FieldByName('xVgaCount').AsInteger  := StrToint(VGACount);
                           FieldByName('xVgaPrice').AsFloat    := StrToFloat(VGAPrice);
                       end;
                       //------------------------------------------------------------------
                       //----------------------- TV Card Info -----------------------------
                       //------------------------------------------------------------------
                       if Trim(TVCCode) <> '' Then
                       begin
                           FieldByName('xTVCARDCode').AsInteger  := StrToint(TVCCode);
                           FieldByName('xTVCARDName').AsString   := TVCName;
                           FieldByName('xTVCARDMark').AsString   := TVCMark;
                           FieldByName('xTVCARDCount').AsInteger := StrToint(TVCCount);
                           FieldByName('xTVCARDPrice').AsFloat   := StrToFloat(TVCPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ LAN Card Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(LANCCode) <> '' Then
                       begin
                           FieldByName('xLANCARDCode').AsInteger  := StrToint(LANCCode);
                           FieldByName('xLANCARDName').AsString   := LANCName;
                           FieldByName('xLANCARDMark').AsString   := LANCMark;
                           FieldByName('xLANCARDCount').AsInteger := StrToint(LANCCount);
                           FieldByName('xLANCARDPrice').AsFloat   := StrToFloat(LANCPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Modem Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(ModemCode) <> '' Then
                       begin
                           FieldByName('xModemCode').AsInteger  := StrToint(ModemCode);
                           FieldByName('xModemName').AsString   := ModemName;
                           FieldByName('xModemMark').AsString   := ModemMark;
                           FieldByName('xModemCount').AsInteger := StrToint(ModemCount);
                           FieldByName('xModemPrice').AsFloat   := StrToFloat(ModemPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Web Cam Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(WebCamCode) <> '' Then
                       begin
                           FieldByName('xWebcamCode').AsInteger  := StrToint(WebCamCode);
                           FieldByName('xWebcamName').AsString   := WebCamName;
                           FieldByName('xWebCamMark').AsString   := WebCamMark;
                           FieldByName('xWebCamCount').AsInteger := StrToint(WebCamCount);
                           FieldByName('xWebCamPrice').AsFloat   := StrToFloat(WebCamPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Head Set Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(HeadSetCode) <> '' Then
                       begin
                           FieldByName('xHeadSetCode').AsInteger  := StrToint(HeadSetCode);
                           FieldByName('xHeadSetName').AsString   := HeadSetName;
                           FieldByName('xHeadSetMark').AsString   := HeadSetMark;
                           FieldByName('xHeadSetCount').AsInteger := StrToint(HeadSetCount);
                           FieldByName('xHeadSetPrice').AsFloat   := StrToFloat(HeadSetPrice);
                       end;
                       //------------------------------------------------------------------
                       //---------------------- MicroPhone Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(MicrophoneCode) <> '' Then
                       begin
                           FieldByName('xMicroPhoneCode').AsInteger  := StrToInt(MicrophoneCode);
                           FieldByName('xMicrophoneName').AsString   := MicrophoneName;
                           FieldByName('xMicrophoneMark').AsString   := MicrophoneMark;
                           FieldByName('xMicrophoneCount').AsInteger := StrToint(MicrophoneCount);
                           FieldByName('xMicrophonePrice').AsFloat   := StrToFloat(MicrophonePrice);
                       end;
                       //------------------------------------------------------------------
                       //-------------------------- UPS Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(UPSCode) <> '' Then
                       begin
                           FieldByName('xUPSCode').AsInteger   := StrToint(UPSCode);
                           FieldByName('xUpsName').AsString    := UPSName;
                           FieldByName('xUPSMark').AsString    := UPSMark;
                           FieldByName('xUpsCount').AsInteger  := StrToint(UPSCount);
                           FieldByName('xUpsPrice').AsFloat    := StrToFloat(UPSPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- Switch Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(SwitchCode) <> '' Then
                       begin
                           FieldByName('xSwitchCode').AsInteger  := StrToint(SwitchCode);
                           FieldByName('xSwitchName').AsString   := SwitchName;
                           FieldByName('xSwitchMark').AsString   := SwitchMark;
                           FieldByName('xSwitchCount').AsInteger := StrToint(SwitchCount);
                           FieldByName('xSwitchPrice').AsFloat   := StrToFloat(SwitchPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Floppy info -----------------------------
                       //------------------------------------------------------------------
                       if Trim(FloppyCode) <> '' Then
                       begin
                           FieldByName('xFloppyCode').AsInteger  := StrToint(FloppyCode);
                           FieldByName('xFloppyName').AsString   := FloppyName;
                           FieldByName('xFloppyMark').AsString   := FloppyMark;
                           FieldByName('xFloppyCount').AsInteger := StrToint(FloppyCount);
                           FieldByName('xFloppyPrice').AsFloat   := StrToFloat(FloppyPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Zip Drive info --------------------------
                       //------------------------------------------------------------------
                       if Trim(ZipDriveCode) <> '' Then
                       begin
                           FieldByName('xZipDriveCode').AsInteger   := StrToint(ZipDriveCode);
                           FieldByName('xZipDriveName').AsString    := ZipDriveName;
                           FieldByName('xZipDriveMark').AsString    := ZipDriveMark;
                           FieldByName('xZipDriveCount').AsInteger  := StrToint(ZipDriveCount);
                           FieldByName('xZipDrivePrice').AsFloat    := StrToFloat(FloppyPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Extra Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(ExtraCode) <> '' Then
                       begin
                           FieldByName('xOtherDevice1Code').AsInteger  := StrToint(ExtraCode);
                           FieldByName('xOtherDevice1Name').AsString   := ExtraName;
                           FieldByName('xOtherDevice1Mark').AsString   := ExtraMark;
                           FieldByName('xOtherDevice1Count').AsInteger := StrToint(ExtraCount);
                           FieldByName('xOtherDevice1Price').AsFloat   := StrToFloat(ExtraPrice);
                       end;
                       //------------------------------------------------------------------
                       Post;
                  end;
                  //----------------------- TblGp Insert ----------------------------------
                  with tblGp do
                  begin
                       if not Active Then
                          Open;
                       Insert;

                       FieldByName('xOrderCode_Fk').AsInteger := thisOrderNo;
                       FieldByName('xGpKind').AsString        := PayKind;
                       FieldByName('xComments').AsString      := PayComments;

                       Post;
                       Locate('xOrderCode_Fk',thisOrderNo,[]);
                       thisPayKind := FieldByName('xGPCode_Pk_AN').AsInteger;
                  end;
                  //--------------------------- tblChecks Info ----------------------------
                  with tblChecks do
                  begin
                       if not Active Then
                          Open;
                       Insert;

                       FieldByName('xGpCode_Fk').AsInteger         := thisPayKind;

                       FieldByName('xTotalGp').AsFloat             := StrToFloat(CTotalGP);
                       FieldByName('xPishPardakht').AsFloat        := StrToFloat(CPishPardakht);
                       FieldByName('xVarantyPrice').AsFloat        := StrToFloat(CVarantyPrice);
                       FieldByName('xAsembelPrice').AsFloat        := StrToFloat(CAsembelPrice);
                       FieldByName('xTakhfif').AsFloat             := StrToFloat(CTakhfif);
                       FieldByName('xMande').AsFloat               := StrToFloat(CMande);
                       FieldByName('xCheckNo').AsString            := CCheckNo;
                       FieldByName('xCheckPirce').AsFloat          := StrToFloat(CCheckPrice);
                       FieldByName('xCheckVosolDate').AsString     := CVosolDate;
                       FieldByName('xCheckTahvilDate').AsString    := CGetDate;
                       FieldByName('xPayDate').AsString            := CPayDate;
                       FieldByName('xCheckBank').AsString          := CBankName;
                       FieldByName('xBankaddress').AsString        := CBankAddress;
                       FieldByName('xIsCheckForZemanat').AsBoolean := Forzemanat;
                       FieldByName('xComments').AsString           := CComments;

                       post;
                  end;
          Except
                on E:Exception do fmDmMain.MessageDialog.Show('œ— À»  «ÿ·«⁄«  «‘ò«·Ì »ÊÃÊœ ¬„œ.',HbtError );
          end;
          //--------------------------
     end;
end;

class procedure TDefSystemBuyOrder.InsertNValues(FactorNo, BuyDate, Count,
  SellerCode: String; SystemOrder: Boolean; OrderComments, CpuName,
  CpuMark, CPuCode, CpuCount, CpuPrice, RamName, RamMark, RamCode,
  RamCount, RamPrice, HardName, Hardmark, HardCode, HardCount, HardPrice,
  MainName, MainMark, MainCode, MainCount, MainPrice, MonitorName,
  MonitorMark, MonitorCode, MonitorCount, MonitorPrice, Casename, CaseMark,
  CaseCode, CaseCount, casePrice, CDRName, CDRMark, CDRCode, CDRCount,
  CDRPrice, CDWName, CDWMark, CDWCode, CDWCount, CDWPrice, DVDRomName,
  DVDRomMark, DVDRCode, DVDROMCount, DVDROMPrice, DVDWRITERName,
  DVDWRITERMark, DVDWCode, DVDWRITERCount, DVDWRITERPrice, SPKName,
  SPKMark, SPKCode, SPKCount, SPKPrice, KYBName, KYBMark, KYBCode,
  KYBCount, KYBPrice, MouseName, MouseMark, MouseCode, MouseCount,
  MousePrice, SoundName, SoundMark, SoundCode, SoundCount, SoundPrice,
  VGAName, VGAMark, VGACode, VGACount, VGAPrice, SCNname, SCNmark, SCNCode,
  SCNCount, SCNPrice, PRNName, PRNMark, PRNCode, PRNCount, PRNPrice,
  TVCName, TVCMark, TVCCode, TVCCount, TVCPrice, LANCName, LANCMark,
  LANCCode, LANCCount, LANCPrice, ModemName, ModemMark, ModemCode,
  ModemCount, ModemPrice, WebCamName, WebCamMark, WebCamCode, WebCamCount,
  WebCamPrice, HeadSetName, HeadSetMark, HeadSetCode, HeadSetCount,
  HeadSetPrice, MicrophoneName, MicrophoneMark, MicrophoneCode,
  MicrophoneCount, MicrophonePrice, UPSName, UPSMark, UPSCode, UPSCount,
  UPSPrice, SwitchName, SwitchMark, SwitchCode, SwitchCount, SwitchPrice,
  FloppyName, FloppyMark, FloppyCode, FloppyCount, FloppyPrice,
  ZipDriveName, ZipDriveMark, ZipDriveCode, ZipDriveCount, ZipDrivePrice,
  ExtraName, ExtraMark, ExtraCode, ExtraCount, ExtraPrice, PayKind,
  PayComments, NTotalGP, NPishPardakht, NVarantyPrice, NAsembelPrice,
  NTakhfif, NMande, NPayDate, NComments: String);
Var
   thisOrderNo,thisPayKind:Integer;
begin
     with fmDMmain Do
     begin
          try
                  with tblOrder do
                  begin
                       if not Active Then
                          Open;
                       Insert;

                       FieldByName('xBuyOrderFactorNo').AsInteger := StrToint(FactorNo);
                       FieldByName('xDate').AsString := Fillblank(BuyDate) ;
                       FieldByName('xCount').AsInteger := StrToint(Count);
                       FieldByName('xPersonCode_Fk').AsInteger := StrToint(SellerCode);
                       FieldByName('xIsSystemOrder').AsBoolean := SystemOrder;
                       FieldByName('xComments').AsString := OrderComments;

                       Post;
                       Refresh;
                       Locate('xBuyOrderFactorNo',FactorNo,[]);
                       thisOrderNo := FieldByName('xOrderNo_Pk_AN').AsInteger;
                  end;
                  with tblSystemInfo do
                  begin
                       if not Active Then
                          Open;
                       Insert;
                       FieldByName('xOrderNo_Fk').AsInteger := thisOrderNo;

                       //------------------------------------------------------------------
                       //-------------------------- CPU Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(CPuCode)<>'' Then
                       begin
                           FieldByName('xCpuCode').AsInteger  := StrToint(CPuCode);
                           FieldByName('xCpuName').AsString   := CpuName;
                           FieldByName('xCpuMark').AsString   := CpuMark;
                           FieldByName('xCpuCount').AsInteger := StrToint(CpuCount) ;
                           FieldByName('xCpuPrice').AsFloat   := StrToFloat(CpuPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- RAM INFO -------------------------------
                       //------------------------------------------------------------------
                       if Trim(RamCode) <>'' Then
                       begin
                           FieldByName('xRamCode').AsInteger  := StrToint(RamCode);
                           FieldByName('xRamName').AsString   := RamName;
                           FieldByName('xRamMark').AsString   := RamMark;
                           FieldByName('xRamCount').AsInteger := StrToint(RamCount);
                           FieldByName('xRamPrice').AsFloat   := StrToFloat(RamPrice);
                       end;
                       //------------------------------------------------------------------
                       //-------------------------- Hard Info -----------------------------
                       //------------------------------------------------------------------
                       if Trim(HardCode) <> '' Then
                       begin
                           FieldByName('xHardCode').AsInteger  := StrToint(HardCode);
                           FieldByName('xHardName').AsString   := HardName;
                           FieldByName('xHardMark').AsString   := HardMark;
                           FieldByName('xHardCount').AsInteger := StrToint(HardCount);
                           FieldByName('xHardPrice').AsFloat   := StrToFloat(HardPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- MainBoard Info -------------------------
                       //------------------------------------------------------------------
                       if Trim(MainCode) <> '' Then
                       begin
                           FieldByName('xMainBoardCode').AsInteger  := StrToint(MainCode);
                           FieldByName('xMainBoardName').AsString   := MainName;
                           FieldByName('xMainBoardMark').AsString   := MainMark;
                           FieldByName('xMainBoardCount').AsInteger := StrToint(MainCount);
                           FieldByName('xMainBoardPrice').AsFloat   := StrToFloat(MainPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- Monitor Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(MonitorCode) <> '' Then
                       begin
                           FieldByName('xMonitorCode').AsInteger  := StrToint(MonitorCode);
                           FieldByName('xMonitorName').AsString   := MonitorName;
                           FieldByName('xMonitorMark').AsString   := MonitorMark;
                           FieldByName('xMonitorCount').AsInteger := StrToint(MonitorCount);
                           FieldByName('xMonitorPrice').AsFloat   := StrToFloat(MonitorPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- Case Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(CaseCode) <> '' Then
                       begin
                           FieldByName('xCaseCode').AsInteger  := StrToint(CaseCode);
                           FieldByName('xCaseName').AsString   := Casename;
                           FieldByName('xCaseMark').AsString   := CaseMark;
                           FieldByName('xCaseCount').AsInteger := StrToint(CaseCount);
                           FieldByName('xCasePrice').AsFloat   := StrToFloat(casePrice);
                       end;
                       //------------------------------------------------------------------
                       //-------------------------- CdROM Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(CDRCode) <> '' Then
                       begin
                           FieldByName('xCDRomCode').AsInteger  := StrToint(CDRCode);
                           FieldByName('xCDRomName').AsString   := CDRName;
                           FieldByName('xCDRomMark').AsString   := CDRMark;
                           FieldByName('xCDRomCount').AsInteger := StrToint(CDRCount);
                           FieldByName('xCDRomPrice').AsFloat   := StrToFloat(CDRPrice);
                       end;
                       //------------------------------------------------------------------
                       //--------------------------CDWriter Info --------------------------
                       //------------------------------------------------------------------
                       if Trim(CDWCode) <> '' Then
                       begin
                           FieldByName('xCDWriterCode').AsInteger:= StrToInt(CDWCode);
                           FieldByName('xCdWriterName').AsString := CDWName;
                           FieldByName('xCDWriterMark').AsString := CDWMark;
                           FieldByName('xCdWriterCount').AsInteger := StrToint(CDWCount);
                           FieldByName('xCdWriterPrice').AsFloat := StrToFloat(CDWPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- DVDRom Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(DVDRCode) <> '' Then
                       begin
                           FieldByName('xDvdRomCode').AsInteger  := StrToint(DVDRCode);
                           FieldByName('xDvdRomName').AsString   := DVDRomName;
                           FieldByName('xDvdRomMark').AsString   := DVDRomMark;
                           FieldByName('xDvdRomCount').AsInteger := StrToint(DVDROMCount);
                           FieldByName('xDvdRomPrice').AsFloat   := StrToFloat(DVDROMPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ DVDWriter Info --------------------------
                       //------------------------------------------------------------------
                       if Trim(DVDWCode) <> '' Then
                       begin
                           FieldByName('xDvdWriterCode').AsInteger  := StrToint(DVDWCode);
                           FieldByName('xDvdWriterName').AsString   := DVDWRITERName;
                           FieldByName('xDvdWriterMark').AsString   := DVDWRITERMark;
                           FieldByName('xDvdWriterCount').AsInteger := StrToint(DVDWRITERCount);
                           FieldByName('xDvdWriterprice').AsFloat   := StrToFloat(DVDWRITERPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Speaker Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(SPKCode) <> '' Then
                       begin
                           FieldByName('xSpeakerCode').AsInteger  := StrToint(SPKCode);
                           FieldByName('xSpeakerName').AsString   := SPKName;
                           FieldByName('xSpeakerMark').AsString   := SPKMark;
                           FieldByName('xSpeakerCount').AsInteger := StrToint(SPKCount);
                           FieldByName('xSpeakerPrice').AsFloat   := StrToFloat(SPKPrice);
                       end;
                       //------------------------------------------------------------------
                       //----------------------- KeyBoard Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(KYBCode) <> '' Then
                       begin
                           FieldByName('xKeyBoardCode').AsInteger  := StrToint(KYBCode);
                           FieldByName('xKeyBoardName').AsString   := KYBName;
                           FieldByName('xKeyBoardMark').AsString   := KYBMark;
                           FieldByName('xKeyBoardCount').AsInteger := StrToint(KYBCount);
                           FieldByName('xKeyBoardPrice').AsFloat   := StrToFloat(KYBPrice);
                       end;
                       //------------------------------------------------------------------
                       //----------------------- Mouse Info -------------------------------
                       //------------------------------------------------------------------
                       if Trim(MouseCode) <> '' Then
                       begin
                           FieldByName('xMouseCode').AsInteger   := StrToint(MouseCode);
                           FieldByName('xMouseName').AsString    := MouseName;
                           FieldByName('xMouseMark').AsString    := MouseMark;
                           FieldByName('xMouseCount').AsInteger  := StrToint(MouseCount);
                           FieldByName('xMouseprice').AsFloat    := StrToFloat(MousePrice);
                       end;
                       //------------------------------------------------------------------
                       //--------------------- Sound Info ---------------------------------
                       //------------------------------------------------------------------
                       if Trim(SoundCode) <> '' Then
                       begin
                           FieldByName('xSoundCode').AsInteger  := StrToint(SoundCode);
                           FieldByName('xSoundName').AsString   := SoundName;
                           FieldByName('xSoundMark').AsString   := SoundMark;
                           FieldByName('xSoundCount').AsInteger := StrToint(SoundCount);
                           FieldByName('xSoundPrice').AsFloat   := StrToFloat(SoundPrice);
                       end;
                       //------------------------------------------------------------------
                       //--------------------- Scanner Info -------------------------------
                       //------------------------------------------------------------------
                       if Trim(SCNCode) <> '' Then
                       begin
                           FieldByName('xScanerCode').AsInteger  := StrToint(SCNCode);
                           FieldByName('xScanerName').AsString   := SCNname;
                           FieldByName('xScanerMark').AsString   := SCNmark;
                           FieldByName('xScanerCount').AsInteger := StrToint(SCNCount);
                           FieldByName('xScanerprice').AsFloat   := StrToFloat(SCNPrice);
                       end;
                       //------------------------------------------------------------------
                       //---------------------- Printer Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(PRNCode) <> '' Then
                       begin
                           FieldByName('xPrinterCode').AsInteger  := StrToint(PRNCode);
                           FieldByName('xPrinterName').AsString   := PRNName;
                           FieldByName('xPrinterMark').AsString   := PRNMark;
                           FieldByName('xPrinterCount').AsInteger := StrToint(PRNCount);
                           FieldByName('xPrinterPrice').AsFloat   := StrToFloat(PRNPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ VGA Info --------------------------------
                       //------------------------------------------------------------------
                       if Trim(VGACode) <> '' Then
                       begin
                           FieldByName('xVGACode').AsInteger   := StrToint(VGACode);
                           FieldByName('xVgaName').AsString    := VGAName;
                           FieldByName('xVgaMark').AsString    := VGAMark;
                           FieldByName('xVgaCount').AsInteger  := StrToint(VGACount);
                           FieldByName('xVgaPrice').AsFloat    := StrToFloat(VGAPrice);
                       end;
                       //------------------------------------------------------------------
                       //----------------------- TV Card Info -----------------------------
                       //------------------------------------------------------------------
                       if Trim(TVCCode) <> '' Then
                       begin
                           FieldByName('xTVCARDCode').AsInteger  := StrToint(TVCCode);
                           FieldByName('xTVCARDName').AsString   := TVCName;
                           FieldByName('xTVCARDMark').AsString   := TVCMark;
                           FieldByName('xTVCARDCount').AsInteger := StrToint(TVCCount);
                           FieldByName('xTVCARDPrice').AsFloat   := StrToFloat(TVCPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ LAN Card Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(LANCCode) <> '' Then
                       begin
                           FieldByName('xLANCARDCode').AsInteger  := StrToint(LANCCode);
                           FieldByName('xLANCARDName').AsString   := LANCName;
                           FieldByName('xLANCARDMark').AsString   := LANCMark;
                           FieldByName('xLANCARDCount').AsInteger := StrToint(LANCCount);
                           FieldByName('xLANCARDPrice').AsFloat   := StrToFloat(LANCPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Modem Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(ModemCode) <> '' Then
                       begin
                           FieldByName('xModemCode').AsInteger  := StrToint(ModemCode);
                           FieldByName('xModemName').AsString   := ModemName;
                           FieldByName('xModemMark').AsString   := ModemMark;
                           FieldByName('xModemCount').AsInteger := StrToint(ModemCount);
                           FieldByName('xModemPrice').AsFloat   := StrToFloat(ModemPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Web Cam Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(WebCamCode) <> '' Then
                       begin
                           FieldByName('xWebcamCode').AsInteger  := StrToint(WebCamCode);
                           FieldByName('xWebcamName').AsString   := WebCamName;
                           FieldByName('xWebCamMark').AsString   := WebCamMark;
                           FieldByName('xWebCamCount').AsInteger := StrToint(WebCamCount);
                           FieldByName('xWebCamPrice').AsFloat   := StrToFloat(WebCamPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Head Set Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(HeadSetCode) <> '' Then
                       begin
                           FieldByName('xHeadSetCode').AsInteger  := StrToint(HeadSetCode);
                           FieldByName('xHeadSetName').AsString   := HeadSetName;
                           FieldByName('xHeadSetMark').AsString   := HeadSetMark;
                           FieldByName('xHeadSetCount').AsInteger := StrToint(HeadSetCount);
                           FieldByName('xHeadSetPrice').AsFloat   := StrToFloat(HeadSetPrice);
                       end;
                       //------------------------------------------------------------------
                       //---------------------- MicroPhone Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(MicrophoneCode) <> '' Then
                       begin
                           FieldByName('xMicroPhoneCode').AsInteger  := StrToInt(MicrophoneCode);
                           FieldByName('xMicrophoneName').AsString   := MicrophoneName;
                           FieldByName('xMicrophoneMark').AsString   := MicrophoneMark;
                           FieldByName('xMicrophoneCount').AsInteger := StrToint(MicrophoneCount);
                           FieldByName('xMicrophonePrice').AsFloat   := StrToFloat(MicrophonePrice);
                       end;
                       //------------------------------------------------------------------
                       //-------------------------- UPS Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(UPSCode) <> '' Then
                       begin
                           FieldByName('xUPSCode').AsInteger   := StrToint(UPSCode);
                           FieldByName('xUpsName').AsString    := UPSName;
                           FieldByName('xUPSMark').AsString    := UPSMark;
                           FieldByName('xUpsCount').AsInteger  := StrToint(UPSCount);
                           FieldByName('xUpsPrice').AsFloat    := StrToFloat(UPSPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- Switch Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(SwitchCode) <> '' Then
                       begin
                           FieldByName('xSwitchCode').AsInteger  := StrToint(SwitchCode);
                           FieldByName('xSwitchName').AsString   := SwitchName;
                           FieldByName('xSwitchMark').AsString   := SwitchMark;
                           FieldByName('xSwitchCount').AsInteger := StrToint(SwitchCount);
                           FieldByName('xSwitchPrice').AsFloat   := StrToFloat(SwitchPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Floppy info -----------------------------
                       //------------------------------------------------------------------
                       if Trim(FloppyCode) <> '' Then
                       begin
                           FieldByName('xFloppyCode').AsInteger  := StrToint(FloppyCode);
                           FieldByName('xFloppyName').AsString   := FloppyName;
                           FieldByName('xFloppyMark').AsString   := FloppyMark;
                           FieldByName('xFloppyCount').AsInteger := StrToint(FloppyCount);
                           FieldByName('xFloppyPrice').AsFloat   := StrToFloat(FloppyPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Zip Drive info --------------------------
                       //------------------------------------------------------------------
                       if Trim(ZipDriveCode) <> '' Then
                       begin
                           FieldByName('xZipDriveCode').AsInteger   := StrToint(ZipDriveCode);
                           FieldByName('xZipDriveName').AsString    := ZipDriveName;
                           FieldByName('xZipDriveMark').AsString    := ZipDriveMark;
                           FieldByName('xZipDriveCount').AsInteger  := StrToint(ZipDriveCount);
                           FieldByName('xZipDrivePrice').AsFloat    := StrToFloat(FloppyPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Extra Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(ExtraCode) <> '' Then
                       begin
                           FieldByName('xOtherDevice1Code').AsInteger  := StrToint(ExtraCode);
                           FieldByName('xOtherDevice1Name').AsString   := ExtraName;
                           FieldByName('xOtherDevice1Mark').AsString   := ExtraMark;
                           FieldByName('xOtherDevice1Count').AsInteger := StrToint(ExtraCount);
                           FieldByName('xOtherDevice1Price').AsFloat   := StrToFloat(ExtraPrice);
                       end;
                       //------------------------------------------------------------------
                       Post;
                       Refresh;
                  end;
                  //----------------------- TblGp Insert ----------------------------------
                  with tblGp do
                  begin
                       if not Active Then
                          Open;
                       Insert;

                       FieldByName('xOrderCode_Fk').AsInteger := thisOrderNo;
                       FieldByName('xGpKind').AsString        := PayKind;
                       FieldByName('xComments').AsString      := PayComments;

                       Post;
                       Refresh;
                       Locate('xOrderCode_Fk',thisOrderNo,[]);
                       thisPayKind := FieldByName('xGPCode_Pk_AN').AsInteger;
                  end;
                  //------------------------ tblNaghd Info --------------------------------
                  with tblNaghd do
                  begin
                       if not Active Then
                          Open;
                       Insert;

                       FieldByName('xGpCode_Fk').AsInteger  := thisPayKind;

                       FieldByName('xTotalGP').AsFloat      := StrToFloat(NTotalGP);
                       FieldByName('xPishPardakht').AsFloat := StrToFloat(NPishPardakht);
                       FieldByName('xvarantyPrice').AsFloat := StrToFloat(NVarantyPrice);
                       FieldByName('xAsemblePrice').AsFloat := StrToFloat(NAsembelPrice);
                       FieldByName('xTakhfif').AsFloat      := StrToFloat(NTakhfif);
                       FieldByName('xMande').AsFloat        := StrToFloat(NMande);
                       FieldByName('xPayDate').AsString     := NPayDate;
                       FieldByName('xComment').AsString     := NComments;

                       Refresh;
                       Post;
                  end;
          Except
                on E:Exception do fmDmMain.MessageDialog.Show('œ— À»  «ÿ·«⁄«  «‘ò«·Ì »ÊÃÊœ ¬„œ.',HbtError );
          end;
          //--------------------------
     end;
end;

class procedure TDefSystemBuyOrder.UpdateAValues(OrderCode, FactorNo,
  BuyDate, Count, SellerCode: String; SystemOrder: Boolean; OrderComments,
  CpuName, CpuMark, CPuCode, CpuCount, CpuPrice, RamName, RamMark, RamCode,
  RamCount, RamPrice, HardName, Hardmark, HardCode, HardCount, HardPrice,
  MainName, MainMark, MainCode, MainCount, MainPrice, MonitorName,
  MonitorMark, MonitorCode, MonitorCount, MonitorPrice, Casename, CaseMark,
  CaseCode, CaseCount, casePrice, CDRName, CDRMark, CDRCode, CDRCount,
  CDRPrice, CDWName, CDWMark, CDWCode, CDWCount, CDWPrice, DVDRomName,
  DVDRomMark, DVDRCode, DVDROMCount, DVDROMPrice, DVDWRITERName,
  DVDWRITERMark, DVDWCode, DVDWRITERCount, DVDWRITERPrice, SPKName,
  SPKMark, SPKCode, SPKCount, SPKPrice, KYBName, KYBMark, KYBCode,
  KYBCount, KYBPrice, MouseName, MouseMark, MouseCode, MouseCount,
  MousePrice, SoundName, SoundMark, SoundCode, SoundCount, SoundPrice,
  VGAName, VGAMark, VGACode, VGACount, VGAPrice, SCNname, SCNmark, SCNCode,
  SCNCount, SCNPrice, PRNName, PRNMark, PRNCode, PRNCount, PRNPrice,
  TVCName, TVCMark, TVCCode, TVCCount, TVCPrice, LANCName, LANCMark,
  LANCCode, LANCCount, LANCPrice, ModemName, ModemMark, ModemCode,
  ModemCount, ModemPrice, WebCamName, WebCamMark, WebCamCode, WebCamCount,
  WebCamPrice, HeadSetName, HeadSetMark, HeadSetCode, HeadSetCount,
  HeadSetPrice, MicrophoneName, MicrophoneMark, MicrophoneCode,
  MicrophoneCount, MicrophonePrice, UPSName, UPSMark, UPSCode, UPSCount,
  UPSPrice, SwitchName, SwitchMark, SwitchCode, SwitchCount, SwitchPrice,
  FloppyName, FloppyMark, FloppyCode, FloppyCount, FloppyPrice,
  ZipDriveName, ZipDriveMark, ZipDriveCode, ZipDriveCount, ZipDrivePrice,
  ExtraName, ExtraMark, ExtraCode, ExtraCount, ExtraPrice, PayKind,
  PayComments, ATotalGP, APishPardakht, AVarantyPrice, AAsembelPrice,
  ATakhfif, AMande, ASarResidDay, AghsatPrice, APayDate, AStartDate,
  AEndDate, AComments: String);
Var
   thisGpCode:Integer;
begin
     try
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblorder Set'  ;
                  SQL.Text := SQL.Text + 'xBuyOrderFactorNo ='  + FactorNo;
                  SQL.Text := SQL.Text + ',xDate  = '           + QuotedStr(Fillblank(BuyDate));
                  SQL.Text := SQL.Text + ',xCount = '           + Count;
                  SQL.Text := SQL.Text + ',xPersonCode_Fk = '   + SellerCode;
                  SQL.Text := SQL.Text + ',xComments        ='  +QuotedStr(OrderComments);
                  SQL.Text := SQL.Text + ',xIsSystemOrder = True ';
                  SQL.Text := SQL.Text +' where  xOrderNo_Pk_AN ='+OrderCode;
                  ExecSQL;
                  if fmDMmain.tblOrder.Active Then
                     fmDMmain.tblOrder.Refresh;
             end;
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblSystemInfo Set'  ;
                  Sql.Text := Sql.Text +'xOrderNo_Fk = '+OrderCode;
                  //-----------------------------------------------------------------------
                  //---------------------------- Cpu Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CPuCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCpuCode = '   + CPuCode ;
                      SQL.Text := SQL.Text +',xCpuName = '   + QuotedStr(CpuName);
                      SQL.Text := SQL.Text +',xCpuMark = '   + QuotedStr(CpuMark);
                      SQL.Text := SQL.Text +',xCpuCount = '  + CpuCount ;
                      SQL.Text := SQL.Text +',xCpuPrice = '  + CpuPrice ;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- Ram Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(RamCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xRamCode = '  + RamCode ;
                      SQL.Text := SQL.Text +',xRamName = '  + QuotedStr(RamName);
                      SQL.Text := SQL.Text +',xRamMark = '  + QuotedStr(RamMark);
                      SQL.Text := SQL.Text +',xRamCount = ' + RamCount;
                      SQL.Text := SQL.Text +',xRamPrice = ' + RamPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- Hard Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(HardCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xHardCode = '   + HardCode;
                      SQL.Text := SQL.Text +',xHardName = '   + QuotedStr(HardName);
                      SQL.Text := SQL.Text +',xHardMark = '   + QuotedStr(HardMark);
                      SQL.Text := SQL.Text +',xHardCount = '  + HardCount;
                      SQL.Text := SQL.Text +',xHardPrice = '  + HardPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //----------------------- MainBoard Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MainCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xMainBoardCode = '  + MainCode;
                      SQL.Text := SQL.Text +',xMainBoardName = '  + QuotedStr(MainName);
                      SQL.Text := SQL.Text +',xMainBoardMark = '  + QuotedStr(MainMark);
                      SQL.Text := SQL.Text +',xMainBoardCount = ' + MainCount;
                      SQL.Text := SQL.Text +',xMainBoardPrice = ' + MainPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //------------------------  Monitor Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MonitorCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xMonitorCode = '   + MonitorCode;
                      SQL.Text := SQL.Text +',xMonitorName = '   + QuotedStr(MonitorName);
                      SQL.Text := SQL.Text +',xMonitorMark = '   + QuotedStr(MonitorMark);
                      SQL.Text := SQL.Text +',xMonitorCount = '  + MonitorCount;
                      SQL.Text := SQL.Text +',xMonitorPrice = '  + MonitorPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Case Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CaseCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCaseCode = '   + CaseCode;
                      SQL.Text := SQL.Text +',xCaseName = '   + QuotedStr(CaseName);
                      SQL.Text := SQL.Text +',xCaseMark = '   + QuotedStr(CaseMark);
                      SQL.Text := SQL.Text +',xCaseCount = '  + CaseCount;
                      SQL.Text := SQL.Text +',xCasePrice = '  + casePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- CdRom Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CDRCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCdRomCode = '   + CDRCode;
                      SQL.Text := SQL.Text +',xCdRomName = '   + QuotedStr(CDRName);
                      SQL.Text := SQL.Text +',xCdRomMark = '   + QuotedStr(CDRMark);
                      SQL.Text := SQL.Text +',xCdRomCount = '  + CDRCount;
                      SQL.Text := SQL.Text +',xCdRomPrice = '  +CDRPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- CdWriter Info ------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CDWCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCdWriterCode = '   + CDWCode;
                      SQL.Text := SQL.Text +',xCdWriterName = '   + QuotedStr(CDWName);
                      SQL.Text := SQL.Text +',xCdWriterMark = '   + QuotedStr(CDWMark);
                      SQL.Text := SQL.Text +',xCdWriterCount = '  + CDWCount;
                      SQL.Text := SQL.Text +',xCdWriterPrice = '  + CDWPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- DvdRom Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(DVDRCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xDvdRomCode = '   + DVDRCode;
                      SQL.Text := SQL.Text +',xDvdRomName = '   + QuotedStr(DVDRomName);
                      SQL.Text := SQL.Text +',xDvdRomMark = '   + QuotedStr(DVDRomMark);
                      SQL.Text := SQL.Text +',xDvdRomCount = '  + DVDROMCount;
                      SQL.Text := SQL.Text +',xDvdRomPrice = '  + DVDROMPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //------------------------- DvdWriter Info ------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(DVDWCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xDvdWriterCode = '   + DVDWCode;
                      SQL.Text := SQL.Text +',xDvdWriterName = '   + QuotedStr(DVDWRITERName);
                      SQL.Text := SQL.Text +',xDvdWriterMark = '   + QuotedStr(DVDWRITERMark);
                      SQL.Text := SQL.Text +',xDvdWriterCount = '  + DVDWRITERCount;
                      SQL.Text := SQL.Text +',xDvdWriterPrice = '  + DVDWRITERPrice;
                  end;
                  //-----------------------------------------------------------------------
                  {Becuase Of Extra Field Number}
                  Sql.Text := SQL.Text +' Where xOrderNo_Fk='+OrderCode;
                  ExecSQL;

                  SQL.Clear;
                  SQL.Text := 'Update tblSystemInfo Set'  ;
                  Sql.Text := SQL.Text +'xOrderNo_Fk='+OrderCode;
                  //-----------------------------------------------------------------------
                  //---------------------------- SpK Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SPKCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xSpeakerCode = '   + SPKCode;
                      SQL.Text := SQL.Text +',xSpeakerName = '   + QuotedStr(SPKName);
                      SQL.Text := SQL.Text +',xSpeakerMark = '   + QuotedStr(SPKMark);
                      SQL.Text := SQL.Text +',xSpeakerCount = '  + SPKCount;
                      SQL.Text := SQL.Text +',xSpeakerPrice = '  + SPKPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- KYB Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(KYBCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xKeyBoardCode = '   + KYBCode;
                      SQL.Text := SQL.Text +',xKeyBoardName = '   + QuotedStr(KYBName);
                      SQL.Text := SQL.Text +',xKeyBoardMark = '   + QuotedStr(KYBMark);
                      SQL.Text := SQL.Text +',xKeyBoardCount = '  + KYBCount;
                      SQL.Text := SQL.Text +',xKeyBoardPrice = '  + KYBPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Mouse Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MouseCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xMouseCode = '   + MouseCode;
                      SQL.Text := SQL.Text +',xMouseName = '   + QuotedStr(MouseName);
                      SQL.Text := SQL.Text +',xMouseMark = '   + QuotedStr(MouseMark);
                      SQL.Text := SQL.Text +',xMouseCount = '  + MouseCount;
                      SQL.Text := SQL.Text +',xMousePrice = '  + MousePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Sound Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SoundCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xSoundCode = '   + SoundCode;
                      SQL.Text := SQL.Text +',xSoundName = '   + QuotedStr(SoundName);
                      SQL.Text := SQL.Text +',xSoundMark = '   + QuotedStr(SoundMark);
                      SQL.Text := SQL.Text +',xSoundCount = '  + SoundCount;
                      SQL.Text := SQL.Text +',xSoundPrice = '  + SoundPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- VGA Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(VGACode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xVGACode = '   + VGACode;
                      SQL.Text := SQL.Text +',xVGAName = '   + QuotedStr(VGAName);
                      SQL.Text := SQL.Text +',xVGAMark = '   + QuotedStr(VGAMark);
                      SQL.Text := SQL.Text +',xVGACount = '  + VGACount;
                      SQL.Text := SQL.Text +',xVGAPrice = '  + VGAPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- SCANNER Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SCNCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xScanerCode = '   + SCNCode;
                      SQL.Text := SQL.Text +',xScanerName = '   + QuotedStr(SCNname);
                      SQL.Text := SQL.Text +',xScanerMark = '   + QuotedStr(SCNMark);
                      SQL.Text := SQL.Text +',xScanerCount = '  + SCNCount;
                      SQL.Text := SQL.Text +',xScanerPrice = '  + SCNPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- Printer Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(PRNCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xPrinterCode = '   + PRNCode;
                      SQL.Text := SQL.Text +',xPrinterName = '   + QuotedStr(PRNName);
                      SQL.Text := SQL.Text +',xPrinterMark = '   + QuotedStr(PRNMark);
                      SQL.Text := SQL.Text +',xPrinterCount = '  + PRNCount;
                      SQL.Text := SQL.Text +',xPrinterPrice = '  + PRNPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- TVCARD Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(TVCCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xTVCARDCode = '   + TVCCode;
                      SQL.Text := SQL.Text +',xTVCARDName = '   + QuotedStr(TVCName);
                      SQL.Text := SQL.Text +',xTVCARDMark = '   + QuotedStr(TVCMark);
                      SQL.Text := SQL.Text +',xTVCARDCount = '  + TVCCount;
                      SQL.Text := SQL.Text +',xTVCARDPrice = '  + TVCPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- LANCARD Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(LANCCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xLANCARDCode = '  + LANCCode;
                      SQL.Text := SQL.Text +',xLANCARDName = '  + QuotedStr(LANCName);
                      SQL.Text := SQL.Text +',xLANCARDMark = '  + QuotedStr(LANCMark);
                      SQL.Text := SQL.Text +',xLANCARDCount = ' + LANCCount;
                      SQL.Text := SQL.Text +',xLANCARDPrice = ' + LANCPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Modem Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(ModemCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xModemCode = '   + ModemCode;
                      SQL.Text := SQL.Text +',xModemName = '   + QuotedStr(ModemName);
                      SQL.Text := SQL.Text +',xModemMark = '   + QuotedStr(ModemMark);
                      SQL.Text := SQL.Text +',xModemCount = '  + ModemCount;
                      SQL.Text := SQL.Text +',xModemPrice = '  + ModemPrice;
                  end;
                  //-----------------------------------------------------------------------
                  {Becuase Of Extra Field Number}
                  Sql.Text := SQL.Text +' Where xOrderNo_Fk='+OrderCode;
                  ExecSQL;

                  SQL.Clear;
                  SQL.Text := 'Update tblSystemInfo Set'  ;
                  Sql.Text := SQL.Text +' xOrderNo_Fk='+OrderCode;
                  //-----------------------------------------------------------------------
                  //-------------------------- WebCam Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(WebCamCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xWebcamCode = '   + WebCamCode;
                      SQL.Text := SQL.Text +',xWebcamName = '   + QuotedStr(WebCamName);
                      SQL.Text := SQL.Text +',xWebcamMark = '   + QuotedStr(WebCamMark);
                      SQL.Text := SQL.Text +',xWebcamCount = '  + WebCamCount;
                      SQL.Text := SQL.Text +',xWebcamPrice = '  + WebCamPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- HeadSet Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(HeadSetCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xHeadSetCode = '   + HeadSetCode;
                      SQL.Text := SQL.Text +',xHeadSetName = '   + QuotedStr(HeadSetName);
                      SQL.Text := SQL.Text +',xHeadSetMark = '   + QuotedStr(HeadSetMark);
                      SQL.Text := SQL.Text +',xHeadSetCount = '  + HeadSetCount;
                      SQL.Text := SQL.Text +',xHeadSetPrice = '  + HeadSetPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- Mic Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MicrophoneCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xMicrophoneCode = '   + MicrophoneCode;
                      SQL.Text := SQL.Text +',xMicrophoneName = '   + QuotedStr(MicrophoneName);
                      SQL.Text := SQL.Text +',xMicrophoneMark = '   + QuotedStr(MicrophoneMark);
                      SQL.Text := SQL.Text +',xMicrophoneCount = '  + MicrophoneCount;
                      SQL.Text := SQL.Text +',xMicrophonePrice = '  + MicrophonePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- UPS Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(UPSCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xUpsCode = '   + UPSCode;
                      SQL.Text := SQL.Text +',xUPSName = '   + QuotedStr(UPSName);
                      SQL.Text := SQL.Text +',xUpsMark = '   + QuotedStr(UPSMark);
                      SQL.Text := SQL.Text +',xUpsCount = '  + UPSCount;
                      SQL.Text := SQL.Text +',xUpsPrice = '  + UPSPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- Switch Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SwitchCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xSwitchCode = '   + SwitchCode ;
                      SQL.Text := SQL.Text +',xSwitchName = '   + QuotedStr(SwitchName);
                      SQL.Text := SQL.Text +',xSwitchMark = '   + QuotedStr(SwitchMark);
                      SQL.Text := SQL.Text +',xSwitchCount = '  + SwitchCount;
                      SQL.Text := SQL.Text +',xSwitchPrice = '  + SwitchPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- FDD Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(FloppyCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xFloppyCode = '   + FloppyCode;
                      SQL.Text := SQL.Text +',xFloppyName = '   + QuotedStr(FloppyName);
                      SQL.Text := SQL.Text +',xFloppyMark = '   + QuotedStr(FloppyMark);
                      SQL.Text := SQL.Text +',xFloppyCount = '  + FloppyCount;
                      SQL.Text := SQL.Text +',xFloppyPrice = '  + FloppyPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- ZipDrive Info ------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(ZipDriveCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xZipDriveCode = '   + ZipDriveCode;
                      SQL.Text := SQL.Text +',xZipDriveName = '   + QuotedStr(ZipDriveName);
                      SQL.Text := SQL.Text +',xZipDriveMark = '   + QuotedStr(ZipDriveMark);
                      SQL.Text := SQL.Text +',xZipDriveCount = '  + ZipDriveCount;
                      SQL.Text := SQL.Text +',xZipDrivePrice = '  + ZipDrivePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Extra Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(ExtraCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xOtherDevice1Code = '   + ExtraCode;
                      SQL.Text := SQL.Text +',xOtherDevice1Name = '   + QuotedStr(ExtraName);
                      SQL.Text := SQL.Text +',xOtherDevice1Mark = '   + QuotedStr(ExtraMark);
                      SQL.Text := SQL.Text +',xOtherDevice1Count = '  + ExtraCount;
                      SQL.Text := SQL.Text +',xOtherDevice1Price = '  + ExtraPrice;
                  end;
                  Sql.Text := SQL.Text +' Where xOrderNo_Fk='+OrderCode;
                  ExecSQL;
                  if fmDMmain.tblSystemInfo.Active Then
                     fmDMmain.tblSystemInfo.Refresh;
             end;
             //--------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblGp Set'  ;
                  SQL.Text := SQL.Text +'xGpKind = '    + QuotedStr(PayKind);
                  SQL.Text := SQL.Text +',xComments = ' + QuotedStr(PayComments);
                  ExecSQL;
                  if fmDMmain.tblGp.Active Then
                     fmDMmain.tblGp.Refresh;
             end;
             //-------------------------------------------
             with fmDMmain.tblGp do
             begin
                  if not Active Then
                     Open;
                  Locate('xOrderCode_Fk',StrToint(OrderCode),[]);
                  thisGpCode := FieldByName('xGPCode_Pk_AN').AsInteger;
             end;
             //-----------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblAghsat Set'  ;
                  SQL.Text := SQL.Text +'xTotalGP = '         + ATotalGP;
                  SQL.Text := SQL.Text +',xPishPardakht = '   + APishPardakht;
                  SQL.Text := SQL.Text +',xvarantyPrice = '   + AVarantyPrice;
                  SQL.Text := SQL.Text +',xAsembelPrice = '   + AAsembelPrice;
                  SQL.Text := SQL.Text +',xTakhfif = '        + ATakhfif;
                  SQL.Text := SQL.Text +',xMande = '          + AMande;
                  SQL.Text := SQL.Text +',xAghsatPrice = '    + AghsatPrice;
                  SQL.Text := SQL.Text +',xStartDate = '      + QuotedStr(Fillblank(AStartDate));
                  SQL.Text := SQL.Text +',xEndDate = '        + QuotedStr(Fillblank(AEndDate));
                  SQL.Text := SQL.Text +',xSarResidDay = '    + ASarResidDay;
                  SQL.Text := SQL.Text +',xPayDate = '        + QuotedStr(Fillblank(APayDate));
                  SQL.Text := SQL.Text +',xComments = '        + QuotedStr(AComments);
                  SQL.Text := SQL.Text +' Where  xGPCode_Fk = '+ IntTostr(thisGpCode) ;
                  ExecSQL;
                  if fmDMmain.tblAghsat.Active Then
                     fmDMmain.tblAghsat.Refresh;
             end;
             fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ‘œ',HbtInformation);
     except
           on E:Exception Do fmDMmain.MessageDialog.Show('œ— À»  ÊÌ—«Ì‘ «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError);
     end;
end;

class procedure TDefSystemBuyOrder.UpdateCValues(OrderCode, FactorNo,
  BuyDate, Count, SellerCode: String; SystemOrder: Boolean; OrderComments,
  CpuName, CpuMark, CPuCode, CpuCount, CpuPrice, RamName, RamMark, RamCode,
  RamCount, RamPrice, HardName, Hardmark, HardCode, HardCount, HardPrice,
  MainName, MainMark, MainCode, MainCount, MainPrice, MonitorName,
  MonitorMark, MonitorCode, MonitorCount, MonitorPrice, Casename, CaseMark,
  CaseCode, CaseCount, casePrice, CDRName, CDRMark, CDRCode, CDRCount,
  CDRPrice, CDWName, CDWMark, CDWCode, CDWCount, CDWPrice, DVDRomName,
  DVDRomMark, DVDRCode, DVDROMCount, DVDROMPrice, DVDWRITERName,
  DVDWRITERMark, DVDWCode, DVDWRITERCount, DVDWRITERPrice, SPKName,
  SPKMark, SPKCode, SPKCount, SPKPrice, KYBName, KYBMark, KYBCode,
  KYBCount, KYBPrice, MouseName, MouseMark, MouseCode, MouseCount,
  MousePrice, SoundName, SoundMark, SoundCode, SoundCount, SoundPrice,
  VGAName, VGAMark, VGACode, VGACount, VGAPrice, SCNname, SCNmark, SCNCode,
  SCNCount, SCNPrice, PRNName, PRNMark, PRNCode, PRNCount, PRNPrice,
  TVCName, TVCMark, TVCCode, TVCCount, TVCPrice, LANCName, LANCMark,
  LANCCode, LANCCount, LANCPrice, ModemName, ModemMark, ModemCode,
  ModemCount, ModemPrice, WebCamName, WebCamMark, WebCamCode, WebCamCount,
  WebCamPrice, HeadSetName, HeadSetMark, HeadSetCode, HeadSetCount,
  HeadSetPrice, MicrophoneName, MicrophoneMark, MicrophoneCode,
  MicrophoneCount, MicrophonePrice, UPSName, UPSMark, UPSCode, UPSCount,
  UPSPrice, SwitchName, SwitchMark, SwitchCode, SwitchCount, SwitchPrice,
  FloppyName, FloppyMark, FloppyCode, FloppyCount, FloppyPrice,
  ZipDriveName, ZipDriveMark, ZipDriveCode, ZipDriveCount, ZipDrivePrice,
  ExtraName, ExtraMark, ExtraCode, ExtraCount, ExtraPrice, PayKind,
  PayComments, CTotalGP, CPishPardakht, CVarantyPrice, CAsembelPrice,
  CTakhfif, CMande, CCheckPrice, CPayDate, CGetDate, CVosolDate, CCheckNo,
  CBankName, CBankAddress, CComments: String; Forzemanat: Boolean);
Var
   thisGpCode:Integer;
begin
     try
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblorder Set'  ;
                  SQL.Text := SQL.Text + 'xBuyOrderFactorNo ='  + FactorNo;
                  SQL.Text := SQL.Text + ',xDate  = '           + QuotedStr(Fillblank(BuyDate));
                  SQL.Text := SQL.Text + ',xCount = '           + Count;
                  SQL.Text := SQL.Text + ',xPersonCode_Fk = '   + SellerCode;
                  SQL.Text := SQL.Text + ',xComments        ='  +QuotedStr(OrderComments);
                  SQL.Text := SQL.Text + ',xIsSystemOrder = True ';
                  SQL.Text := SQL.Text +' where  xOrderNo_Pk_AN ='+OrderCode;
                  ExecSQL;
                  if fmDMmain.tblorder.Active Then
                     fmDMmain.tblOrder.Refresh;
             end;
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblSystemInfo Set'  ;
                  Sql.Text := Sql.Text +'xOrderNo_Fk = '+OrderCode;
                  //-----------------------------------------------------------------------
                  //---------------------------- Cpu Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CPuCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCpuCode = '   + CPuCode ;
                      SQL.Text := SQL.Text +',xCpuName = '   + QuotedStr(CpuName);
                      SQL.Text := SQL.Text +',xCpuMark = '   + QuotedStr(CpuMark);
                      SQL.Text := SQL.Text +',xCpuCount = '  + CpuCount ;
                      SQL.Text := SQL.Text +',xCpuPrice = '  + CpuPrice ;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- Ram Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(RamCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xRamCode = '  + RamCode ;
                      SQL.Text := SQL.Text +',xRamName = '  + QuotedStr(RamName);
                      SQL.Text := SQL.Text +',xRamMark = '  + QuotedStr(RamMark);
                      SQL.Text := SQL.Text +',xRamCount = ' + RamCount;
                      SQL.Text := SQL.Text +',xRamPrice = ' + RamPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- Hard Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(HardCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xHardCode = '   + HardCode;
                      SQL.Text := SQL.Text +',xHardName = '   + QuotedStr(HardName);
                      SQL.Text := SQL.Text +',xHardMark = '   + QuotedStr(HardMark);
                      SQL.Text := SQL.Text +',xHardCount = '  + HardCount;
                      SQL.Text := SQL.Text +',xHardPrice = '  + HardPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //----------------------- MainBoard Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MainCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xMainBoardCode = '  + MainCode;
                      SQL.Text := SQL.Text +',xMainBoardName = '  + QuotedStr(MainName);
                      SQL.Text := SQL.Text +',xMainBoardMark = '  + QuotedStr(MainMark);
                      SQL.Text := SQL.Text +',xMainBoardCount = ' + MainCount;
                      SQL.Text := SQL.Text +',xMainBoardPrice = ' + MainPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //------------------------  Monitor Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MonitorCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xMonitorCode = '   + MonitorCode;
                      SQL.Text := SQL.Text +',xMonitorName = '   + QuotedStr(MonitorName);
                      SQL.Text := SQL.Text +',xMonitorMark = '   + QuotedStr(MonitorMark);
                      SQL.Text := SQL.Text +',xMonitorCount = '  + MonitorCount;
                      SQL.Text := SQL.Text +',xMonitorPrice = '  + MonitorPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Case Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CaseCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCaseCode = '   + CaseCode;
                      SQL.Text := SQL.Text +',xCaseName = '   + QuotedStr(CaseName);
                      SQL.Text := SQL.Text +',xCaseMark = '   + QuotedStr(CaseMark);
                      SQL.Text := SQL.Text +',xCaseCount = '  + CaseCount;
                      SQL.Text := SQL.Text +',xCasePrice = '  + casePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- CdRom Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CDRCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCdRomCode = '   + CDRCode;
                      SQL.Text := SQL.Text +',xCdRomName = '   + QuotedStr(CDRName);
                      SQL.Text := SQL.Text +',xCdRomMark = '   + QuotedStr(CDRMark);
                      SQL.Text := SQL.Text +',xCdRomCount = '  + CDRCount;
                      SQL.Text := SQL.Text +',xCdRomPrice = '  +CDRPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- CdWriter Info ------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CDWCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCdWriterCode = '   + CDWCode;
                      SQL.Text := SQL.Text +',xCdWriterName = '   + QuotedStr(CDWName);
                      SQL.Text := SQL.Text +',xCdWriterMark = '   + QuotedStr(CDWMark);
                      SQL.Text := SQL.Text +',xCdWriterCount = '  + CDWCount;
                      SQL.Text := SQL.Text +',xCdWriterPrice = '  + CDWPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- DvdRom Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(DVDRCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xDvdRomCode = '   + DVDRCode;
                      SQL.Text := SQL.Text +',xDvdRomName = '   + QuotedStr(DVDRomName);
                      SQL.Text := SQL.Text +',xDvdRomMark = '   + QuotedStr(DVDRomMark);
                      SQL.Text := SQL.Text +',xDvdRomCount = '  + DVDROMCount;
                      SQL.Text := SQL.Text +',xDvdRomPrice = '  + DVDROMPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //------------------------- DvdWriter Info ------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(DVDWCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xDvdWriterCode = '   + DVDWCode;
                      SQL.Text := SQL.Text +',xDvdWriterName = '   + QuotedStr(DVDWRITERName);
                      SQL.Text := SQL.Text +',xDvdWriterMark = '   + QuotedStr(DVDWRITERMark);
                      SQL.Text := SQL.Text +',xDvdWriterCount = '  + DVDWRITERCount;
                      SQL.Text := SQL.Text +',xDvdWriterPrice = '  + DVDWRITERPrice;
                  end;
                  //-----------------------------------------------------------------------
                  {Becuase Of Extra Field Number}
                  Sql.Text := SQL.Text +' Where xOrderNo_Fk='+OrderCode;
                  fmBuySystem.aredCommentsEdit.Text := SQL.Text;
                  ExecSQL;

                  SQL.Clear;
                  SQL.Text := 'Update tblSystemInfo Set'  ;
                  Sql.Text := SQL.Text +'xOrderNo_Fk='+OrderCode;
                  //-----------------------------------------------------------------------
                  //---------------------------- SpK Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SPKCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xSpeakerCode = '   + SPKCode;
                      SQL.Text := SQL.Text +',xSpeakerName = '   + QuotedStr(SPKName);
                      SQL.Text := SQL.Text +',xSpeakerMark = '   + QuotedStr(SPKMark);
                      SQL.Text := SQL.Text +',xSpeakerCount = '  + SPKCount;
                      SQL.Text := SQL.Text +',xSpeakerPrice = '  + SPKPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- KYB Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(KYBCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xKeyBoardCode = '   + KYBCode;
                      SQL.Text := SQL.Text +',xKeyBoardName = '   + QuotedStr(KYBName);
                      SQL.Text := SQL.Text +',xKeyBoardMark = '   + QuotedStr(KYBMark);
                      SQL.Text := SQL.Text +',xKeyBoardCount = '  + KYBCount;
                      SQL.Text := SQL.Text +',xKeyBoardPrice = '  + KYBPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Mouse Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MouseCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xMouseCode = '   + MouseCode;
                      SQL.Text := SQL.Text +',xMouseName = '   + QuotedStr(MouseName);
                      SQL.Text := SQL.Text +',xMouseMark = '   + QuotedStr(MouseMark);
                      SQL.Text := SQL.Text +',xMouseCount = '  + MouseCount;
                      SQL.Text := SQL.Text +',xMousePrice = '  + MousePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Sound Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SoundCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xSoundCode = '   + SoundCode;
                      SQL.Text := SQL.Text +',xSoundName = '   + QuotedStr(SoundName);
                      SQL.Text := SQL.Text +',xSoundMark = '   + QuotedStr(SoundMark);
                      SQL.Text := SQL.Text +',xSoundCount = '  + SoundCount;
                      SQL.Text := SQL.Text +',xSoundPrice = '  + SoundPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- VGA Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(VGACode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xVGACode = '   + VGACode;
                      SQL.Text := SQL.Text +',xVGAName = '   + QuotedStr(VGAName);
                      SQL.Text := SQL.Text +',xVGAMark = '   + QuotedStr(VGAMark);
                      SQL.Text := SQL.Text +',xVGACount = '  + VGACount;
                      SQL.Text := SQL.Text +',xVGAPrice = '  + VGAPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- SCANNER Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SCNCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xScanerCode = '   + SCNCode;
                      SQL.Text := SQL.Text +',xScanerName = '   + QuotedStr(SCNname);
                      SQL.Text := SQL.Text +',xScanerMark = '   + QuotedStr(SCNMark);
                      SQL.Text := SQL.Text +',xScanerCount = '  + SCNCount;
                      SQL.Text := SQL.Text +',xScanerPrice = '  + SCNPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- Printer Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(PRNCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xPrinterCode = '   + PRNCode;
                      SQL.Text := SQL.Text +',xPrinterName = '   + QuotedStr(PRNName);
                      SQL.Text := SQL.Text +',xPrinterMark = '   + QuotedStr(PRNMark);
                      SQL.Text := SQL.Text +',xPrinterCount = '  + PRNCount;
                      SQL.Text := SQL.Text +',xPrinterPrice = '  + PRNPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- TVCARD Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(TVCCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xTVCARDCode = '   + TVCCode;
                      SQL.Text := SQL.Text +',xTVCARDName = '   + QuotedStr(TVCName);
                      SQL.Text := SQL.Text +',xTVCARDMark = '   + QuotedStr(TVCMark);
                      SQL.Text := SQL.Text +',xTVCARDCount = '  + TVCCount;
                      SQL.Text := SQL.Text +',xTVCARDPrice = '  + TVCPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- LANCARD Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(LANCCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xLANCARDCode = '  + LANCCode;
                      SQL.Text := SQL.Text +',xLANCARDName = '  + QuotedStr(LANCName);
                      SQL.Text := SQL.Text +',xLANCARDMark = '  + QuotedStr(LANCMark);
                      SQL.Text := SQL.Text +',xLANCARDCount = ' + LANCCount;
                      SQL.Text := SQL.Text +',xLANCARDPrice = ' + LANCPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Modem Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(ModemCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xModemCode = '   + ModemCode;
                      SQL.Text := SQL.Text +',xModemName = '   + QuotedStr(ModemName);
                      SQL.Text := SQL.Text +',xModemMark = '   + QuotedStr(ModemMark);
                      SQL.Text := SQL.Text +',xModemCount = '  + ModemCount;
                      SQL.Text := SQL.Text +',xModemPrice = '  + ModemPrice;
                  end;
                  //-----------------------------------------------------------------------
                  {Becuase Of Extra Field Number}
                  Sql.Text := SQL.Text +' Where xOrderNo_Fk='+OrderCode;
                  ExecSQL;

                  SQL.Clear;
                  SQL.Text := 'Update tblSystemInfo Set'  ;
                  Sql.Text := SQL.Text +' xOrderNo_Fk='+OrderCode;
                  //-----------------------------------------------------------------------
                  //-------------------------- WebCam Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(WebCamCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xWebcamCode = '   + WebCamCode;
                      SQL.Text := SQL.Text +',xWebcamName = '   + QuotedStr(WebCamName);
                      SQL.Text := SQL.Text +',xWebcamMark = '   + QuotedStr(WebCamMark);
                      SQL.Text := SQL.Text +',xWebcamCount = '  + WebCamCount;
                      SQL.Text := SQL.Text +',xWebcamPrice = '  + WebCamPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- HeadSet Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(HeadSetCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xHeadSetCode = '   + HeadSetCode;
                      SQL.Text := SQL.Text +',xHeadSetName = '   + QuotedStr(HeadSetName);
                      SQL.Text := SQL.Text +',xHeadSetMark = '   + QuotedStr(HeadSetMark);
                      SQL.Text := SQL.Text +',xHeadSetCount = '  + HeadSetCount;
                      SQL.Text := SQL.Text +',xHeadSetPrice = '  + HeadSetPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- Mic Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MicrophoneCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xMicrophoneCode = '   + MicrophoneCode;
                      SQL.Text := SQL.Text +',xMicrophoneName = '   + QuotedStr(MicrophoneName);
                      SQL.Text := SQL.Text +',xMicrophoneMark = '   + QuotedStr(MicrophoneMark);
                      SQL.Text := SQL.Text +',xMicrophoneCount = '  + MicrophoneCount;
                      SQL.Text := SQL.Text +',xMicrophonePrice = '  + MicrophonePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- UPS Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(UPSCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xUpsCode = '   + UPSCode;
                      SQL.Text := SQL.Text +',xUPSName = '   + QuotedStr(UPSName);
                      SQL.Text := SQL.Text +',xUpsMark = '   + QuotedStr(UPSMark);
                      SQL.Text := SQL.Text +',xUpsCount = '  + UPSCount;
                      SQL.Text := SQL.Text +',xUpsPrice = '  + UPSPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- Switch Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SwitchCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xSwitchCode = '   + SwitchCode ;
                      SQL.Text := SQL.Text +',xSwitchName = '   + QuotedStr(SwitchName);
                      SQL.Text := SQL.Text +',xSwitchMark = '   + QuotedStr(SwitchMark);
                      SQL.Text := SQL.Text +',xSwitchCount = '  + SwitchCount;
                      SQL.Text := SQL.Text +',xSwitchPrice = '  + SwitchPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- FDD Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(FloppyCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xFloppyCode = '   + FloppyCode;
                      SQL.Text := SQL.Text +',xFloppyName = '   + QuotedStr(FloppyName);
                      SQL.Text := SQL.Text +',xFloppyMark = '   + QuotedStr(FloppyMark);
                      SQL.Text := SQL.Text +',xFloppyCount = '  + FloppyCount;
                      SQL.Text := SQL.Text +',xFloppyPrice = '  + FloppyPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- ZipDrive Info ------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(ZipDriveCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xZipDriveCode = '   + ZipDriveCode;
                      SQL.Text := SQL.Text +',xZipDriveName = '   + QuotedStr(ZipDriveName);
                      SQL.Text := SQL.Text +',xZipDriveMark = '   + QuotedStr(ZipDriveMark);
                      SQL.Text := SQL.Text +',xZipDriveCount = '  + ZipDriveCount;
                      SQL.Text := SQL.Text +',xZipDrivePrice = '  + ZipDrivePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Extra Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(ExtraCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xOtherDevice1Code = '   + ExtraCode;
                      SQL.Text := SQL.Text +',xOtherDevice1Name = '   + QuotedStr(ExtraName);
                      SQL.Text := SQL.Text +',xOtherDevice1Mark = '   + QuotedStr(ExtraMark);
                      SQL.Text := SQL.Text +',xOtherDevice1Count = '  + ExtraCount;
                      SQL.Text := SQL.Text +',xOtherDevice1Price = '  + ExtraPrice;
                  end;
                  Sql.Text := SQL.Text +' Where xOrderNo_Fk='+OrderCode;

                  ExecSQL;
                  if fmDMmain.tblSystemInfo.Active Then
                     fmDMmain.tblSystemInfo.Refresh;
             end;
             //--------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblGp Set'  ;
                  SQL.Text := SQL.Text +'xGpKind = '    + QuotedStr(PayKind);
                  SQL.Text := SQL.Text +',xComments = ' + QuotedStr(PayComments);
                  ExecSQL;
                  if fmDMmain.tblGp.Active Then
                     fmDMmain.tblGp.Refresh;
             end;
             //-------------------------------------------
             with fmDMmain.tblGp do
             begin
                  if not Active Then
                     Open;
                  Locate('xOrderCode_Fk',StrToint(OrderCode),[]);
                  thisGpCode := FieldByName('xGPCode_Pk_AN').AsInteger;
             end;
             //-----------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblChecks Set'  ;
                  SQL.Text := SQL.Text +'xTotalGP = '             + CTotalGP;
                  SQL.Text := SQL.Text +',xPishPardakht = '       + CPishPardakht;
                  SQL.Text := SQL.Text +',xvarantyPrice = '       + CVarantyPrice;
                  SQL.Text := SQL.Text +',xAsemblePrice = '       + CAsembelPrice;
                  SQL.Text := SQL.Text +',xTakhfif = '            + CTakhfif;
                  SQL.Text := SQL.Text +',xMande = '              + CMande;
                  SQL.Text := SQL.Text +',xCheckNo = '            + QuotedStr(CCheckNo);
                  SQL.Text := SQL.Text +',xCheckPirce = '         + CCheckPrice;
                  SQL.Text := SQL.Text +',xCheckVosolDate = '     + QuotedStr(Fillblank(CVosolDate));
                  SQL.Text := SQL.Text +',xCheckTahvilDate = '    + QuotedStr(Fillblank(CGetDate));
                  SQL.Text := SQL.Text +',xPayDate = '            + QuotedStr(Fillblank(CPayDate));
                  SQL.Text := SQL.Text +',xCheckBank = '          + QuotedStr(CBankName);
                  SQL.Text := SQL.Text +',xBankaddress = '        + QuotedStr(CBankAddress);
                  SQL.Text := SQL.Text +',xIsCheckForZemanat = '  + BoolToStr(Forzemanat);
                  SQL.Text := SQL.Text +',xComment = '            + QuotedStr(CComments);
                  SQL.Text := SQL.Text +' Where xGpCode_Fk =' + IntToStr(thisGpCode);
                  ExecSQL;
                  if fmDMmain.tblChecks.Active Then
                     fmDMmain.tblChecks.Refresh;
             end;
            fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ‘œ',HbtInformation);             
     except
           on E:Exception Do fmDMmain.MessageDialog.Show('œ— À»  ÊÌ—«Ì‘ «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError);
     end;

end;

class procedure TDefSystemBuyOrder.UpdateNValues(OrderCode,
  FactorNo, BuyDate, Count, SellerCode: String; SystemOrder: Boolean;
  OrderComments, CpuName, CpuMark, CPuCode, CpuCount, CpuPrice, RamName,
  RamMark, RamCode, RamCount, RamPrice, HardName, Hardmark, HardCode,
  HardCount, HardPrice, MainName, MainMark, MainCode, MainCount, MainPrice,
  MonitorName, MonitorMark, MonitorCode, MonitorCount, MonitorPrice,
  Casename, CaseMark, CaseCode, CaseCount, casePrice, CDRName, CDRMark,
  CDRCode, CDRCount, CDRPrice, CDWName, CDWMark, CDWCode, CDWCount,
  CDWPrice, DVDRomName, DVDRomMark, DVDRCode, DVDROMCount, DVDROMPrice,
  DVDWRITERName, DVDWRITERMark, DVDWCode, DVDWRITERCount, DVDWRITERPrice,
  SPKName, SPKMark, SPKCode, SPKCount, SPKPrice, KYBName, KYBMark, KYBCode,
  KYBCount, KYBPrice, MouseName, MouseMark, MouseCode, MouseCount,
  MousePrice, SoundName, SoundMark, SoundCode, SoundCount, SoundPrice,
  VGAName, VGAMark, VGACode, VGACount, VGAPrice, SCNname, SCNmark, SCNCode,
  SCNCount, SCNPrice, PRNName, PRNMark, PRNCode, PRNCount, PRNPrice,
  TVCName, TVCMark, TVCCode, TVCCount, TVCPrice, LANCName, LANCMark,
  LANCCode, LANCCount, LANCPrice, ModemName, ModemMark, ModemCode,
  ModemCount, ModemPrice, WebCamName, WebCamMark, WebCamCode, WebCamCount,
  WebCamPrice, HeadSetName, HeadSetMark, HeadSetCode, HeadSetCount,
  HeadSetPrice, MicrophoneName, MicrophoneMark, MicrophoneCode,
  MicrophoneCount, MicrophonePrice, UPSName, UPSMark, UPSCode, UPSCount,
  UPSPrice, SwitchName, SwitchMark, SwitchCode, SwitchCount, SwitchPrice,
  FloppyName, FloppyMark, FloppyCode, FloppyCount, FloppyPrice,
  ZipDriveName, ZipDriveMark, ZipDriveCode, ZipDriveCount, ZipDrivePrice,
  ExtraName, ExtraMark, ExtraCode, ExtraCount, ExtraPrice, PayKind,
  PayComments, NTotalGP, NPishPardakht, NVarantyPrice, NAsembelPrice,
  NTakhfif, NMande, NPayDate, NComments: String);
Var
   thisGpCode:Integer;
begin
     try
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblorder Set'  ;
                  SQL.Text := SQL.Text + 'xBuyOrderFactorNo ='  + FactorNo;
                  SQL.Text := SQL.Text + ',xDate  = '           + QuotedStr(Fillblank(BuyDate));
                  SQL.Text := SQL.Text + ',xCount = '           + Count;
                  SQL.Text := SQL.Text + ',xPersonCode_Fk = '   + SellerCode;
                  SQL.Text := SQL.Text + ',xComments        ='  +QuotedStr(OrderComments);
                  SQL.Text := SQL.Text + ',xIsSystemOrder = True ';
                  SQL.Text := SQL.Text +' where  xOrderNo_Pk_AN ='+OrderCode;
                  ExecSQL;
                  if fmDMmain.tblOrder.Active Then
                     fmDMmain.tblOrder.Refresh;
             end;
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblSystemInfo Set'  ;
                  Sql.Text := Sql.Text +'xOrderNo_Fk = '+OrderCode;
                  //-----------------------------------------------------------------------
                  //---------------------------- Cpu Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CPuCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCpuCode = '   + CPuCode ;
                      SQL.Text := SQL.Text +',xCpuName = '   + QuotedStr(CpuName);
                      SQL.Text := SQL.Text +',xCpuMark = '   + QuotedStr(CpuMark);
                      SQL.Text := SQL.Text +',xCpuCount = '  + CpuCount ;
                      SQL.Text := SQL.Text +',xCpuPrice = '  + CpuPrice ;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- Ram Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(RamCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xRamCode = '  + RamCode ;
                      SQL.Text := SQL.Text +',xRamName = '  + QuotedStr(RamName);
                      SQL.Text := SQL.Text +',xRamMark = '  + QuotedStr(RamMark);
                      SQL.Text := SQL.Text +',xRamCount = ' + RamCount;
                      SQL.Text := SQL.Text +',xRamPrice = ' + RamPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- Hard Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(HardCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xHardCode = '   + HardCode;
                      SQL.Text := SQL.Text +',xHardName = '   + QuotedStr(HardName);
                      SQL.Text := SQL.Text +',xHardMark = '   + QuotedStr(HardMark);
                      SQL.Text := SQL.Text +',xHardCount = '  + HardCount;
                      SQL.Text := SQL.Text +',xHardPrice = '  + HardPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //----------------------- MainBoard Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MainCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xMainBoardCode = '  + MainCode;
                      SQL.Text := SQL.Text +',xMainBoardName = '  + QuotedStr(MainName);
                      SQL.Text := SQL.Text +',xMainBoardMark = '  + QuotedStr(MainMark);
                      SQL.Text := SQL.Text +',xMainBoardCount = ' + MainCount;
                      SQL.Text := SQL.Text +',xMainBoardPrice = ' + MainPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //------------------------  Monitor Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MonitorCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xMonitorCode = '   + MonitorCode;
                      SQL.Text := SQL.Text +',xMonitorName = '   + QuotedStr(MonitorName);
                      SQL.Text := SQL.Text +',xMonitorMark = '   + QuotedStr(MonitorMark);
                      SQL.Text := SQL.Text +',xMonitorCount = '  + MonitorCount;
                      SQL.Text := SQL.Text +',xMonitorPrice = '  + MonitorPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Case Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CaseCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCaseCode = '   + CaseCode;
                      SQL.Text := SQL.Text +',xCaseName = '   + QuotedStr(CaseName);
                      SQL.Text := SQL.Text +',xCaseMark = '   + QuotedStr(CaseMark);
                      SQL.Text := SQL.Text +',xCaseCount = '  + CaseCount;
                      SQL.Text := SQL.Text +',xCasePrice = '  + casePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- CdRom Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CDRCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCdRomCode = '   + CDRCode;
                      SQL.Text := SQL.Text +',xCdRomName = '   + QuotedStr(CDRName);
                      SQL.Text := SQL.Text +',xCdRomMark = '   + QuotedStr(CDRMark);
                      SQL.Text := SQL.Text +',xCdRomCount = '  + CDRCount;
                      SQL.Text := SQL.Text +',xCdRomPrice = '  +CDRPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- CdWriter Info ------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CDWCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCdWriterCode = '   + CDWCode;
                      SQL.Text := SQL.Text +',xCdWriterName = '   + QuotedStr(CDWName);
                      SQL.Text := SQL.Text +',xCdWriterMark = '   + QuotedStr(CDWMark);
                      SQL.Text := SQL.Text +',xCdWriterCount = '  + CDWCount;
                      SQL.Text := SQL.Text +',xCdWriterPrice = '  + CDWPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- DvdRom Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(DVDRCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xDvdRomCode = '   + DVDRCode;
                      SQL.Text := SQL.Text +',xDvdRomName = '   + QuotedStr(DVDRomName);
                      SQL.Text := SQL.Text +',xDvdRomMark = '   + QuotedStr(DVDRomMark);
                      SQL.Text := SQL.Text +',xDvdRomCount = '  + DVDROMCount;
                      SQL.Text := SQL.Text +',xDvdRomPrice = '  + DVDROMPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //------------------------- DvdWriter Info ------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(DVDWCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xDvdWriterCode = '   + DVDWCode;
                      SQL.Text := SQL.Text +',xDvdWriterName = '   + QuotedStr(DVDWRITERName);
                      SQL.Text := SQL.Text +',xDvdWriterMark = '   + QuotedStr(DVDWRITERMark);
                      SQL.Text := SQL.Text +',xDvdWriterCount = '  + DVDWRITERCount;
                      SQL.Text := SQL.Text +',xDvdWriterPrice = '  + DVDWRITERPrice;
                  end;
                  //-----------------------------------------------------------------------
                  {Becuase Of Extra Field Number}
                  Sql.Text := SQL.Text +' Where xOrderNo_Fk='+OrderCode;
                  fmBuySystem.aredCommentsEdit.Text := SQL.Text;
                  ExecSQL;

                  SQL.Clear;
                  SQL.Text := 'Update tblSystemInfo Set'  ;
                  Sql.Text := SQL.Text +'xOrderNo_Fk='+OrderCode;
                  //-----------------------------------------------------------------------
                  //---------------------------- SpK Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SPKCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xSpeakerCode = '   + SPKCode;
                      SQL.Text := SQL.Text +',xSpeakerName = '   + QuotedStr(SPKName);
                      SQL.Text := SQL.Text +',xSpeakerMark = '   + QuotedStr(SPKMark);
                      SQL.Text := SQL.Text +',xSpeakerCount = '  + SPKCount;
                      SQL.Text := SQL.Text +',xSpeakerPrice = '  + SPKPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- KYB Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(KYBCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xKeyBoardCode = '   + KYBCode;
                      SQL.Text := SQL.Text +',xKeyBoardName = '   + QuotedStr(KYBName);
                      SQL.Text := SQL.Text +',xKeyBoardMark = '   + QuotedStr(KYBMark);
                      SQL.Text := SQL.Text +',xKeyBoardCount = '  + KYBCount;
                      SQL.Text := SQL.Text +',xKeyBoardPrice = '  + KYBPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Mouse Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MouseCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xMouseCode = '   + MouseCode;
                      SQL.Text := SQL.Text +',xMouseName = '   + QuotedStr(MouseName);
                      SQL.Text := SQL.Text +',xMouseMark = '   + QuotedStr(MouseMark);
                      SQL.Text := SQL.Text +',xMouseCount = '  + MouseCount;
                      SQL.Text := SQL.Text +',xMousePrice = '  + MousePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Sound Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SoundCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xSoundCode = '   + SoundCode;
                      SQL.Text := SQL.Text +',xSoundName = '   + QuotedStr(SoundName);
                      SQL.Text := SQL.Text +',xSoundMark = '   + QuotedStr(SoundMark);
                      SQL.Text := SQL.Text +',xSoundCount = '  + SoundCount;
                      SQL.Text := SQL.Text +',xSoundPrice = '  + SoundPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- VGA Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(VGACode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xVGACode = '   + VGACode;
                      SQL.Text := SQL.Text +',xVGAName = '   + QuotedStr(VGAName);
                      SQL.Text := SQL.Text +',xVGAMark = '   + QuotedStr(VGAMark);
                      SQL.Text := SQL.Text +',xVGACount = '  + VGACount;
                      SQL.Text := SQL.Text +',xVGAPrice = '  + VGAPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- SCANNER Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SCNCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xScanerCode = '   + SCNCode;
                      SQL.Text := SQL.Text +',xScanerName = '   + QuotedStr(SCNname);
                      SQL.Text := SQL.Text +',xScanerMark = '   + QuotedStr(SCNMark);
                      SQL.Text := SQL.Text +',xScanerCount = '  + SCNCount;
                      SQL.Text := SQL.Text +',xScanerPrice = '  + SCNPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- Printer Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(PRNCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xPrinterCode = '   + PRNCode;
                      SQL.Text := SQL.Text +',xPrinterName = '   + QuotedStr(PRNName);
                      SQL.Text := SQL.Text +',xPrinterMark = '   + QuotedStr(PRNMark);
                      SQL.Text := SQL.Text +',xPrinterCount = '  + PRNCount;
                      SQL.Text := SQL.Text +',xPrinterPrice = '  + PRNPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- TVCARD Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(TVCCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xTVCARDCode = '   + TVCCode;
                      SQL.Text := SQL.Text +',xTVCARDName = '   + QuotedStr(TVCName);
                      SQL.Text := SQL.Text +',xTVCARDMark = '   + QuotedStr(TVCMark);
                      SQL.Text := SQL.Text +',xTVCARDCount = '  + TVCCount;
                      SQL.Text := SQL.Text +',xTVCARDPrice = '  + TVCPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- LANCARD Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(LANCCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xLANCARDCode = '  + LANCCode;
                      SQL.Text := SQL.Text +',xLANCARDName = '  + QuotedStr(LANCName);
                      SQL.Text := SQL.Text +',xLANCARDMark = '  + QuotedStr(LANCMark);
                      SQL.Text := SQL.Text +',xLANCARDCount = ' + LANCCount;
                      SQL.Text := SQL.Text +',xLANCARDPrice = ' + LANCPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Modem Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(ModemCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xModemCode = '   + ModemCode;
                      SQL.Text := SQL.Text +',xModemName = '   + QuotedStr(ModemName);
                      SQL.Text := SQL.Text +',xModemMark = '   + QuotedStr(ModemMark);
                      SQL.Text := SQL.Text +',xModemCount = '  + ModemCount;
                      SQL.Text := SQL.Text +',xModemPrice = '  + ModemPrice;
                  end;
                  //-----------------------------------------------------------------------
                  {Becuase Of Extra Field Number}
                  Sql.Text := SQL.Text +' Where xOrderNo_Fk='+OrderCode;
                  ExecSQL;

                  SQL.Clear;
                  SQL.Text := 'Update tblSystemInfo Set'  ;
                  Sql.Text := SQL.Text +' xOrderNo_Fk='+OrderCode;
                  //-----------------------------------------------------------------------
                  //-------------------------- WebCam Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(WebCamCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xWebcamCode = '   + WebCamCode;
                      SQL.Text := SQL.Text +',xWebcamName = '   + QuotedStr(WebCamName);
                      SQL.Text := SQL.Text +',xWebcamMark = '   + QuotedStr(WebCamMark);
                      SQL.Text := SQL.Text +',xWebcamCount = '  + WebCamCount;
                      SQL.Text := SQL.Text +',xWebcamPrice = '  + WebCamPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- HeadSet Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(HeadSetCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xHeadSetCode = '   + HeadSetCode;
                      SQL.Text := SQL.Text +',xHeadSetName = '   + QuotedStr(HeadSetName);
                      SQL.Text := SQL.Text +',xHeadSetMark = '   + QuotedStr(HeadSetMark);
                      SQL.Text := SQL.Text +',xHeadSetCount = '  + HeadSetCount;
                      SQL.Text := SQL.Text +',xHeadSetPrice = '  + HeadSetPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- Mic Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MicrophoneCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xMicrophoneCode = '   + MicrophoneCode;
                      SQL.Text := SQL.Text +',xMicrophoneName = '   + QuotedStr(MicrophoneName);
                      SQL.Text := SQL.Text +',xMicrophoneMark = '   + QuotedStr(MicrophoneMark);
                      SQL.Text := SQL.Text +',xMicrophoneCount = '  + MicrophoneCount;
                      SQL.Text := SQL.Text +',xMicrophonePrice = '  + MicrophonePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- UPS Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(UPSCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xUpsCode = '   + UPSCode;
                      SQL.Text := SQL.Text +',xUPSName = '   + QuotedStr(UPSName);
                      SQL.Text := SQL.Text +',xUpsMark = '   + QuotedStr(UPSMark);
                      SQL.Text := SQL.Text +',xUpsCount = '  + UPSCount;
                      SQL.Text := SQL.Text +',xUpsPrice = '  + UPSPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- Switch Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SwitchCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xSwitchCode = '   + SwitchCode ;
                      SQL.Text := SQL.Text +',xSwitchName = '   + QuotedStr(SwitchName);
                      SQL.Text := SQL.Text +',xSwitchMark = '   + QuotedStr(SwitchMark);
                      SQL.Text := SQL.Text +',xSwitchCount = '  + SwitchCount;
                      SQL.Text := SQL.Text +',xSwitchPrice = '  + SwitchPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- FDD Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(FloppyCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xFloppyCode = '   + FloppyCode;
                      SQL.Text := SQL.Text +',xFloppyName = '   + QuotedStr(FloppyName);
                      SQL.Text := SQL.Text +',xFloppyMark = '   + QuotedStr(FloppyMark);
                      SQL.Text := SQL.Text +',xFloppyCount = '  + FloppyCount;
                      SQL.Text := SQL.Text +',xFloppyPrice = '  + FloppyPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- ZipDrive Info ------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(ZipDriveCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xZipDriveCode = '   + ZipDriveCode;
                      SQL.Text := SQL.Text +',xZipDriveName = '   + QuotedStr(ZipDriveName);
                      SQL.Text := SQL.Text +',xZipDriveMark = '   + QuotedStr(ZipDriveMark);
                      SQL.Text := SQL.Text +',xZipDriveCount = '  + ZipDriveCount;
                      SQL.Text := SQL.Text +',xZipDrivePrice = '  + ZipDrivePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Extra Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(ExtraCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xOtherDevice1Code = '   + ExtraCode;
                      SQL.Text := SQL.Text +',xOtherDevice1Name = '   + QuotedStr(ExtraName);
                      SQL.Text := SQL.Text +',xOtherDevice1Mark = '   + QuotedStr(ExtraMark);
                      SQL.Text := SQL.Text +',xOtherDevice1Count = '  + ExtraCount;
                      SQL.Text := SQL.Text +',xOtherDevice1Price = '  + ExtraPrice;
                  end;
                  Sql.Text := SQL.Text +' Where xOrderNo_Fk='+OrderCode;

                  ExecSQL;
                  if fmDMmain.tblSystemInfo.Active Then
                     fmDMmain.tblSystemInfo.Refresh;
             end;
             //--------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblGp Set'  ;
                  SQL.Text := SQL.Text +'xGpKind = '    + QuotedStr(PayKind);
                  SQL.Text := SQL.Text +',xComments = ' + QuotedStr(PayComments);
                  ExecSQL;
                  if fmDMmain.tblGp.Active Then
                     fmDMmain.tblGp.Refresh;
             end;
             //-------------------------------------------
             with fmDMmain.tblGp do
             begin
                  if not Active Then
                     Open;
                  Locate('xOrderCode_Fk',StrToint(OrderCode),[]);
                  thisGpCode := FieldByName('xGPCode_Pk_AN').AsInteger;
             end;
             //-----------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblNaghd Set'  ;
                  SQL.Text := SQL.Text +'xTotalGP = '         + NTotalGP;
                  SQL.Text := SQL.Text +',xPishPardakht = '   + NPishPardakht;
                  SQL.Text := SQL.Text +',xvarantyPrice = '   + NVarantyPrice;
                  SQL.Text := SQL.Text +',xAsemblePrice = '   + NAsembelPrice;
                  SQL.Text := SQL.Text +',xTakhfif = '        + NTakhfif;
                  SQL.Text := SQL.Text +',xMande = '          + NMande;
                  SQL.Text := SQL.Text +',xPayDate = '        + QuotedStr(Fillblank(NPayDate));
                  SQL.Text := SQL.Text +',xComment = '        + QuotedStr(NComments);
                  SQL.Text := SQL.Text +' Where xGpCode_Fk =' + IntToStr(thisGpCode);
                  ExecSQL;
                  if fmDMmain.tblNaghd.Active Then
                     fmDMmain.tblNaghd.Refresh;
             end;
            fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ‘œ',HbtInformation);             
     except
           on E:Exception Do fmDMmain.MessageDialog.Show('œ— À»  ÊÌ—«Ì‘ «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError)
     end;

end;

{ TDefSystemSellOrder }


class procedure TDefSystemSellOrder.InsertAValues(FactorNo, SellDate,
  Count, CustomerCode: String; SystemOrder: Boolean; OrderComments,
  CpuName, CpuMark, CPuCode, CpuCount, CpuPrice, RamName, RamMark, RamCode,
  RamCount, RamPrice, HardName, Hardmark, HardCode, HardCount, HardPrice,
  MainName, MainMark, MainCode, MainCount, MainPrice, MonitorName,
  MonitorMark, MonitorCode, MonitorCount, MonitorPrice, Casename, CaseMark,
  CaseCode, CaseCount, casePrice, CDRName, CDRMark, CDRCode, CDRCount,
  CDRPrice, CDWName, CDWMark, CDWCode, CDWCount, CDWPrice, DVDRomName,
  DVDRomMark, DVDRCode, DVDROMCount, DVDROMPrice, DVDWRITERName,
  DVDWRITERMark, DVDWCode, DVDWRITERCount, DVDWRITERPrice, SPKName,
  SPKMark, SPKCode, SPKCount, SPKPrice, KYBName, KYBMark, KYBCode,
  KYBCount, KYBPrice, MouseName, MouseMark, MouseCode, MouseCount,
  MousePrice, SoundName, SoundMark, SoundCode, SoundCount, SoundPrice,
  VGAName, VGAMark, VGACode, VGACount, VGAPrice, SCNname, SCNmark, SCNCode,
  SCNCount, SCNPrice, PRNName, PRNMark, PRNCode, PRNCount, PRNPrice,
  TVCName, TVCMark, TVCCode, TVCCount, TVCPrice, LANCName, LANCMark,
  LANCCode, LANCCount, LANCPrice, ModemName, ModemMark, ModemCode,
  ModemCount, ModemPrice, WebCamName, WebCamMark, WebCamCode, WebCamCount,
  WebCamPrice, HeadSetName, HeadSetMark, HeadSetCode, HeadSetCount,
  HeadSetPrice, MicrophoneName, MicrophoneMark, MicrophoneCode,
  MicrophoneCount, MicrophonePrice, UPSName, UPSMark, UPSCode, UPSCount,
  UPSPrice, SwitchName, SwitchMark, SwitchCode, SwitchCount, SwitchPrice,
  FloppyName, FloppyMark, FloppyCode, FloppyCount, FloppyPrice,
  ZipDriveName, ZipDriveMark, ZipDriveCode, ZipDriveCount, ZipDrivePrice,
  ExtraName, ExtraMark, ExtraCode, ExtraCount, ExtraPrice, PayKind,
  PayComments, ATotalGP, APishPardakht, AVarantyPrice, AAsembelPrice,
  ATakhfif, AMande, ASarResidDay, AghsatPrice, APayDate, AStartDate,
  AEndDate, AComments: String);
Var
   thisOrderNo,thisPayKind:Integer;
begin
     with fmDMmain Do
     begin
          try
              with tblOrder do
              begin
                   if not Active Then
                      Open;
                   Insert;

                   FieldByName('xSellFactorNo').AsInteger := StrToint(FactorNo);
                   FieldByName('xDate').AsString := Fillblank(SellDate) ;
                   FieldByName('xCount').AsInteger := StrToint(Count);
                   FieldByName('xPersonCode_Fk').AsInteger := StrToint(CustomerCode);
                   FieldByName('xIsSystemOrder').AsBoolean := SystemOrder;
                   FieldByName('xComments').AsString := OrderComments;

                   Post;
                   Locate('xSellFactorNo',FactorNo,[]);
                   thisOrderNo := FieldByName('xOrderNo_Pk_AN').AsInteger;
              end;
              with tblSystemInfo do
              begin
                       if not Active Then
                          Open;
                       Insert;
                       FieldByName('xOrderNo_Fk').AsInteger := thisOrderNo;

                       //------------------------------------------------------------------
                       //-------------------------- CPU Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(CPuCode)<>'' Then
                       begin
                           FieldByName('xCpuCode').AsInteger  := StrToint(CPuCode);
                           FieldByName('xCpuName').AsString   := CpuName;
                           FieldByName('xCpuMark').AsString   := CpuMark;
                           FieldByName('xCpuCount').AsInteger := StrToint(CpuCount) ;
                           FieldByName('xCpuPrice').AsFloat   := StrToFloat(CpuPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- RAM INFO -------------------------------
                       //------------------------------------------------------------------
                       if Trim(RamCode) <>'' Then
                       begin
                           FieldByName('xRamCode').AsInteger  := StrToint(RamCode);
                           FieldByName('xRamName').AsString   := RamName;
                           FieldByName('xRamMark').AsString   := RamMark;
                           FieldByName('xRamCount').AsInteger := StrToint(RamCount);
                           FieldByName('xRamPrice').AsFloat   := StrToFloat(RamPrice);
                       end;
                       //------------------------------------------------------------------
                       //-------------------------- Hard Info -----------------------------
                       //------------------------------------------------------------------
                       if Trim(HardCode) <> '' Then
                       begin
                           FieldByName('xHardCode').AsInteger  := StrToint(HardCode);
                           FieldByName('xHardName').AsString   := HardName;
                           FieldByName('xHardMark').AsString   := HardMark;
                           FieldByName('xHardCount').AsInteger := StrToint(HardCount);
                           FieldByName('xHardPrice').AsFloat   := StrToFloat(HardPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- MainBoard Info -------------------------
                       //------------------------------------------------------------------
                       if Trim(MainCode) <> '' Then
                       begin
                           FieldByName('xMainBoardCode').AsInteger  := StrToint(MainCode);
                           FieldByName('xMainBoardName').AsString   := MainName;
                           FieldByName('xMainBoardMark').AsString   := MainMark;
                           FieldByName('xMainBoardCount').AsInteger := StrToint(MainCount);
                           FieldByName('xMainBoardPrice').AsFloat   := StrToFloat(MainPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- Monitor Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(MonitorCode) <> '' Then
                       begin
                           FieldByName('xMonitorCode').AsInteger  := StrToint(MonitorCode);
                           FieldByName('xMonitorName').AsString   := MonitorName;
                           FieldByName('xMonitorMark').AsString   := MonitorMark;
                           FieldByName('xMonitorCount').AsInteger := StrToint(MonitorCount);
                           FieldByName('xMonitorPrice').AsFloat   := StrToFloat(MonitorPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- Case Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(CaseCode) <> '' Then
                       begin
                           FieldByName('xCaseCode').AsInteger  := StrToint(CaseCode);
                           FieldByName('xCaseName').AsString   := Casename;
                           FieldByName('xCaseMark').AsString   := CaseMark;
                           FieldByName('xCaseCount').AsInteger := StrToint(CaseCount);
                           FieldByName('xCasePrice').AsFloat   := StrToFloat(casePrice);
                       end;
                       //------------------------------------------------------------------
                       //-------------------------- CdROM Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(CDRCode) <> '' Then
                       begin
                           FieldByName('xCDRomCode').AsInteger  := StrToint(CDRCode);
                           FieldByName('xCDRomName').AsString   := CDRName;
                           FieldByName('xCDRomMark').AsString   := CDRMark;
                           FieldByName('xCDRomCount').AsInteger := StrToint(CDRCount);
                           FieldByName('xCDRomPrice').AsFloat   := StrToFloat(CDRPrice);
                       end;
                       //------------------------------------------------------------------
                       //--------------------------CDWriter Info --------------------------
                       //------------------------------------------------------------------
                       if Trim(CDWCode) <> '' Then
                       begin
                           FieldByName('xCDWriterCode').AsInteger:= StrToInt(CDWCode);
                           FieldByName('xCdWriterName').AsString := CDWName;
                           FieldByName('xCDWriterMark').AsString := CDWMark;
                           FieldByName('xCdWriterCount').AsInteger := StrToint(CDWCount);
                           FieldByName('xCdWriterPrice').AsFloat := StrToFloat(CDWPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- DVDRom Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(DVDRCode) <> '' Then
                       begin
                           FieldByName('xDvdRomCode').AsInteger  := StrToint(DVDRCode);
                           FieldByName('xDvdRomName').AsString   := DVDRomName;
                           FieldByName('xDvdRomMark').AsString   := DVDRomMark;
                           FieldByName('xDvdRomCount').AsInteger := StrToint(DVDROMCount);
                           FieldByName('xDvdRomPrice').AsFloat   := StrToFloat(DVDROMPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ DVDWriter Info --------------------------
                       //------------------------------------------------------------------
                       if Trim(DVDWCode) <> '' Then
                       begin
                           FieldByName('xDvdWriterCode').AsInteger  := StrToint(DVDWCode);
                           FieldByName('xDvdWriterName').AsString   := DVDWRITERName;
                           FieldByName('xDvdWriterMark').AsString   := DVDWRITERMark;
                           FieldByName('xDvdWriterCount').AsInteger := StrToint(DVDWRITERCount);
                           FieldByName('xDvdWriterprice').AsFloat   := StrToFloat(DVDWRITERPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Speaker Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(SPKCode) <> '' Then
                       begin
                           FieldByName('xSpeakerCode').AsInteger  := StrToint(SPKCode);
                           FieldByName('xSpeakerName').AsString   := SPKName;
                           FieldByName('xSpeakerMark').AsString   := SPKMark;
                           FieldByName('xSpeakerCount').AsInteger := StrToint(SPKCount);
                           FieldByName('xSpeakerPrice').AsFloat   := StrToFloat(SPKPrice);
                       end;
                       //------------------------------------------------------------------
                       //----------------------- KeyBoard Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(KYBCode) <> '' Then
                       begin
                           FieldByName('xKeyBoardCode').AsInteger  := StrToint(KYBCode);
                           FieldByName('xKeyBoardName').AsString   := KYBName;
                           FieldByName('xKeyBoardMark').AsString   := KYBMark;
                           FieldByName('xKeyBoardCount').AsInteger := StrToint(KYBCount);
                           FieldByName('xKeyBoardPrice').AsFloat   := StrToFloat(KYBPrice);
                       end;
                       //------------------------------------------------------------------
                       //----------------------- Mouse Info -------------------------------
                       //------------------------------------------------------------------
                       if Trim(MouseCode) <> '' Then
                       begin
                           FieldByName('xMouseCode').AsInteger   := StrToint(MouseCode);
                           FieldByName('xMouseName').AsString    := MouseName;
                           FieldByName('xMouseMark').AsString    := MouseMark;
                           FieldByName('xMouseCount').AsInteger  := StrToint(MouseCount);
                           FieldByName('xMouseprice').AsFloat    := StrToFloat(MousePrice);
                       end;
                       //------------------------------------------------------------------
                       //--------------------- Sound Info ---------------------------------
                       //------------------------------------------------------------------
                       if Trim(SoundCode) <> '' Then
                       begin
                           FieldByName('xSoundCode').AsInteger  := StrToint(SoundCode);
                           FieldByName('xSoundName').AsString   := SoundName;
                           FieldByName('xSoundMark').AsString   := SoundMark;
                           FieldByName('xSoundCount').AsInteger := StrToint(SoundCount);
                           FieldByName('xSoundPrice').AsFloat   := StrToFloat(SoundPrice);
                       end;
                       //------------------------------------------------------------------
                       //--------------------- Scanner Info -------------------------------
                       //------------------------------------------------------------------
                       if Trim(SCNCode) <> '' Then
                       begin
                           FieldByName('xScanerCode').AsInteger  := StrToint(SCNCode);
                           FieldByName('xScanerName').AsString   := SCNname;
                           FieldByName('xScanerMark').AsString   := SCNmark;
                           FieldByName('xScanerCount').AsInteger := StrToint(SCNCount);
                           FieldByName('xScanerprice').AsFloat   := StrToFloat(SCNPrice);
                       end;
                       //------------------------------------------------------------------
                       //---------------------- Printer Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(PRNCode) <> '' Then
                       begin
                           FieldByName('xPrinterCode').AsInteger  := StrToint(PRNCode);
                           FieldByName('xPrinterName').AsString   := PRNName;
                           FieldByName('xPrinterMark').AsString   := PRNMark;
                           FieldByName('xPrinterCount').AsInteger := StrToint(PRNCount);
                           FieldByName('xPrinterPrice').AsFloat   := StrToFloat(PRNPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ VGA Info --------------------------------
                       //------------------------------------------------------------------
                       if Trim(VGACode) <> '' Then
                       begin
                           FieldByName('xVGACode').AsInteger   := StrToint(VGACode);
                           FieldByName('xVgaName').AsString    := VGAName;
                           FieldByName('xVgaMark').AsString    := VGAMark;
                           FieldByName('xVgaCount').AsInteger  := StrToint(VGACount);
                           FieldByName('xVgaPrice').AsFloat    := StrToFloat(VGAPrice);
                       end;
                       //------------------------------------------------------------------
                       //----------------------- TV Card Info -----------------------------
                       //------------------------------------------------------------------
                       if Trim(TVCCode) <> '' Then
                       begin
                           FieldByName('xTVCARDCode').AsInteger  := StrToint(TVCCode);
                           FieldByName('xTVCARDName').AsString   := TVCName;
                           FieldByName('xTVCARDMark').AsString   := TVCMark;
                           FieldByName('xTVCARDCount').AsInteger := StrToint(TVCCount);
                           FieldByName('xTVCARDPrice').AsFloat   := StrToFloat(TVCPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ LAN Card Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(LANCCode) <> '' Then
                       begin
                           FieldByName('xLANCARDCode').AsInteger  := StrToint(LANCCode);
                           FieldByName('xLANCARDName').AsString   := LANCName;
                           FieldByName('xLANCARDMark').AsString   := LANCMark;
                           FieldByName('xLANCARDCount').AsInteger := StrToint(LANCCount);
                           FieldByName('xLANCARDPrice').AsFloat   := StrToFloat(LANCPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Modem Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(ModemCode) <> '' Then
                       begin
                           FieldByName('xModemCode').AsInteger  := StrToint(ModemCode);
                           FieldByName('xModemName').AsString   := ModemName;
                           FieldByName('xModemMark').AsString   := ModemMark;
                           FieldByName('xModemCount').AsInteger := StrToint(ModemCount);
                           FieldByName('xModemPrice').AsFloat   := StrToFloat(ModemPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Web Cam Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(WebCamCode) <> '' Then
                       begin
                           FieldByName('xWebcamCode').AsInteger  := StrToint(WebCamCode);
                           FieldByName('xWebcamName').AsString   := WebCamName;
                           FieldByName('xWebCamMark').AsString   := WebCamMark;
                           FieldByName('xWebCamCount').AsInteger := StrToint(WebCamCount);
                           FieldByName('xWebCamPrice').AsFloat   := StrToFloat(WebCamPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Head Set Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(HeadSetCode) <> '' Then
                       begin
                           FieldByName('xHeadSetCode').AsInteger  := StrToint(HeadSetCode);
                           FieldByName('xHeadSetName').AsString   := HeadSetName;
                           FieldByName('xHeadSetMark').AsString   := HeadSetMark;
                           FieldByName('xHeadSetCount').AsInteger := StrToint(HeadSetCount);
                           FieldByName('xHeadSetPrice').AsFloat   := StrToFloat(HeadSetPrice);
                       end;
                       //------------------------------------------------------------------
                       //---------------------- MicroPhone Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(MicrophoneCode) <> '' Then
                       begin
                           FieldByName('xMicroPhoneCode').AsInteger  := StrToInt(MicrophoneCode);
                           FieldByName('xMicrophoneName').AsString   := MicrophoneName;
                           FieldByName('xMicrophoneMark').AsString   := MicrophoneMark;
                           FieldByName('xMicrophoneCount').AsInteger := StrToint(MicrophoneCount);
                           FieldByName('xMicrophonePrice').AsFloat   := StrToFloat(MicrophonePrice);
                       end;
                       //------------------------------------------------------------------
                       //-------------------------- UPS Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(UPSCode) <> '' Then
                       begin
                           FieldByName('xUPSCode').AsInteger   := StrToint(UPSCode);
                           FieldByName('xUpsName').AsString    := UPSName;
                           FieldByName('xUPSMark').AsString    := UPSMark;
                           FieldByName('xUpsCount').AsInteger  := StrToint(UPSCount);
                           FieldByName('xUpsPrice').AsFloat    := StrToFloat(UPSPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- Switch Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(SwitchCode) <> '' Then
                       begin
                           FieldByName('xSwitchCode').AsInteger  := StrToint(SwitchCode);
                           FieldByName('xSwitchName').AsString   := SwitchName;
                           FieldByName('xSwitchMark').AsString   := SwitchMark;
                           FieldByName('xSwitchCount').AsInteger := StrToint(SwitchCount);
                           FieldByName('xSwitchPrice').AsFloat   := StrToFloat(SwitchPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Floppy info -----------------------------
                       //------------------------------------------------------------------
                       if Trim(FloppyCode) <> '' Then
                       begin
                           FieldByName('xFloppyCode').AsInteger  := StrToint(FloppyCode);
                           FieldByName('xFloppyName').AsString   := FloppyName;
                           FieldByName('xFloppyMark').AsString   := FloppyMark;
                           FieldByName('xFloppyCount').AsInteger := StrToint(FloppyCount);
                           FieldByName('xFloppyPrice').AsFloat   := StrToFloat(FloppyPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Zip Drive info --------------------------
                       //------------------------------------------------------------------
                       if Trim(ZipDriveCode) <> '' Then
                       begin
                           FieldByName('xZipDriveCode').AsInteger   := StrToint(ZipDriveCode);
                           FieldByName('xZipDriveName').AsString    := ZipDriveName;
                           FieldByName('xZipDriveMark').AsString    := ZipDriveMark;
                           FieldByName('xZipDriveCount').AsInteger  := StrToint(ZipDriveCount);
                           FieldByName('xZipDrivePrice').AsFloat    := StrToFloat(FloppyPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Extra Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(ExtraCode) <> '' Then
                       begin
                           FieldByName('xOtherDevice1Code').AsInteger  := StrToint(ExtraCode);
                           FieldByName('xOtherDevice1Name').AsString   := ExtraName;
                           FieldByName('xOtherDevice1Mark').AsString   := ExtraMark;
                           FieldByName('xOtherDevice1Count').AsInteger := StrToint(ExtraCount);
                           FieldByName('xOtherDevice1Price').AsFloat   := StrToFloat(ExtraPrice);
                       end;
                       //------------------------------------------------------------------
                       Post;
              end;
              //----------------------- TblGp Insert ----------------------------------
              with tblGp do
              begin
                   if not Active Then
                      Open;
                   Insert;

                   FieldByName('xOrderCode_Fk').AsInteger := thisOrderNo;
                   FieldByName('xGpKind').AsString        := PayKind;
                   FieldByName('xComments').AsString      := PayComments;

                   Post;
                   Locate('xOrderCode_Fk',thisOrderNo,[]);
                   thisPayKind := FieldByName('xGPCode_Pk_AN').AsInteger;
              end;
              //---------------------------- tblAghsat Info ---------------------------
              with tblAghsat do
              begin
                   if not Active Then
                      Open;
                   Insert;

                   FieldByName('xGPCode_Fk').AsInteger   := thisPayKind;

                   FieldByName('xTotalGP').AsFloat       := StrToFloat(ATotalGP);
                   FieldByName('xPishPardakht').AsFloat  := StrToFloat(APishPardakht);
                   FieldByName('xVarantyPrice').AsFloat  := StrToFloat(AVarantyPrice);
                   FieldByName('xAsembelPrice').AsFloat  := StrToFloat(AAsembelPrice);
                   FieldByName('xTakhfif').AsFloat       := StrToFloat(ATakhfif);
                   FieldByName('xMande').AsFloat         := StrToFloat(AMande);
                   FieldByName('xAghsatPrice').AsFloat   := StrtoFloat(AghsatPrice);
                   FieldByName('xStartDate').AsString    := AStartDate;
                   FieldByName('xEndDate').AsString      := AEndDate;
                   FieldByName('xSarResidDay').AsInteger := StrToInt(ASarResidDay);
                   FieldByName('xPayDate').AsString      := APayDate;
                   FieldByName('xComments').AsString     := AComments;

                   Post;
              end;
          Except
                on E:Exception do fmDmMain.MessageDialog.Show('œ— À»  «ÿ·«⁄«  «‘ò«·Ì »ÊÃÊœ ¬„œ.',HbtError );
          end;
     end;
end;



class procedure TDefSystemSellOrder.InsertCValues(FactorNo, SellDate,
  Count, CustomerCode: String; SystemOrder: Boolean; OrderComments,
  CpuName, CpuMark, CPuCode, CpuCount, CpuPrice, RamName, RamMark, RamCode,
  RamCount, RamPrice, HardName, Hardmark, HardCode, HardCount, HardPrice,
  MainName, MainMark, MainCode, MainCount, MainPrice, MonitorName,
  MonitorMark, MonitorCode, MonitorCount, MonitorPrice, Casename, CaseMark,
  CaseCode, CaseCount, casePrice, CDRName, CDRMark, CDRCode, CDRCount,
  CDRPrice, CDWName, CDWMark, CDWCode, CDWCount, CDWPrice, DVDRomName,
  DVDRomMark, DVDRCode, DVDROMCount, DVDROMPrice, DVDWRITERName,
  DVDWRITERMark, DVDWCode, DVDWRITERCount, DVDWRITERPrice, SPKName,
  SPKMark, SPKCode, SPKCount, SPKPrice, KYBName, KYBMark, KYBCode,
  KYBCount, KYBPrice, MouseName, MouseMark, MouseCode, MouseCount,
  MousePrice, SoundName, SoundMark, SoundCode, SoundCount, SoundPrice,
  VGAName, VGAMark, VGACode, VGACount, VGAPrice, SCNname, SCNmark, SCNCode,
  SCNCount, SCNPrice, PRNName, PRNMark, PRNCode, PRNCount, PRNPrice,
  TVCName, TVCMark, TVCCode, TVCCount, TVCPrice, LANCName, LANCMark,
  LANCCode, LANCCount, LANCPrice, ModemName, ModemMark, ModemCode,
  ModemCount, ModemPrice, WebCamName, WebCamMark, WebCamCode, WebCamCount,
  WebCamPrice, HeadSetName, HeadSetMark, HeadSetCode, HeadSetCount,
  HeadSetPrice, MicrophoneName, MicrophoneMark, MicrophoneCode,
  MicrophoneCount, MicrophonePrice, UPSName, UPSMark, UPSCode, UPSCount,
  UPSPrice, SwitchName, SwitchMark, SwitchCode, SwitchCount, SwitchPrice,
  FloppyName, FloppyMark, FloppyCode, FloppyCount, FloppyPrice,
  ZipDriveName, ZipDriveMark, ZipDriveCode, ZipDriveCount, ZipDrivePrice,
  ExtraName, ExtraMark, ExtraCode, ExtraCount, ExtraPrice, PayKind,
  PayComments, CTotalGP, CPishPardakht, CVarantyPrice, CAsembelPrice,
  CTakhfif, CMande, CCheckPrice, CPayDate, CGetDate, CVosolDate, CCheckNo,
  CBankName, CBankAddress, CComments: String; Forzemanat: Boolean);
Var
   thisOrderNo,thisPayKind:Integer;
begin
     with fmDMmain Do
     begin
          try
                  with tblOrder do
                  begin
                       if not active Then
                          Open;
                       Insert;

                       FieldByName('xSellFactorNo').AsInteger := StrToInt(FactorNo);
                       FieldByName('xDate').AsString := Fillblank(SellDate) ;
                       FieldByName('xCount').AsInteger := StrToint(Count);
                       FieldByName('xPersonCode_Fk').AsInteger := StrToint(CustomerCode);
                       FieldByName('xIsSystemOrder').AsBoolean := SystemOrder;
                       FieldByName('xComments').AsString := OrderComments;

                       Post;
                       Locate('xSellFactorNo',FactorNo,[]);
                       thisOrderNo := FieldByName('xOrderNo_Pk_AN').AsInteger;
                  end;
                  with tblSystemInfo do
                  begin
                       if not Active Then
                          Open;
                       Insert;
                       FieldByName('xOrderNo_Fk').AsInteger := thisOrderNo;

                       //------------------------------------------------------------------
                       //-------------------------- CPU Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(CPuCode)<>'' Then
                       begin
                           FieldByName('xCpuCode').AsInteger  := StrToint(CPuCode);
                           FieldByName('xCpuName').AsString   := CpuName;
                           FieldByName('xCpuMark').AsString   := CpuMark;
                           FieldByName('xCpuCount').AsInteger := StrToint(CpuCount) ;
                           FieldByName('xCpuPrice').AsFloat   := StrToFloat(CpuPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- RAM INFO -------------------------------
                       //------------------------------------------------------------------
                       if Trim(RamCode) <>'' Then
                       begin
                           FieldByName('xRamCode').AsInteger  := StrToint(RamCode);
                           FieldByName('xRamName').AsString   := RamName;
                           FieldByName('xRamMark').AsString   := RamMark;
                           FieldByName('xRamCount').AsInteger := StrToint(RamCount);
                           FieldByName('xRamPrice').AsFloat   := StrToFloat(RamPrice);
                       end;
                       //------------------------------------------------------------------
                       //-------------------------- Hard Info -----------------------------
                       //------------------------------------------------------------------
                       if Trim(HardCode) <> '' Then
                       begin
                           FieldByName('xHardCode').AsInteger  := StrToint(HardCode);
                           FieldByName('xHardName').AsString   := HardName;
                           FieldByName('xHardMark').AsString   := HardMark;
                           FieldByName('xHardCount').AsInteger := StrToint(HardCount);
                           FieldByName('xHardPrice').AsFloat   := StrToFloat(HardPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- MainBoard Info -------------------------
                       //------------------------------------------------------------------
                       if Trim(MainCode) <> '' Then
                       begin
                           FieldByName('xMainBoardCode').AsInteger  := StrToint(MainCode);
                           FieldByName('xMainBoardName').AsString   := MainName;
                           FieldByName('xMainBoardMark').AsString   := MainMark;
                           FieldByName('xMainBoardCount').AsInteger := StrToint(MainCount);
                           FieldByName('xMainBoardPrice').AsFloat   := StrToFloat(MainPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- Monitor Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(MonitorCode) <> '' Then
                       begin
                           FieldByName('xMonitorCode').AsInteger  := StrToint(MonitorCode);
                           FieldByName('xMonitorName').AsString   := MonitorName;
                           FieldByName('xMonitorMark').AsString   := MonitorMark;
                           FieldByName('xMonitorCount').AsInteger := StrToint(MonitorCount);
                           FieldByName('xMonitorPrice').AsFloat   := StrToFloat(MonitorPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- Case Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(CaseCode) <> '' Then
                       begin
                           FieldByName('xCaseCode').AsInteger  := StrToint(CaseCode);
                           FieldByName('xCaseName').AsString   := Casename;
                           FieldByName('xCaseMark').AsString   := CaseMark;
                           FieldByName('xCaseCount').AsInteger := StrToint(CaseCount);
                           FieldByName('xCasePrice').AsFloat   := StrToFloat(casePrice);
                       end;
                       //------------------------------------------------------------------
                       //-------------------------- CdROM Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(CDRCode) <> '' Then
                       begin
                           FieldByName('xCDRomCode').AsInteger  := StrToint(CDRCode);
                           FieldByName('xCDRomName').AsString   := CDRName;
                           FieldByName('xCDRomMark').AsString   := CDRMark;
                           FieldByName('xCDRomCount').AsInteger := StrToint(CDRCount);
                           FieldByName('xCDRomPrice').AsFloat   := StrToFloat(CDRPrice);
                       end;
                       //------------------------------------------------------------------
                       //--------------------------CDWriter Info --------------------------
                       //------------------------------------------------------------------
                       if Trim(CDWCode) <> '' Then
                       begin
                           FieldByName('xCDWriterCode').AsInteger:= StrToInt(CDWCode);
                           FieldByName('xCdWriterName').AsString := CDWName;
                           FieldByName('xCDWriterMark').AsString := CDWMark;
                           FieldByName('xCdWriterCount').AsInteger := StrToint(CDWCount);
                           FieldByName('xCdWriterPrice').AsFloat := StrToFloat(CDWPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- DVDRom Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(DVDRCode) <> '' Then
                       begin
                           FieldByName('xDvdRomCode').AsInteger  := StrToint(DVDRCode);
                           FieldByName('xDvdRomName').AsString   := DVDRomName;
                           FieldByName('xDvdRomMark').AsString   := DVDRomMark;
                           FieldByName('xDvdRomCount').AsInteger := StrToint(DVDROMCount);
                           FieldByName('xDvdRomPrice').AsFloat   := StrToFloat(DVDROMPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ DVDWriter Info --------------------------
                       //------------------------------------------------------------------
                       if Trim(DVDWCode) <> '' Then
                       begin
                           FieldByName('xDvdWriterCode').AsInteger  := StrToint(DVDWCode);
                           FieldByName('xDvdWriterName').AsString   := DVDWRITERName;
                           FieldByName('xDvdWriterMark').AsString   := DVDWRITERMark;
                           FieldByName('xDvdWriterCount').AsInteger := StrToint(DVDWRITERCount);
                           FieldByName('xDvdWriterprice').AsFloat   := StrToFloat(DVDWRITERPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Speaker Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(SPKCode) <> '' Then
                       begin
                           FieldByName('xSpeakerCode').AsInteger  := StrToint(SPKCode);
                           FieldByName('xSpeakerName').AsString   := SPKName;
                           FieldByName('xSpeakerMark').AsString   := SPKMark;
                           FieldByName('xSpeakerCount').AsInteger := StrToint(SPKCount);
                           FieldByName('xSpeakerPrice').AsFloat   := StrToFloat(SPKPrice);
                       end;
                       //------------------------------------------------------------------
                       //----------------------- KeyBoard Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(KYBCode) <> '' Then
                       begin
                           FieldByName('xKeyBoardCode').AsInteger  := StrToint(KYBCode);
                           FieldByName('xKeyBoardName').AsString   := KYBName;
                           FieldByName('xKeyBoardMark').AsString   := KYBMark;
                           FieldByName('xKeyBoardCount').AsInteger := StrToint(KYBCount);
                           FieldByName('xKeyBoardPrice').AsFloat   := StrToFloat(KYBPrice);
                       end;
                       //------------------------------------------------------------------
                       //----------------------- Mouse Info -------------------------------
                       //------------------------------------------------------------------
                       if Trim(MouseCode) <> '' Then
                       begin
                           FieldByName('xMouseCode').AsInteger   := StrToint(MouseCode);
                           FieldByName('xMouseName').AsString    := MouseName;
                           FieldByName('xMouseMark').AsString    := MouseMark;
                           FieldByName('xMouseCount').AsInteger  := StrToint(MouseCount);
                           FieldByName('xMouseprice').AsFloat    := StrToFloat(MousePrice);
                       end;
                       //------------------------------------------------------------------
                       //--------------------- Sound Info ---------------------------------
                       //------------------------------------------------------------------
                       if Trim(SoundCode) <> '' Then
                       begin
                           FieldByName('xSoundCode').AsInteger  := StrToint(SoundCode);
                           FieldByName('xSoundName').AsString   := SoundName;
                           FieldByName('xSoundMark').AsString   := SoundMark;
                           FieldByName('xSoundCount').AsInteger := StrToint(SoundCount);
                           FieldByName('xSoundPrice').AsFloat   := StrToFloat(SoundPrice);
                       end;
                       //------------------------------------------------------------------
                       //--------------------- Scanner Info -------------------------------
                       //------------------------------------------------------------------
                       if Trim(SCNCode) <> '' Then
                       begin
                           FieldByName('xScanerCode').AsInteger  := StrToint(SCNCode);
                           FieldByName('xScanerName').AsString   := SCNname;
                           FieldByName('xScanerMark').AsString   := SCNmark;
                           FieldByName('xScanerCount').AsInteger := StrToint(SCNCount);
                           FieldByName('xScanerprice').AsFloat   := StrToFloat(SCNPrice);
                       end;
                       //------------------------------------------------------------------
                       //---------------------- Printer Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(PRNCode) <> '' Then
                       begin
                           FieldByName('xPrinterCode').AsInteger  := StrToint(PRNCode);
                           FieldByName('xPrinterName').AsString   := PRNName;
                           FieldByName('xPrinterMark').AsString   := PRNMark;
                           FieldByName('xPrinterCount').AsInteger := StrToint(PRNCount);
                           FieldByName('xPrinterPrice').AsFloat   := StrToFloat(PRNPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ VGA Info --------------------------------
                       //------------------------------------------------------------------
                       if Trim(VGACode) <> '' Then
                       begin
                           FieldByName('xVGACode').AsInteger   := StrToint(VGACode);
                           FieldByName('xVgaName').AsString    := VGAName;
                           FieldByName('xVgaMark').AsString    := VGAMark;
                           FieldByName('xVgaCount').AsInteger  := StrToint(VGACount);
                           FieldByName('xVgaPrice').AsFloat    := StrToFloat(VGAPrice);
                       end;
                       //------------------------------------------------------------------
                       //----------------------- TV Card Info -----------------------------
                       //------------------------------------------------------------------
                       if Trim(TVCCode) <> '' Then
                       begin
                           FieldByName('xTVCARDCode').AsInteger  := StrToint(TVCCode);
                           FieldByName('xTVCARDName').AsString   := TVCName;
                           FieldByName('xTVCARDMark').AsString   := TVCMark;
                           FieldByName('xTVCARDCount').AsInteger := StrToint(TVCCount);
                           FieldByName('xTVCARDPrice').AsFloat   := StrToFloat(TVCPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ LAN Card Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(LANCCode) <> '' Then
                       begin
                           FieldByName('xLANCARDCode').AsInteger  := StrToint(LANCCode);
                           FieldByName('xLANCARDName').AsString   := LANCName;
                           FieldByName('xLANCARDMark').AsString   := LANCMark;
                           FieldByName('xLANCARDCount').AsInteger := StrToint(LANCCount);
                           FieldByName('xLANCARDPrice').AsFloat   := StrToFloat(LANCPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Modem Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(ModemCode) <> '' Then
                       begin
                           FieldByName('xModemCode').AsInteger  := StrToint(ModemCode);
                           FieldByName('xModemName').AsString   := ModemName;
                           FieldByName('xModemMark').AsString   := ModemMark;
                           FieldByName('xModemCount').AsInteger := StrToint(ModemCount);
                           FieldByName('xModemPrice').AsFloat   := StrToFloat(ModemPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Web Cam Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(WebCamCode) <> '' Then
                       begin
                           FieldByName('xWebcamCode').AsInteger  := StrToint(WebCamCode);
                           FieldByName('xWebcamName').AsString   := WebCamName;
                           FieldByName('xWebCamMark').AsString   := WebCamMark;
                           FieldByName('xWebCamCount').AsInteger := StrToint(WebCamCount);
                           FieldByName('xWebCamPrice').AsFloat   := StrToFloat(WebCamPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Head Set Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(HeadSetCode) <> '' Then
                       begin
                           FieldByName('xHeadSetCode').AsInteger  := StrToint(HeadSetCode);
                           FieldByName('xHeadSetName').AsString   := HeadSetName;
                           FieldByName('xHeadSetMark').AsString   := HeadSetMark;
                           FieldByName('xHeadSetCount').AsInteger := StrToint(HeadSetCount);
                           FieldByName('xHeadSetPrice').AsFloat   := StrToFloat(HeadSetPrice);
                       end;
                       //------------------------------------------------------------------
                       //---------------------- MicroPhone Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(MicrophoneCode) <> '' Then
                       begin
                           FieldByName('xMicroPhoneCode').AsInteger  := StrToInt(MicrophoneCode);
                           FieldByName('xMicrophoneName').AsString   := MicrophoneName;
                           FieldByName('xMicrophoneMark').AsString   := MicrophoneMark;
                           FieldByName('xMicrophoneCount').AsInteger := StrToint(MicrophoneCount);
                           FieldByName('xMicrophonePrice').AsFloat   := StrToFloat(MicrophonePrice);
                       end;
                       //------------------------------------------------------------------
                       //-------------------------- UPS Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(UPSCode) <> '' Then
                       begin
                           FieldByName('xUPSCode').AsInteger   := StrToint(UPSCode);
                           FieldByName('xUpsName').AsString    := UPSName;
                           FieldByName('xUPSMark').AsString    := UPSMark;
                           FieldByName('xUpsCount').AsInteger  := StrToint(UPSCount);
                           FieldByName('xUpsPrice').AsFloat    := StrToFloat(UPSPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- Switch Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(SwitchCode) <> '' Then
                       begin
                           FieldByName('xSwitchCode').AsInteger  := StrToint(SwitchCode);
                           FieldByName('xSwitchName').AsString   := SwitchName;
                           FieldByName('xSwitchMark').AsString   := SwitchMark;
                           FieldByName('xSwitchCount').AsInteger := StrToint(SwitchCount);
                           FieldByName('xSwitchPrice').AsFloat   := StrToFloat(SwitchPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Floppy info -----------------------------
                       //------------------------------------------------------------------
                       if Trim(FloppyCode) <> '' Then
                       begin
                           FieldByName('xFloppyCode').AsInteger  := StrToint(FloppyCode);
                           FieldByName('xFloppyName').AsString   := FloppyName;
                           FieldByName('xFloppyMark').AsString   := FloppyMark;
                           FieldByName('xFloppyCount').AsInteger := StrToint(FloppyCount);
                           FieldByName('xFloppyPrice').AsFloat   := StrToFloat(FloppyPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Zip Drive info --------------------------
                       //------------------------------------------------------------------
                       if Trim(ZipDriveCode) <> '' Then
                       begin
                           FieldByName('xZipDriveCode').AsInteger   := StrToint(ZipDriveCode);
                           FieldByName('xZipDriveName').AsString    := ZipDriveName;
                           FieldByName('xZipDriveMark').AsString    := ZipDriveMark;
                           FieldByName('xZipDriveCount').AsInteger  := StrToint(ZipDriveCount);
                           FieldByName('xZipDrivePrice').AsFloat    := StrToFloat(FloppyPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Extra Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(ExtraCode) <> '' Then
                       begin
                           FieldByName('xOtherDevice1Code').AsInteger  := StrToint(ExtraCode);
                           FieldByName('xOtherDevice1Name').AsString   := ExtraName;
                           FieldByName('xOtherDevice1Mark').AsString   := ExtraMark;
                           FieldByName('xOtherDevice1Count').AsInteger := StrToint(ExtraCount);
                           FieldByName('xOtherDevice1Price').AsFloat   := StrToFloat(ExtraPrice);
                       end;
                       //------------------------------------------------------------------
                       Post;
                  end;
                  //----------------------- TblGp Insert ----------------------------------
                  with tblGp do
                  begin
                       if not Active Then
                          Open;
                       Insert;

                       FieldByName('xOrderCode_Fk').AsInteger := thisOrderNo;
                       FieldByName('xGpKind').AsString        := PayKind;
                       FieldByName('xComments').AsString      := PayComments;

                       Post;
                       Locate('xOrderCode_Fk',thisOrderNo,[]);
                       thisPayKind := FieldByName('xGPCode_Pk_AN').AsInteger;
                  end;
                  //--------------------------- tblChecks Info ----------------------------
                  with tblChecks do
                  begin
                       if not Active Then
                          Open;
                       Insert;

                       FieldByName('xGpCode_Fk').AsInteger         := thisPayKind;

                       FieldByName('xTotalGp').AsFloat             := StrToFloat(CTotalGP);
                       FieldByName('xPishPardakht').AsFloat        := StrToFloat(CPishPardakht);
                       FieldByName('xVarantyPrice').AsFloat        := StrToFloat(CVarantyPrice);
                       FieldByName('xAsembelPrice').AsFloat        := StrToFloat(CAsembelPrice);
                       FieldByName('xTakhfif').AsFloat             := StrToFloat(CTakhfif);
                       FieldByName('xMande').AsFloat               := StrToFloat(CMande);
                       FieldByName('xCheckNo').AsString            := CCheckNo;
                       FieldByName('xCheckPirce').AsFloat          := StrToFloat(CCheckPrice);
                       FieldByName('xCheckVosolDate').AsString     := CVosolDate;
                       FieldByName('xCheckTahvilDate').AsString    := CGetDate;
                       FieldByName('xPayDate').AsString            := CPayDate;
                       FieldByName('xCheckBank').AsString          := CBankName;
                       FieldByName('xBankaddress').AsString        := CBankAddress;
                       FieldByName('xIsCheckForZemanat').AsBoolean := Forzemanat;
                       FieldByName('xComments').AsString           := CComments;

                       post;
                  end;
          Except
                on E:Exception do fmDmMain.MessageDialog.Show('œ— À»  «ÿ·«⁄«  «‘ò«·Ì »ÊÃÊœ ¬„œ.',HbtError );
          end;
          //--------------------------
     end;
end;

class procedure TDefSystemSellOrder.InsertNValues(FactorNo, SellDate,
  Count, CustomerCode: String; SystemOrder: Boolean; OrderComments,
  CpuName, CpuMark, CPuCode, CpuCount, CpuPrice, RamName, RamMark, RamCode,
  RamCount, RamPrice, HardName, Hardmark, HardCode, HardCount, HardPrice,
  MainName, MainMark, MainCode, MainCount, MainPrice, MonitorName,
  MonitorMark, MonitorCode, MonitorCount, MonitorPrice, Casename, CaseMark,
  CaseCode, CaseCount, casePrice, CDRName, CDRMark, CDRCode, CDRCount,
  CDRPrice, CDWName, CDWMark, CDWCode, CDWCount, CDWPrice, DVDRomName,
  DVDRomMark, DVDRCode, DVDROMCount, DVDROMPrice, DVDWRITERName,
  DVDWRITERMark, DVDWCode, DVDWRITERCount, DVDWRITERPrice, SPKName,
  SPKMark, SPKCode, SPKCount, SPKPrice, KYBName, KYBMark, KYBCode,
  KYBCount, KYBPrice, MouseName, MouseMark, MouseCode, MouseCount,
  MousePrice, SoundName, SoundMark, SoundCode, SoundCount, SoundPrice,
  VGAName, VGAMark, VGACode, VGACount, VGAPrice, SCNname, SCNmark, SCNCode,
  SCNCount, SCNPrice, PRNName, PRNMark, PRNCode, PRNCount, PRNPrice,
  TVCName, TVCMark, TVCCode, TVCCount, TVCPrice, LANCName, LANCMark,
  LANCCode, LANCCount, LANCPrice, ModemName, ModemMark, ModemCode,
  ModemCount, ModemPrice, WebCamName, WebCamMark, WebCamCode, WebCamCount,
  WebCamPrice, HeadSetName, HeadSetMark, HeadSetCode, HeadSetCount,
  HeadSetPrice, MicrophoneName, MicrophoneMark, MicrophoneCode,
  MicrophoneCount, MicrophonePrice, UPSName, UPSMark, UPSCode, UPSCount,
  UPSPrice, SwitchName, SwitchMark, SwitchCode, SwitchCount, SwitchPrice,
  FloppyName, FloppyMark, FloppyCode, FloppyCount, FloppyPrice,
  ZipDriveName, ZipDriveMark, ZipDriveCode, ZipDriveCount, ZipDrivePrice,
  ExtraName, ExtraMark, ExtraCode, ExtraCount, ExtraPrice, PayKind,
  PayComments, NTotalGP, NPishPardakht, NVarantyPrice, NAsembelPrice,
  NTakhfif, NMande, NPayDate, NComments: String);
Var
   thisOrderNo,thisPayKind:Integer;
begin
     with fmDMmain Do
     begin
          try
                  with tblOrder do
                  begin
                       if not Active Then
                          Open;
                       Insert;

                       FieldByName('xSellFactorNo').AsInteger := StrToInt(FactorNo);
                       FieldByName('xDate').AsString := Fillblank(SellDate) ;
                       FieldByName('xCount').AsInteger := StrToint(Count);
                       FieldByName('xPersonCode_Fk').AsInteger := StrToint(CustomerCode);
                       FieldByName('xIsSystemOrder').AsBoolean := SystemOrder;
                       FieldByName('xComments').AsString := OrderComments;

                       Post;
                       Locate('xSellFactorNo',FactorNo,[]);
                       thisOrderNo := FieldByName('xOrderNo_Pk_AN').AsInteger;
                  end;
                  with tblSystemInfo do
                  begin
                       if not Active Then
                          Open;
                       Insert;
                       FieldByName('xOrderNo_Fk').AsInteger := thisOrderNo;

                       //------------------------------------------------------------------
                       //-------------------------- CPU Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(CPuCode)<>'' Then
                       begin
                           FieldByName('xCpuCode').AsInteger  := StrToint(CPuCode);
                           FieldByName('xCpuName').AsString   := CpuName;
                           FieldByName('xCpuMark').AsString   := CpuMark;
                           FieldByName('xCpuCount').AsInteger := StrToint(CpuCount) ;
                           FieldByName('xCpuPrice').AsFloat   := StrToFloat(CpuPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- RAM INFO -------------------------------
                       //------------------------------------------------------------------
                       if Trim(RamCode) <>'' Then
                       begin
                           FieldByName('xRamCode').AsInteger  := StrToint(RamCode);
                           FieldByName('xRamName').AsString   := RamName;
                           FieldByName('xRamMark').AsString   := RamMark;
                           FieldByName('xRamCount').AsInteger := StrToint(RamCount);
                           FieldByName('xRamPrice').AsFloat   := StrToFloat(RamPrice);
                       end;
                       //------------------------------------------------------------------
                       //-------------------------- Hard Info -----------------------------
                       //------------------------------------------------------------------
                       if Trim(HardCode) <> '' Then
                       begin
                           FieldByName('xHardCode').AsInteger  := StrToint(HardCode);
                           FieldByName('xHardName').AsString   := HardName;
                           FieldByName('xHardMark').AsString   := HardMark;
                           FieldByName('xHardCount').AsInteger := StrToint(HardCount);
                           FieldByName('xHardPrice').AsFloat   := StrToFloat(HardPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- MainBoard Info -------------------------
                       //------------------------------------------------------------------
                       if Trim(MainCode) <> '' Then
                       begin
                           FieldByName('xMainBoardCode').AsInteger  := StrToint(MainCode);
                           FieldByName('xMainBoardName').AsString   := MainName;
                           FieldByName('xMainBoardMark').AsString   := MainMark;
                           FieldByName('xMainBoardCount').AsInteger := StrToint(MainCount);
                           FieldByName('xMainBoardPrice').AsFloat   := StrToFloat(MainPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- Monitor Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(MonitorCode) <> '' Then
                       begin
                           FieldByName('xMonitorCode').AsInteger  := StrToint(MonitorCode);
                           FieldByName('xMonitorName').AsString   := MonitorName;
                           FieldByName('xMonitorMark').AsString   := MonitorMark;
                           FieldByName('xMonitorCount').AsInteger := StrToint(MonitorCount);
                           FieldByName('xMonitorPrice').AsFloat   := StrToFloat(MonitorPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- Case Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(CaseCode) <> '' Then
                       begin
                           FieldByName('xCaseCode').AsInteger  := StrToint(CaseCode);
                           FieldByName('xCaseName').AsString   := Casename;
                           FieldByName('xCaseMark').AsString   := CaseMark;
                           FieldByName('xCaseCount').AsInteger := StrToint(CaseCount);
                           FieldByName('xCasePrice').AsFloat   := StrToFloat(casePrice);
                       end;
                       //------------------------------------------------------------------
                       //-------------------------- CdROM Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(CDRCode) <> '' Then
                       begin
                           FieldByName('xCDRomCode').AsInteger  := StrToint(CDRCode);
                           FieldByName('xCDRomName').AsString   := CDRName;
                           FieldByName('xCDRomMark').AsString   := CDRMark;
                           FieldByName('xCDRomCount').AsInteger := StrToint(CDRCount);
                           FieldByName('xCDRomPrice').AsFloat   := StrToFloat(CDRPrice);
                       end;
                       //------------------------------------------------------------------
                       //--------------------------CDWriter Info --------------------------
                       //------------------------------------------------------------------
                       if Trim(CDWCode) <> '' Then
                       begin
                           FieldByName('xCDWriterCode').AsInteger:= StrToInt(CDWCode);
                           FieldByName('xCdWriterName').AsString := CDWName;
                           FieldByName('xCDWriterMark').AsString := CDWMark;
                           FieldByName('xCdWriterCount').AsInteger := StrToint(CDWCount);
                           FieldByName('xCdWriterPrice').AsFloat := StrToFloat(CDWPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- DVDRom Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(DVDRCode) <> '' Then
                       begin
                           FieldByName('xDvdRomCode').AsInteger  := StrToint(DVDRCode);
                           FieldByName('xDvdRomName').AsString   := DVDRomName;
                           FieldByName('xDvdRomMark').AsString   := DVDRomMark;
                           FieldByName('xDvdRomCount').AsInteger := StrToint(DVDROMCount);
                           FieldByName('xDvdRomPrice').AsFloat   := StrToFloat(DVDROMPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ DVDWriter Info --------------------------
                       //------------------------------------------------------------------
                       if Trim(DVDWCode) <> '' Then
                       begin
                           FieldByName('xDvdWriterCode').AsInteger  := StrToint(DVDWCode);
                           FieldByName('xDvdWriterName').AsString   := DVDWRITERName;
                           FieldByName('xDvdWriterMark').AsString   := DVDWRITERMark;
                           FieldByName('xDvdWriterCount').AsInteger := StrToint(DVDWRITERCount);
                           FieldByName('xDvdWriterprice').AsFloat   := StrToFloat(DVDWRITERPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Speaker Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(SPKCode) <> '' Then
                       begin
                           FieldByName('xSpeakerCode').AsInteger  := StrToint(SPKCode);
                           FieldByName('xSpeakerName').AsString   := SPKName;
                           FieldByName('xSpeakerMark').AsString   := SPKMark;
                           FieldByName('xSpeakerCount').AsInteger := StrToint(SPKCount);
                           FieldByName('xSpeakerPrice').AsFloat   := StrToFloat(SPKPrice);
                       end;
                       //------------------------------------------------------------------
                       //----------------------- KeyBoard Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(KYBCode) <> '' Then
                       begin
                           FieldByName('xKeyBoardCode').AsInteger  := StrToint(KYBCode);
                           FieldByName('xKeyBoardName').AsString   := KYBName;
                           FieldByName('xKeyBoardMark').AsString   := KYBMark;
                           FieldByName('xKeyBoardCount').AsInteger := StrToint(KYBCount);
                           FieldByName('xKeyBoardPrice').AsFloat   := StrToFloat(KYBPrice);
                       end;
                       //------------------------------------------------------------------
                       //----------------------- Mouse Info -------------------------------
                       //------------------------------------------------------------------
                       if Trim(MouseCode) <> '' Then
                       begin
                           FieldByName('xMouseCode').AsInteger   := StrToint(MouseCode);
                           FieldByName('xMouseName').AsString    := MouseName;
                           FieldByName('xMouseMark').AsString    := MouseMark;
                           FieldByName('xMouseCount').AsInteger  := StrToint(MouseCount);
                           FieldByName('xMouseprice').AsFloat    := StrToFloat(MousePrice);
                       end;
                       //------------------------------------------------------------------
                       //--------------------- Sound Info ---------------------------------
                       //------------------------------------------------------------------
                       if Trim(SoundCode) <> '' Then
                       begin
                           FieldByName('xSoundCode').AsInteger  := StrToint(SoundCode);
                           FieldByName('xSoundName').AsString   := SoundName;
                           FieldByName('xSoundMark').AsString   := SoundMark;
                           FieldByName('xSoundCount').AsInteger := StrToint(SoundCount);
                           FieldByName('xSoundPrice').AsFloat   := StrToFloat(SoundPrice);
                       end;
                       //------------------------------------------------------------------
                       //--------------------- Scanner Info -------------------------------
                       //------------------------------------------------------------------
                       if Trim(SCNCode) <> '' Then
                       begin
                           FieldByName('xScanerCode').AsInteger  := StrToint(SCNCode);
                           FieldByName('xScanerName').AsString   := SCNname;
                           FieldByName('xScanerMark').AsString   := SCNmark;
                           FieldByName('xScanerCount').AsInteger := StrToint(SCNCount);
                           FieldByName('xScanerprice').AsFloat   := StrToFloat(SCNPrice);
                       end;
                       //------------------------------------------------------------------
                       //---------------------- Printer Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(PRNCode) <> '' Then
                       begin
                           FieldByName('xPrinterCode').AsInteger  := StrToint(PRNCode);
                           FieldByName('xPrinterName').AsString   := PRNName;
                           FieldByName('xPrinterMark').AsString   := PRNMark;
                           FieldByName('xPrinterCount').AsInteger := StrToint(PRNCount);
                           FieldByName('xPrinterPrice').AsFloat   := StrToFloat(PRNPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ VGA Info --------------------------------
                       //------------------------------------------------------------------
                       if Trim(VGACode) <> '' Then
                       begin
                           FieldByName('xVGACode').AsInteger   := StrToint(VGACode);
                           FieldByName('xVgaName').AsString    := VGAName;
                           FieldByName('xVgaMark').AsString    := VGAMark;
                           FieldByName('xVgaCount').AsInteger  := StrToint(VGACount);
                           FieldByName('xVgaPrice').AsFloat    := StrToFloat(VGAPrice);
                       end;
                       //------------------------------------------------------------------
                       //----------------------- TV Card Info -----------------------------
                       //------------------------------------------------------------------
                       if Trim(TVCCode) <> '' Then
                       begin
                           FieldByName('xTVCARDCode').AsInteger  := StrToint(TVCCode);
                           FieldByName('xTVCARDName').AsString   := TVCName;
                           FieldByName('xTVCARDMark').AsString   := TVCMark;
                           FieldByName('xTVCARDCount').AsInteger := StrToint(TVCCount);
                           FieldByName('xTVCARDPrice').AsFloat   := StrToFloat(TVCPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ LAN Card Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(LANCCode) <> '' Then
                       begin
                           FieldByName('xLANCARDCode').AsInteger  := StrToint(LANCCode);
                           FieldByName('xLANCARDName').AsString   := LANCName;
                           FieldByName('xLANCARDMark').AsString   := LANCMark;
                           FieldByName('xLANCARDCount').AsInteger := StrToint(LANCCount);
                           FieldByName('xLANCARDPrice').AsFloat   := StrToFloat(LANCPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Modem Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(ModemCode) <> '' Then
                       begin
                           FieldByName('xModemCode').AsInteger  := StrToint(ModemCode);
                           FieldByName('xModemName').AsString   := ModemName;
                           FieldByName('xModemMark').AsString   := ModemMark;
                           FieldByName('xModemCount').AsInteger := StrToint(ModemCount);
                           FieldByName('xModemPrice').AsFloat   := StrToFloat(ModemPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Web Cam Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(WebCamCode) <> '' Then
                       begin
                           FieldByName('xWebcamCode').AsInteger  := StrToint(WebCamCode);
                           FieldByName('xWebcamName').AsString   := WebCamName;
                           FieldByName('xWebCamMark').AsString   := WebCamMark;
                           FieldByName('xWebCamCount').AsInteger := StrToint(WebCamCount);
                           FieldByName('xWebCamPrice').AsFloat   := StrToFloat(WebCamPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Head Set Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(HeadSetCode) <> '' Then
                       begin
                           FieldByName('xHeadSetCode').AsInteger  := StrToint(HeadSetCode);
                           FieldByName('xHeadSetName').AsString   := HeadSetName;
                           FieldByName('xHeadSetMark').AsString   := HeadSetMark;
                           FieldByName('xHeadSetCount').AsInteger := StrToint(HeadSetCount);
                           FieldByName('xHeadSetPrice').AsFloat   := StrToFloat(HeadSetPrice);
                       end;
                       //------------------------------------------------------------------
                       //---------------------- MicroPhone Info ---------------------------
                       //------------------------------------------------------------------
                       if Trim(MicrophoneCode) <> '' Then
                       begin
                           FieldByName('xMicroPhoneCode').AsInteger  := StrToInt(MicrophoneCode);
                           FieldByName('xMicrophoneName').AsString   := MicrophoneName;
                           FieldByName('xMicrophoneMark').AsString   := MicrophoneMark;
                           FieldByName('xMicrophoneCount').AsInteger := StrToint(MicrophoneCount);
                           FieldByName('xMicrophonePrice').AsFloat   := StrToFloat(MicrophonePrice);
                       end;
                       //------------------------------------------------------------------
                       //-------------------------- UPS Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(UPSCode) <> '' Then
                       begin
                           FieldByName('xUPSCode').AsInteger   := StrToint(UPSCode);
                           FieldByName('xUpsName').AsString    := UPSName;
                           FieldByName('xUPSMark').AsString    := UPSMark;
                           FieldByName('xUpsCount').AsInteger  := StrToint(UPSCount);
                           FieldByName('xUpsPrice').AsFloat    := StrToFloat(UPSPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------- Switch Info ----------------------------
                       //------------------------------------------------------------------
                       if Trim(SwitchCode) <> '' Then
                       begin
                           FieldByName('xSwitchCode').AsInteger  := StrToint(SwitchCode);
                           FieldByName('xSwitchName').AsString   := SwitchName;
                           FieldByName('xSwitchMark').AsString   := SwitchMark;
                           FieldByName('xSwitchCount').AsInteger := StrToint(SwitchCount);
                           FieldByName('xSwitchPrice').AsFloat   := StrToFloat(SwitchPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Floppy info -----------------------------
                       //------------------------------------------------------------------
                       if Trim(FloppyCode) <> '' Then
                       begin
                           FieldByName('xFloppyCode').AsInteger  := StrToint(FloppyCode);
                           FieldByName('xFloppyName').AsString   := FloppyName;
                           FieldByName('xFloppyMark').AsString   := FloppyMark;
                           FieldByName('xFloppyCount').AsInteger := StrToint(FloppyCount);
                           FieldByName('xFloppyPrice').AsFloat   := StrToFloat(FloppyPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Zip Drive info --------------------------
                       //------------------------------------------------------------------
                       if Trim(ZipDriveCode) <> '' Then
                       begin
                           FieldByName('xZipDriveCode').AsInteger   := StrToint(ZipDriveCode);
                           FieldByName('xZipDriveName').AsString    := ZipDriveName;
                           FieldByName('xZipDriveMark').AsString    := ZipDriveMark;
                           FieldByName('xZipDriveCount').AsInteger  := StrToint(ZipDriveCount);
                           FieldByName('xZipDrivePrice').AsFloat    := StrToFloat(FloppyPrice);
                       end;
                       //------------------------------------------------------------------
                       //------------------------ Extra Info ------------------------------
                       //------------------------------------------------------------------
                       if Trim(ExtraCode) <> '' Then
                       begin
                           FieldByName('xOtherDevice1Code').AsInteger  := StrToint(ExtraCode);
                           FieldByName('xOtherDevice1Name').AsString   := ExtraName;
                           FieldByName('xOtherDevice1Mark').AsString   := ExtraMark;
                           FieldByName('xOtherDevice1Count').AsInteger := StrToint(ExtraCount);
                           FieldByName('xOtherDevice1Price').AsFloat   := StrToFloat(ExtraPrice);
                       end;
                       //------------------------------------------------------------------
                       Post;
                  end;
                  //----------------------- TblGp Insert ----------------------------------
                  with tblGp do
                  begin
                       if not Active Then
                          Open;
                       Insert;

                       FieldByName('xOrderCode_Fk').AsInteger := thisOrderNo;
                       FieldByName('xGpKind').AsString        := PayKind;
                       FieldByName('xComments').AsString      := PayComments;

                       Post;
                       Locate('xOrderCode_Fk',thisOrderNo,[]);
                       thisPayKind := FieldByName('xGPCode_Pk_AN').AsInteger;
                  end;
                  //------------------------ tblNaghd Info --------------------------------
                  with tblNaghd do
                  begin
                       if not Active Then
                          Open;
                       Insert;

                       FieldByName('xGpCode_Fk').AsInteger  := thisPayKind;

                       FieldByName('xTotalGP').AsFloat      := StrToFloat(NTotalGP);
                       FieldByName('xPishPardakht').AsFloat := StrToFloat(NPishPardakht);
                       FieldByName('xvarantyPrice').AsFloat := StrToFloat(NVarantyPrice);
                       FieldByName('xAsemblePrice').AsFloat := StrToFloat(NAsembelPrice);
                       FieldByName('xTakhfif').AsFloat      := StrToFloat(NTakhfif);
                       FieldByName('xMande').AsFloat        := StrToFloat(NMande);
                       FieldByName('xPayDate').AsString     := NPayDate;
                       FieldByName('xComment').AsString     := NComments;

                       Post;
                  end;
          Except
                on E:Exception do fmDmMain.MessageDialog.Show('œ— À»  «ÿ·«⁄«  «‘ò«·Ì »ÊÃÊœ ¬„œ.',HbtError );
          end;
          //--------------------------
     end;
end;

class procedure TDefSystemSellOrder.UpdateAValues(OrderCode, FactorNo,
  SellDate, Count, CustomerCode: String; SystemOrder: Boolean;
  OrderComments, CpuName, CpuMark, CPuCode, CpuCount, CpuPrice, RamName,
  RamMark, RamCode, RamCount, RamPrice, HardName, Hardmark, HardCode,
  HardCount, HardPrice, MainName, MainMark, MainCode, MainCount, MainPrice,
  MonitorName, MonitorMark, MonitorCode, MonitorCount, MonitorPrice,
  Casename, CaseMark, CaseCode, CaseCount, casePrice, CDRName, CDRMark,
  CDRCode, CDRCount, CDRPrice, CDWName, CDWMark, CDWCode, CDWCount,
  CDWPrice, DVDRomName, DVDRomMark, DVDRCode, DVDROMCount, DVDROMPrice,
  DVDWRITERName, DVDWRITERMark, DVDWCode, DVDWRITERCount, DVDWRITERPrice,
  SPKName, SPKMark, SPKCode, SPKCount, SPKPrice, KYBName, KYBMark, KYBCode,
  KYBCount, KYBPrice, MouseName, MouseMark, MouseCode, MouseCount,
  MousePrice, SoundName, SoundMark, SoundCode, SoundCount, SoundPrice,
  VGAName, VGAMark, VGACode, VGACount, VGAPrice, SCNname, SCNmark, SCNCode,
  SCNCount, SCNPrice, PRNName, PRNMark, PRNCode, PRNCount, PRNPrice,
  TVCName, TVCMark, TVCCode, TVCCount, TVCPrice, LANCName, LANCMark,
  LANCCode, LANCCount, LANCPrice, ModemName, ModemMark, ModemCode,
  ModemCount, ModemPrice, WebCamName, WebCamMark, WebCamCode, WebCamCount,
  WebCamPrice, HeadSetName, HeadSetMark, HeadSetCode, HeadSetCount,
  HeadSetPrice, MicrophoneName, MicrophoneMark, MicrophoneCode,
  MicrophoneCount, MicrophonePrice, UPSName, UPSMark, UPSCode, UPSCount,
  UPSPrice, SwitchName, SwitchMark, SwitchCode, SwitchCount, SwitchPrice,
  FloppyName, FloppyMark, FloppyCode, FloppyCount, FloppyPrice,
  ZipDriveName, ZipDriveMark, ZipDriveCode, ZipDriveCount, ZipDrivePrice,
  ExtraName, ExtraMark, ExtraCode, ExtraCount, ExtraPrice, PayKind,
  PayComments, ATotalGP, APishPardakht, AVarantyPrice, AAsembelPrice,
  ATakhfif, AMande, ASarResidDay, AghsatPrice, APayDate, AStartDate,
  AEndDate, AComments: String);
Var
   thisGpCode:Integer;
begin
     try
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblorder Set'  ;
                  SQL.Text := SQL.Text + 'xSellFactorNo ='  + FactorNo;
                  SQL.Text := SQL.Text + ',xDate  = '           + QuotedStr(Fillblank(SellDate));
                  SQL.Text := SQL.Text + ',xCount = '           + Count;
                  SQL.Text := SQL.Text + ',xPersonCode_Fk = '   + CustomerCode;
                  SQL.Text := SQL.Text + ',xComments        ='  +QuotedStr(OrderComments);
                  SQL.Text := SQL.Text + ',xIsSystemOrder = True ';
                  SQL.Text := SQL.Text +' where  xOrderNo_Pk_AN ='+OrderCode;
                  ExecSQL;
             end;
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblSystemInfo Set'  ;
                  Sql.Text := Sql.Text +'xOrderNo_Fk = '+OrderCode;
                  //-----------------------------------------------------------------------
                  //---------------------------- Cpu Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CPuCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCpuCode = '   + CPuCode ;
                      SQL.Text := SQL.Text +',xCpuName = '   + QuotedStr(CpuName);
                      SQL.Text := SQL.Text +',xCpuMark = '   + QuotedStr(CpuMark);
                      SQL.Text := SQL.Text +',xCpuCount = '  + CpuCount ;
                      SQL.Text := SQL.Text +',xCpuPrice = '  + CpuPrice ;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- Ram Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(RamCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xRamCode = '  + RamCode ;
                      SQL.Text := SQL.Text +',xRamName = '  + QuotedStr(RamName);
                      SQL.Text := SQL.Text +',xRamMark = '  + QuotedStr(RamMark);
                      SQL.Text := SQL.Text +',xRamCount = ' + RamCount;
                      SQL.Text := SQL.Text +',xRamPrice = ' + RamPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- Hard Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(HardCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xHardCode = '   + HardCode;
                      SQL.Text := SQL.Text +',xHardName = '   + QuotedStr(HardName);
                      SQL.Text := SQL.Text +',xHardMark = '   + QuotedStr(HardMark);
                      SQL.Text := SQL.Text +',xHardCount = '  + HardCount;
                      SQL.Text := SQL.Text +',xHardPrice = '  + HardPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //----------------------- MainBoard Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MainCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xMainBoardCode = '  + MainCode;
                      SQL.Text := SQL.Text +',xMainBoardName = '  + QuotedStr(MainName);
                      SQL.Text := SQL.Text +',xMainBoardMark = '  + QuotedStr(MainMark);
                      SQL.Text := SQL.Text +',xMainBoardCount = ' + MainCount;
                      SQL.Text := SQL.Text +',xMainBoardPrice = ' + MainPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //------------------------  Monitor Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MonitorCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xMonitorCode = '   + MonitorCode;
                      SQL.Text := SQL.Text +',xMonitorName = '   + QuotedStr(MonitorName);
                      SQL.Text := SQL.Text +',xMonitorMark = '   + QuotedStr(MonitorMark);
                      SQL.Text := SQL.Text +',xMonitorCount = '  + MonitorCount;
                      SQL.Text := SQL.Text +',xMonitorPrice = '  + MonitorPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Case Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CaseCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCaseCode = '   + CaseCode;
                      SQL.Text := SQL.Text +',xCaseName = '   + QuotedStr(CaseName);
                      SQL.Text := SQL.Text +',xCaseMark = '   + QuotedStr(CaseMark);
                      SQL.Text := SQL.Text +',xCaseCount = '  + CaseCount;
                      SQL.Text := SQL.Text +',xCasePrice = '  + casePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- CdRom Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CDRCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCdRomCode = '   + CDRCode;
                      SQL.Text := SQL.Text +',xCdRomName = '   + QuotedStr(CDRName);
                      SQL.Text := SQL.Text +',xCdRomMark = '   + QuotedStr(CDRMark);
                      SQL.Text := SQL.Text +',xCdRomCount = '  + CDRCount;
                      SQL.Text := SQL.Text +',xCdRomPrice = '  +CDRPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- CdWriter Info ------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CDWCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCdWriterCode = '   + CDWCode;
                      SQL.Text := SQL.Text +',xCdWriterName = '   + QuotedStr(CDWName);
                      SQL.Text := SQL.Text +',xCdWriterMark = '   + QuotedStr(CDWMark);
                      SQL.Text := SQL.Text +',xCdWriterCount = '  + CDWCount;
                      SQL.Text := SQL.Text +',xCdWriterPrice = '  + CDWPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- DvdRom Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(DVDRCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xDvdRomCode = '   + DVDRCode;
                      SQL.Text := SQL.Text +',xDvdRomName = '   + QuotedStr(DVDRomName);
                      SQL.Text := SQL.Text +',xDvdRomMark = '   + QuotedStr(DVDRomMark);
                      SQL.Text := SQL.Text +',xDvdRomCount = '  + DVDROMCount;
                      SQL.Text := SQL.Text +',xDvdRomPrice = '  + DVDROMPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //------------------------- DvdWriter Info ------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(DVDWCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xDvdWriterCode = '   + DVDWCode;
                      SQL.Text := SQL.Text +',xDvdWriterName = '   + QuotedStr(DVDWRITERName);
                      SQL.Text := SQL.Text +',xDvdWriterMark = '   + QuotedStr(DVDWRITERMark);
                      SQL.Text := SQL.Text +',xDvdWriterCount = '  + DVDWRITERCount;
                      SQL.Text := SQL.Text +',xDvdWriterPrice = '  + DVDWRITERPrice;
                  end;
                  //-----------------------------------------------------------------------
                  {Becuase Of Extra Field Number}
                  Sql.Text := SQL.Text +' Where xOrderNo_Fk='+OrderCode;
                  fmBuySystem.aredCommentsEdit.Text := SQL.Text;
                  ExecSQL;

                  SQL.Clear;
                  SQL.Text := 'Update tblSystemInfo Set'  ;
                  Sql.Text := SQL.Text +'xOrderNo_Fk='+OrderCode;
                  //-----------------------------------------------------------------------
                  //---------------------------- SpK Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SPKCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xSpeakerCode = '   + SPKCode;
                      SQL.Text := SQL.Text +',xSpeakerName = '   + QuotedStr(SPKName);
                      SQL.Text := SQL.Text +',xSpeakerMark = '   + QuotedStr(SPKMark);
                      SQL.Text := SQL.Text +',xSpeakerCount = '  + SPKCount;
                      SQL.Text := SQL.Text +',xSpeakerPrice = '  + SPKPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- KYB Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(KYBCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xKeyBoardCode = '   + KYBCode;
                      SQL.Text := SQL.Text +',xKeyBoardName = '   + QuotedStr(KYBName);
                      SQL.Text := SQL.Text +',xKeyBoardMark = '   + QuotedStr(KYBMark);
                      SQL.Text := SQL.Text +',xKeyBoardCount = '  + KYBCount;
                      SQL.Text := SQL.Text +',xKeyBoardPrice = '  + KYBPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Mouse Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MouseCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xMouseCode = '   + MouseCode;
                      SQL.Text := SQL.Text +',xMouseName = '   + QuotedStr(MouseName);
                      SQL.Text := SQL.Text +',xMouseMark = '   + QuotedStr(MouseMark);
                      SQL.Text := SQL.Text +',xMouseCount = '  + MouseCount;
                      SQL.Text := SQL.Text +',xMousePrice = '  + MousePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Sound Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SoundCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xSoundCode = '   + SoundCode;
                      SQL.Text := SQL.Text +',xSoundName = '   + QuotedStr(SoundName);
                      SQL.Text := SQL.Text +',xSoundMark = '   + QuotedStr(SoundMark);
                      SQL.Text := SQL.Text +',xSoundCount = '  + SoundCount;
                      SQL.Text := SQL.Text +',xSoundPrice = '  + SoundPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- VGA Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(VGACode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xVGACode = '   + VGACode;
                      SQL.Text := SQL.Text +',xVGAName = '   + QuotedStr(VGAName);
                      SQL.Text := SQL.Text +',xVGAMark = '   + QuotedStr(VGAMark);
                      SQL.Text := SQL.Text +',xVGACount = '  + VGACount;
                      SQL.Text := SQL.Text +',xVGAPrice = '  + VGAPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- SCANNER Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SCNCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xScanerCode = '   + SCNCode;
                      SQL.Text := SQL.Text +',xScanerName = '   + QuotedStr(SCNname);
                      SQL.Text := SQL.Text +',xScanerMark = '   + QuotedStr(SCNMark);
                      SQL.Text := SQL.Text +',xScanerCount = '  + SCNCount;
                      SQL.Text := SQL.Text +',xScanerPrice = '  + SCNPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- Printer Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(PRNCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xPrinterCode = '   + PRNCode;
                      SQL.Text := SQL.Text +',xPrinterName = '   + QuotedStr(PRNName);
                      SQL.Text := SQL.Text +',xPrinterMark = '   + QuotedStr(PRNMark);
                      SQL.Text := SQL.Text +',xPrinterCount = '  + PRNCount;
                      SQL.Text := SQL.Text +',xPrinterPrice = '  + PRNPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- TVCARD Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(TVCCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xTVCARDCode = '   + TVCCode;
                      SQL.Text := SQL.Text +',xTVCARDName = '   + QuotedStr(TVCName);
                      SQL.Text := SQL.Text +',xTVCARDMark = '   + QuotedStr(TVCMark);
                      SQL.Text := SQL.Text +',xTVCARDCount = '  + TVCCount;
                      SQL.Text := SQL.Text +',xTVCARDPrice = '  + TVCPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- LANCARD Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(LANCCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xLANCARDCode = '  + LANCCode;
                      SQL.Text := SQL.Text +',xLANCARDName = '  + QuotedStr(LANCName);
                      SQL.Text := SQL.Text +',xLANCARDMark = '  + QuotedStr(LANCMark);
                      SQL.Text := SQL.Text +',xLANCARDCount = ' + LANCCount;
                      SQL.Text := SQL.Text +',xLANCARDPrice = ' + LANCPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Modem Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(ModemCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xModemCode = '   + ModemCode;
                      SQL.Text := SQL.Text +',xModemName = '   + QuotedStr(ModemName);
                      SQL.Text := SQL.Text +',xModemMark = '   + QuotedStr(ModemMark);
                      SQL.Text := SQL.Text +',xModemCount = '  + ModemCount;
                      SQL.Text := SQL.Text +',xModemPrice = '  + ModemPrice;
                  end;
                  //-----------------------------------------------------------------------
                  {Becuase Of Extra Field Number}
                  Sql.Text := SQL.Text +' Where xOrderNo_Fk='+OrderCode;
                  ExecSQL;

                  SQL.Clear;
                  SQL.Text := 'Update tblSystemInfo Set'  ;
                  Sql.Text := SQL.Text +' xOrderNo_Fk='+OrderCode;
                  //-----------------------------------------------------------------------
                  //-------------------------- WebCam Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(WebCamCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xWebcamCode = '   + WebCamCode;
                      SQL.Text := SQL.Text +',xWebcamName = '   + QuotedStr(WebCamName);
                      SQL.Text := SQL.Text +',xWebcamMark = '   + QuotedStr(WebCamMark);
                      SQL.Text := SQL.Text +',xWebcamCount = '  + WebCamCount;
                      SQL.Text := SQL.Text +',xWebcamPrice = '  + WebCamPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- HeadSet Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(HeadSetCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xHeadSetCode = '   + HeadSetCode;
                      SQL.Text := SQL.Text +',xHeadSetName = '   + QuotedStr(HeadSetName);
                      SQL.Text := SQL.Text +',xHeadSetMark = '   + QuotedStr(HeadSetMark);
                      SQL.Text := SQL.Text +',xHeadSetCount = '  + HeadSetCount;
                      SQL.Text := SQL.Text +',xHeadSetPrice = '  + HeadSetPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- Mic Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MicrophoneCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xMicrophoneCode = '   + MicrophoneCode;
                      SQL.Text := SQL.Text +',xMicrophoneName = '   + QuotedStr(MicrophoneName);
                      SQL.Text := SQL.Text +',xMicrophoneMark = '   + QuotedStr(MicrophoneMark);
                      SQL.Text := SQL.Text +',xMicrophoneCount = '  + MicrophoneCount;
                      SQL.Text := SQL.Text +',xMicrophonePrice = '  + MicrophonePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- UPS Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(UPSCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xUpsCode = '   + UPSCode;
                      SQL.Text := SQL.Text +',xUPSName = '   + QuotedStr(UPSName);
                      SQL.Text := SQL.Text +',xUpsMark = '   + QuotedStr(UPSMark);
                      SQL.Text := SQL.Text +',xUpsCount = '  + UPSCount;
                      SQL.Text := SQL.Text +',xUpsPrice = '  + UPSPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- Switch Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SwitchCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xSwitchCode = '   + SwitchCode ;
                      SQL.Text := SQL.Text +',xSwitchName = '   + QuotedStr(SwitchName);
                      SQL.Text := SQL.Text +',xSwitchMark = '   + QuotedStr(SwitchMark);
                      SQL.Text := SQL.Text +',xSwitchCount = '  + SwitchCount;
                      SQL.Text := SQL.Text +',xSwitchPrice = '  + SwitchPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- FDD Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(FloppyCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xFloppyCode = '   + FloppyCode;
                      SQL.Text := SQL.Text +',xFloppyName = '   + QuotedStr(FloppyName);
                      SQL.Text := SQL.Text +',xFloppyMark = '   + QuotedStr(FloppyMark);
                      SQL.Text := SQL.Text +',xFloppyCount = '  + FloppyCount;
                      SQL.Text := SQL.Text +',xFloppyPrice = '  + FloppyPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- ZipDrive Info ------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(ZipDriveCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xZipDriveCode = '   + ZipDriveCode;
                      SQL.Text := SQL.Text +',xZipDriveName = '   + QuotedStr(ZipDriveName);
                      SQL.Text := SQL.Text +',xZipDriveMark = '   + QuotedStr(ZipDriveMark);
                      SQL.Text := SQL.Text +',xZipDriveCount = '  + ZipDriveCount;
                      SQL.Text := SQL.Text +',xZipDrivePrice = '  + ZipDrivePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Extra Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(ExtraCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xOtherDevice1Code = '   + ExtraCode;
                      SQL.Text := SQL.Text +',xOtherDevice1Name = '   + QuotedStr(ExtraName);
                      SQL.Text := SQL.Text +',xOtherDevice1Mark = '   + QuotedStr(ExtraMark);
                      SQL.Text := SQL.Text +',xOtherDevice1Count = '  + ExtraCount;
                      SQL.Text := SQL.Text +',xOtherDevice1Price = '  + ExtraPrice;
                  end;
                  Sql.Text := SQL.Text +' Where xOrderNo_Fk='+OrderCode;

                  ExecSQL;
             end;
             //--------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblGp Set'  ;
                  SQL.Text := SQL.Text +'xGpKind = '    + QuotedStr(PayKind);
                  SQL.Text := SQL.Text +',xComments = ' + QuotedStr(PayComments);
                  ExecSQL;
             end;
             //-------------------------------------------
             with fmDMmain.tblGp do
             begin
                  if not Active Then
                     Open;
                  Locate('xOrderCode_Fk',StrToint(OrderCode),[]);
                  thisGpCode := FieldByName('xGPCode_Pk_AN').AsInteger;
             end;
             //-----------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblAghsat Set'  ;
                  SQL.Text := SQL.Text +'xTotalGP = '         + ATotalGP;
                  SQL.Text := SQL.Text +',xPishPardakht = '   + APishPardakht;
                  SQL.Text := SQL.Text +',xvarantyPrice = '   + AVarantyPrice;
                  SQL.Text := SQL.Text +',xAsemblePrice = '   + AAsembelPrice;
                  SQL.Text := SQL.Text +',xTakhfif = '        + ATakhfif;
                  SQL.Text := SQL.Text +',xMande = '          + AMande;
                  SQL.Text := SQL.Text +',xAghsatPrice = '    + AghsatPrice;
                  SQL.Text := SQL.Text +',xStartDate = '      + QuotedStr(Fillblank(AStartDate));
                  SQL.Text := SQL.Text +',xEndDate = '        + QuotedStr(Fillblank(AEndDate));
                  SQL.Text := SQL.Text +',xSarResidDay = '    + ASarResidDay;
                  SQL.Text := SQL.Text +',xPayDate = '        + QuotedStr(Fillblank(APayDate));
                  SQL.Text := SQL.Text +',xComment = '        + QuotedStr(AComments);
                  SQL.Text := SQL.Text +' Where  xGPCode_Fk = '+ IntTostr(thisGpCode) ;
                  ExecSQL;
             end;
            fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ‘œ',HbtInformation);             
     except
           on E:Exception Do fmDMmain.MessageDialog.Show('œ— À»  ÊÌ—«Ì‘ «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError);
     end;

end;

class procedure TDefSystemSellOrder.UpdateCValues(OrderCode, FactorNo,
  SellDate, Count, CustomerCode: String; SystemOrder: Boolean;
  OrderComments, CpuName, CpuMark, CPuCode, CpuCount, CpuPrice, RamName,
  RamMark, RamCode, RamCount, RamPrice, HardName, Hardmark, HardCode,
  HardCount, HardPrice, MainName, MainMark, MainCode, MainCount, MainPrice,
  MonitorName, MonitorMark, MonitorCode, MonitorCount, MonitorPrice,
  Casename, CaseMark, CaseCode, CaseCount, casePrice, CDRName, CDRMark,
  CDRCode, CDRCount, CDRPrice, CDWName, CDWMark, CDWCode, CDWCount,
  CDWPrice, DVDRomName, DVDRomMark, DVDRCode, DVDROMCount, DVDROMPrice,
  DVDWRITERName, DVDWRITERMark, DVDWCode, DVDWRITERCount, DVDWRITERPrice,
  SPKName, SPKMark, SPKCode, SPKCount, SPKPrice, KYBName, KYBMark, KYBCode,
  KYBCount, KYBPrice, MouseName, MouseMark, MouseCode, MouseCount,
  MousePrice, SoundName, SoundMark, SoundCode, SoundCount, SoundPrice,
  VGAName, VGAMark, VGACode, VGACount, VGAPrice, SCNname, SCNmark, SCNCode,
  SCNCount, SCNPrice, PRNName, PRNMark, PRNCode, PRNCount, PRNPrice,
  TVCName, TVCMark, TVCCode, TVCCount, TVCPrice, LANCName, LANCMark,
  LANCCode, LANCCount, LANCPrice, ModemName, ModemMark, ModemCode,
  ModemCount, ModemPrice, WebCamName, WebCamMark, WebCamCode, WebCamCount,
  WebCamPrice, HeadSetName, HeadSetMark, HeadSetCode, HeadSetCount,
  HeadSetPrice, MicrophoneName, MicrophoneMark, MicrophoneCode,
  MicrophoneCount, MicrophonePrice, UPSName, UPSMark, UPSCode, UPSCount,
  UPSPrice, SwitchName, SwitchMark, SwitchCode, SwitchCount, SwitchPrice,
  FloppyName, FloppyMark, FloppyCode, FloppyCount, FloppyPrice,
  ZipDriveName, ZipDriveMark, ZipDriveCode, ZipDriveCount, ZipDrivePrice,
  ExtraName, ExtraMark, ExtraCode, ExtraCount, ExtraPrice, PayKind,
  PayComments, CTotalGP, CPishPardakht, CVarantyPrice, CAsembelPrice,
  CTakhfif, CMande, CCheckPrice, CPayDate, CGetDate, CVosolDate, CCheckNo,
  CBankName, CBankAddress, CComments: String; Forzemanat: Boolean);
Var
   thisGpCode:Integer;
begin
     try
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblorder Set'  ;
                  SQL.Text := SQL.Text + 'xSellFactorNo ='  + FactorNo;
                  SQL.Text := SQL.Text + ',xDate  = '           + QuotedStr(Fillblank(SellDate));
                  SQL.Text := SQL.Text + ',xCount = '           + Count;
                  SQL.Text := SQL.Text + ',xPersonCode_Fk = '   + CustomerCode;
                  SQL.Text := SQL.Text + ',xComments        ='  +QuotedStr(OrderComments);
                  SQL.Text := SQL.Text + ',xIsSystemOrder = True ';
                  SQL.Text := SQL.Text +' where  xOrderNo_Pk_AN ='+OrderCode;
                  ExecSQL;
             end;
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblSystemInfo Set'  ;
                  Sql.Text := Sql.Text +'xOrderNo_Fk = '+OrderCode;
                  //-----------------------------------------------------------------------
                  //---------------------------- Cpu Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CPuCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCpuCode = '   + CPuCode ;
                      SQL.Text := SQL.Text +',xCpuName = '   + QuotedStr(CpuName);
                      SQL.Text := SQL.Text +',xCpuMark = '   + QuotedStr(CpuMark);
                      SQL.Text := SQL.Text +',xCpuCount = '  + CpuCount ;
                      SQL.Text := SQL.Text +',xCpuPrice = '  + CpuPrice ;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- Ram Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(RamCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xRamCode = '  + RamCode ;
                      SQL.Text := SQL.Text +',xRamName = '  + QuotedStr(RamName);
                      SQL.Text := SQL.Text +',xRamMark = '  + QuotedStr(RamMark);
                      SQL.Text := SQL.Text +',xRamCount = ' + RamCount;
                      SQL.Text := SQL.Text +',xRamPrice = ' + RamPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- Hard Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(HardCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xHardCode = '   + HardCode;
                      SQL.Text := SQL.Text +',xHardName = '   + QuotedStr(HardName);
                      SQL.Text := SQL.Text +',xHardMark = '   + QuotedStr(HardMark);
                      SQL.Text := SQL.Text +',xHardCount = '  + HardCount;
                      SQL.Text := SQL.Text +',xHardPrice = '  + HardPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //----------------------- MainBoard Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MainCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xMainBoardCode = '  + MainCode;
                      SQL.Text := SQL.Text +',xMainBoardName = '  + QuotedStr(MainName);
                      SQL.Text := SQL.Text +',xMainBoardMark = '  + QuotedStr(MainMark);
                      SQL.Text := SQL.Text +',xMainBoardCount = ' + MainCount;
                      SQL.Text := SQL.Text +',xMainBoardPrice = ' + MainPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //------------------------  Monitor Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MonitorCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xMonitorCode = '   + MonitorCode;
                      SQL.Text := SQL.Text +',xMonitorName = '   + QuotedStr(MonitorName);
                      SQL.Text := SQL.Text +',xMonitorMark = '   + QuotedStr(MonitorMark);
                      SQL.Text := SQL.Text +',xMonitorCount = '  + MonitorCount;
                      SQL.Text := SQL.Text +',xMonitorPrice = '  + MonitorPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Case Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CaseCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCaseCode = '   + CaseCode;
                      SQL.Text := SQL.Text +',xCaseName = '   + QuotedStr(CaseName);
                      SQL.Text := SQL.Text +',xCaseMark = '   + QuotedStr(CaseMark);
                      SQL.Text := SQL.Text +',xCaseCount = '  + CaseCount;
                      SQL.Text := SQL.Text +',xCasePrice = '  + casePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- CdRom Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CDRCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCdRomCode = '   + CDRCode;
                      SQL.Text := SQL.Text +',xCdRomName = '   + QuotedStr(CDRName);
                      SQL.Text := SQL.Text +',xCdRomMark = '   + QuotedStr(CDRMark);
                      SQL.Text := SQL.Text +',xCdRomCount = '  + CDRCount;
                      SQL.Text := SQL.Text +',xCdRomPrice = '  +CDRPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- CdWriter Info ------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CDWCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCdWriterCode = '   + CDWCode;
                      SQL.Text := SQL.Text +',xCdWriterName = '   + QuotedStr(CDWName);
                      SQL.Text := SQL.Text +',xCdWriterMark = '   + QuotedStr(CDWMark);
                      SQL.Text := SQL.Text +',xCdWriterCount = '  + CDWCount;
                      SQL.Text := SQL.Text +',xCdWriterPrice = '  + CDWPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- DvdRom Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(DVDRCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xDvdRomCode = '   + DVDRCode;
                      SQL.Text := SQL.Text +',xDvdRomName = '   + QuotedStr(DVDRomName);
                      SQL.Text := SQL.Text +',xDvdRomMark = '   + QuotedStr(DVDRomMark);
                      SQL.Text := SQL.Text +',xDvdRomCount = '  + DVDROMCount;
                      SQL.Text := SQL.Text +',xDvdRomPrice = '  + DVDROMPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //------------------------- DvdWriter Info ------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(DVDWCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xDvdWriterCode = '   + DVDWCode;
                      SQL.Text := SQL.Text +',xDvdWriterName = '   + QuotedStr(DVDWRITERName);
                      SQL.Text := SQL.Text +',xDvdWriterMark = '   + QuotedStr(DVDWRITERMark);
                      SQL.Text := SQL.Text +',xDvdWriterCount = '  + DVDWRITERCount;
                      SQL.Text := SQL.Text +',xDvdWriterPrice = '  + DVDWRITERPrice;
                  end;
                  //-----------------------------------------------------------------------
                  {Becuase Of Extra Field Number}
                  Sql.Text := SQL.Text +' Where xOrderNo_Fk='+OrderCode;
                  fmBuySystem.aredCommentsEdit.Text := SQL.Text;
                  ExecSQL;

                  SQL.Clear;
                  SQL.Text := 'Update tblSystemInfo Set'  ;
                  Sql.Text := SQL.Text +'xOrderNo_Fk='+OrderCode;
                  //-----------------------------------------------------------------------
                  //---------------------------- SpK Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SPKCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xSpeakerCode = '   + SPKCode;
                      SQL.Text := SQL.Text +',xSpeakerName = '   + QuotedStr(SPKName);
                      SQL.Text := SQL.Text +',xSpeakerMark = '   + QuotedStr(SPKMark);
                      SQL.Text := SQL.Text +',xSpeakerCount = '  + SPKCount;
                      SQL.Text := SQL.Text +',xSpeakerPrice = '  + SPKPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- KYB Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(KYBCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xKeyBoardCode = '   + KYBCode;
                      SQL.Text := SQL.Text +',xKeyBoardName = '   + QuotedStr(KYBName);
                      SQL.Text := SQL.Text +',xKeyBoardMark = '   + QuotedStr(KYBMark);
                      SQL.Text := SQL.Text +',xKeyBoardCount = '  + KYBCount;
                      SQL.Text := SQL.Text +',xKeyBoardPrice = '  + KYBPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Mouse Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MouseCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xMouseCode = '   + MouseCode;
                      SQL.Text := SQL.Text +',xMouseName = '   + QuotedStr(MouseName);
                      SQL.Text := SQL.Text +',xMouseMark = '   + QuotedStr(MouseMark);
                      SQL.Text := SQL.Text +',xMouseCount = '  + MouseCount;
                      SQL.Text := SQL.Text +',xMousePrice = '  + MousePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Sound Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SoundCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xSoundCode = '   + SoundCode;
                      SQL.Text := SQL.Text +',xSoundName = '   + QuotedStr(SoundName);
                      SQL.Text := SQL.Text +',xSoundMark = '   + QuotedStr(SoundMark);
                      SQL.Text := SQL.Text +',xSoundCount = '  + SoundCount;
                      SQL.Text := SQL.Text +',xSoundPrice = '  + SoundPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- VGA Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(VGACode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xVGACode = '   + VGACode;
                      SQL.Text := SQL.Text +',xVGAName = '   + QuotedStr(VGAName);
                      SQL.Text := SQL.Text +',xVGAMark = '   + QuotedStr(VGAMark);
                      SQL.Text := SQL.Text +',xVGACount = '  + VGACount;
                      SQL.Text := SQL.Text +',xVGAPrice = '  + VGAPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- SCANNER Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SCNCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xScanerCode = '   + SCNCode;
                      SQL.Text := SQL.Text +',xScanerName = '   + QuotedStr(SCNname);
                      SQL.Text := SQL.Text +',xScanerMark = '   + QuotedStr(SCNMark);
                      SQL.Text := SQL.Text +',xScanerCount = '  + SCNCount;
                      SQL.Text := SQL.Text +',xScanerPrice = '  + SCNPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- Printer Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(PRNCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xPrinterCode = '   + PRNCode;
                      SQL.Text := SQL.Text +',xPrinterName = '   + QuotedStr(PRNName);
                      SQL.Text := SQL.Text +',xPrinterMark = '   + QuotedStr(PRNMark);
                      SQL.Text := SQL.Text +',xPrinterCount = '  + PRNCount;
                      SQL.Text := SQL.Text +',xPrinterPrice = '  + PRNPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- TVCARD Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(TVCCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xTVCARDCode = '   + TVCCode;
                      SQL.Text := SQL.Text +',xTVCARDName = '   + QuotedStr(TVCName);
                      SQL.Text := SQL.Text +',xTVCARDMark = '   + QuotedStr(TVCMark);
                      SQL.Text := SQL.Text +',xTVCARDCount = '  + TVCCount;
                      SQL.Text := SQL.Text +',xTVCARDPrice = '  + TVCPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- LANCARD Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(LANCCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xLANCARDCode = '  + LANCCode;
                      SQL.Text := SQL.Text +',xLANCARDName = '  + QuotedStr(LANCName);
                      SQL.Text := SQL.Text +',xLANCARDMark = '  + QuotedStr(LANCMark);
                      SQL.Text := SQL.Text +',xLANCARDCount = ' + LANCCount;
                      SQL.Text := SQL.Text +',xLANCARDPrice = ' + LANCPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Modem Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(ModemCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xModemCode = '   + ModemCode;
                      SQL.Text := SQL.Text +',xModemName = '   + QuotedStr(ModemName);
                      SQL.Text := SQL.Text +',xModemMark = '   + QuotedStr(ModemMark);
                      SQL.Text := SQL.Text +',xModemCount = '  + ModemCount;
                      SQL.Text := SQL.Text +',xModemPrice = '  + ModemPrice;
                  end;
                  //-----------------------------------------------------------------------
                  {Becuase Of Extra Field Number}
                  Sql.Text := SQL.Text +' Where xOrderNo_Fk='+OrderCode;
                  ExecSQL;

                  SQL.Clear;
                  SQL.Text := 'Update tblSystemInfo Set'  ;
                  Sql.Text := SQL.Text +' xOrderNo_Fk='+OrderCode;
                  //-----------------------------------------------------------------------
                  //-------------------------- WebCam Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(WebCamCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xWebcamCode = '   + WebCamCode;
                      SQL.Text := SQL.Text +',xWebcamName = '   + QuotedStr(WebCamName);
                      SQL.Text := SQL.Text +',xWebcamMark = '   + QuotedStr(WebCamMark);
                      SQL.Text := SQL.Text +',xWebcamCount = '  + WebCamCount;
                      SQL.Text := SQL.Text +',xWebcamPrice = '  + WebCamPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- HeadSet Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(HeadSetCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xHeadSetCode = '   + HeadSetCode;
                      SQL.Text := SQL.Text +',xHeadSetName = '   + QuotedStr(HeadSetName);
                      SQL.Text := SQL.Text +',xHeadSetMark = '   + QuotedStr(HeadSetMark);
                      SQL.Text := SQL.Text +',xHeadSetCount = '  + HeadSetCount;
                      SQL.Text := SQL.Text +',xHeadSetPrice = '  + HeadSetPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- Mic Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MicrophoneCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xMicrophoneCode = '   + MicrophoneCode;
                      SQL.Text := SQL.Text +',xMicrophoneName = '   + QuotedStr(MicrophoneName);
                      SQL.Text := SQL.Text +',xMicrophoneMark = '   + QuotedStr(MicrophoneMark);
                      SQL.Text := SQL.Text +',xMicrophoneCount = '  + MicrophoneCount;
                      SQL.Text := SQL.Text +',xMicrophonePrice = '  + MicrophonePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- UPS Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(UPSCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xUpsCode = '   + UPSCode;
                      SQL.Text := SQL.Text +',xUPSName = '   + QuotedStr(UPSName);
                      SQL.Text := SQL.Text +',xUpsMark = '   + QuotedStr(UPSMark);
                      SQL.Text := SQL.Text +',xUpsCount = '  + UPSCount;
                      SQL.Text := SQL.Text +',xUpsPrice = '  + UPSPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- Switch Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SwitchCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xSwitchCode = '   + SwitchCode ;
                      SQL.Text := SQL.Text +',xSwitchName = '   + QuotedStr(SwitchName);
                      SQL.Text := SQL.Text +',xSwitchMark = '   + QuotedStr(SwitchMark);
                      SQL.Text := SQL.Text +',xSwitchCount = '  + SwitchCount;
                      SQL.Text := SQL.Text +',xSwitchPrice = '  + SwitchPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- FDD Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(FloppyCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xFloppyCode = '   + FloppyCode;
                      SQL.Text := SQL.Text +',xFloppyName = '   + QuotedStr(FloppyName);
                      SQL.Text := SQL.Text +',xFloppyMark = '   + QuotedStr(FloppyMark);
                      SQL.Text := SQL.Text +',xFloppyCount = '  + FloppyCount;
                      SQL.Text := SQL.Text +',xFloppyPrice = '  + FloppyPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- ZipDrive Info ------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(ZipDriveCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xZipDriveCode = '   + ZipDriveCode;
                      SQL.Text := SQL.Text +',xZipDriveName = '   + QuotedStr(ZipDriveName);
                      SQL.Text := SQL.Text +',xZipDriveMark = '   + QuotedStr(ZipDriveMark);
                      SQL.Text := SQL.Text +',xZipDriveCount = '  + ZipDriveCount;
                      SQL.Text := SQL.Text +',xZipDrivePrice = '  + ZipDrivePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Extra Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(ExtraCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xOtherDevice1Code = '   + ExtraCode;
                      SQL.Text := SQL.Text +',xOtherDevice1Name = '   + QuotedStr(ExtraName);
                      SQL.Text := SQL.Text +',xOtherDevice1Mark = '   + QuotedStr(ExtraMark);
                      SQL.Text := SQL.Text +',xOtherDevice1Count = '  + ExtraCount;
                      SQL.Text := SQL.Text +',xOtherDevice1Price = '  + ExtraPrice;
                  end;
                  Sql.Text := SQL.Text +' Where xOrderNo_Fk='+OrderCode;

                  ExecSQL;
             end;
             //--------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblGp Set'  ;
                  SQL.Text := SQL.Text +'xGpKind = '    + QuotedStr(PayKind);
                  SQL.Text := SQL.Text +',xComments = ' + QuotedStr(PayComments);
                  ExecSQL;
             end;
             //-------------------------------------------
             with fmDMmain.tblGp do
             begin
                  if not Active Then
                     Open;
                  Locate('xOrderCode_Fk',StrToint(OrderCode),[]);
                  thisGpCode := FieldByName('xGPCode_Pk_AN').AsInteger;
             end;
             //-----------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblChecks Set'  ;
                  SQL.Text := SQL.Text +'xTotalGP = '             + CTotalGP;
                  SQL.Text := SQL.Text +',xPishPardakht = '       + CPishPardakht;
                  SQL.Text := SQL.Text +',xvarantyPrice = '       + CVarantyPrice;
                  SQL.Text := SQL.Text +',xAsemblePrice = '       + CAsembelPrice;
                  SQL.Text := SQL.Text +',xTakhfif = '            + CTakhfif;
                  SQL.Text := SQL.Text +',xMande = '              + CMande;
                  SQL.Text := SQL.Text +',xCheckNo = '            + QuotedStr(CCheckNo);
                  SQL.Text := SQL.Text +',xCheckPirce = '         + CCheckPrice;
                  SQL.Text := SQL.Text +',xCheckVosolDate = '     + QuotedStr(Fillblank(CVosolDate));
                  SQL.Text := SQL.Text +',xCheckTahvilDate = '    + QuotedStr(Fillblank(CGetDate));
                  SQL.Text := SQL.Text +',xPayDate = '            + QuotedStr(Fillblank(CPayDate));
                  SQL.Text := SQL.Text +',xCheckBank = '          + QuotedStr(CBankName);
                  SQL.Text := SQL.Text +',xBankaddress = '        + QuotedStr(CBankAddress);
                  SQL.Text := SQL.Text +',xIsCheckForZemanat = '  + BoolToStr(Forzemanat);
                  SQL.Text := SQL.Text +',xComment = '            + QuotedStr(CComments);
                  SQL.Text := SQL.Text +' Where xGpCode_Fk =' + IntToStr(thisGpCode);
                  ExecSQL;
             end;
            fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ‘œ',HbtInformation);             
     except
           on E:Exception Do fmDMmain.MessageDialog.Show('œ— À»  ÊÌ—«Ì‘ «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError);
     end;
             
end;

class procedure TDefSystemSellOrder.UpdateNValues(OrderCode, FactorNo,
  SellDate, Count, CustomerCode: String; SystemOrder: Boolean;
  OrderComments, CpuName, CpuMark, CPuCode, CpuCount, CpuPrice, RamName,
  RamMark, RamCode, RamCount, RamPrice, HardName, Hardmark, HardCode,
  HardCount, HardPrice, MainName, MainMark, MainCode, MainCount, MainPrice,
  MonitorName, MonitorMark, MonitorCode, MonitorCount, MonitorPrice,
  Casename, CaseMark, CaseCode, CaseCount, casePrice, CDRName, CDRMark,
  CDRCode, CDRCount, CDRPrice, CDWName, CDWMark, CDWCode, CDWCount,
  CDWPrice, DVDRomName, DVDRomMark, DVDRCode, DVDROMCount, DVDROMPrice,
  DVDWRITERName, DVDWRITERMark, DVDWCode, DVDWRITERCount, DVDWRITERPrice,
  SPKName, SPKMark, SPKCode, SPKCount, SPKPrice, KYBName, KYBMark, KYBCode,
  KYBCount, KYBPrice, MouseName, MouseMark, MouseCode, MouseCount,
  MousePrice, SoundName, SoundMark, SoundCode, SoundCount, SoundPrice,
  VGAName, VGAMark, VGACode, VGACount, VGAPrice, SCNname, SCNmark, SCNCode,
  SCNCount, SCNPrice, PRNName, PRNMark, PRNCode, PRNCount, PRNPrice,
  TVCName, TVCMark, TVCCode, TVCCount, TVCPrice, LANCName, LANCMark,
  LANCCode, LANCCount, LANCPrice, ModemName, ModemMark, ModemCode,
  ModemCount, ModemPrice, WebCamName, WebCamMark, WebCamCode, WebCamCount,
  WebCamPrice, HeadSetName, HeadSetMark, HeadSetCode, HeadSetCount,
  HeadSetPrice, MicrophoneName, MicrophoneMark, MicrophoneCode,
  MicrophoneCount, MicrophonePrice, UPSName, UPSMark, UPSCode, UPSCount,
  UPSPrice, SwitchName, SwitchMark, SwitchCode, SwitchCount, SwitchPrice,
  FloppyName, FloppyMark, FloppyCode, FloppyCount, FloppyPrice,
  ZipDriveName, ZipDriveMark, ZipDriveCode, ZipDriveCount, ZipDrivePrice,
  ExtraName, ExtraMark, ExtraCode, ExtraCount, ExtraPrice, PayKind,
  PayComments, NTotalGP, NPishPardakht, NVarantyPrice, NAsembelPrice,
  NTakhfif, NMande, NPayDate, NComments: String);
Var
   thisGpCode:Integer;
begin
     try
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblorder Set'  ;
                  SQL.Text := SQL.Text + 'xSellFactorNo ='  + FactorNo;
                  SQL.Text := SQL.Text + ',xDate  = '           + QuotedStr(Fillblank(SellDate));
                  SQL.Text := SQL.Text + ',xCount = '           + Count;
                  SQL.Text := SQL.Text + ',xPersonCode_Fk = '   + CustomerCode;
                  SQL.Text := SQL.Text + ',xComments        ='  +QuotedStr(OrderComments);
                  SQL.Text := SQL.Text + ',xIsSystemOrder = True ';
                  SQL.Text := SQL.Text +' where  xOrderNo_Pk_AN ='+OrderCode;
                  ExecSQL;
             end;
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblSystemInfo Set'  ;
                  Sql.Text := Sql.Text +'xOrderNo_Fk = '+OrderCode;
                  //-----------------------------------------------------------------------
                  //---------------------------- Cpu Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CPuCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCpuCode = '   + CPuCode ;
                      SQL.Text := SQL.Text +',xCpuName = '   + QuotedStr(CpuName);
                      SQL.Text := SQL.Text +',xCpuMark = '   + QuotedStr(CpuMark);
                      SQL.Text := SQL.Text +',xCpuCount = '  + CpuCount ;
                      SQL.Text := SQL.Text +',xCpuPrice = '  + CpuPrice ;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- Ram Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(RamCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xRamCode = '  + RamCode ;
                      SQL.Text := SQL.Text +',xRamName = '  + QuotedStr(RamName);
                      SQL.Text := SQL.Text +',xRamMark = '  + QuotedStr(RamMark);
                      SQL.Text := SQL.Text +',xRamCount = ' + RamCount;
                      SQL.Text := SQL.Text +',xRamPrice = ' + RamPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- Hard Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(HardCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xHardCode = '   + HardCode;
                      SQL.Text := SQL.Text +',xHardName = '   + QuotedStr(HardName);
                      SQL.Text := SQL.Text +',xHardMark = '   + QuotedStr(HardMark);
                      SQL.Text := SQL.Text +',xHardCount = '  + HardCount;
                      SQL.Text := SQL.Text +',xHardPrice = '  + HardPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //----------------------- MainBoard Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MainCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xMainBoardCode = '  + MainCode;
                      SQL.Text := SQL.Text +',xMainBoardName = '  + QuotedStr(MainName);
                      SQL.Text := SQL.Text +',xMainBoardMark = '  + QuotedStr(MainMark);
                      SQL.Text := SQL.Text +',xMainBoardCount = ' + MainCount;
                      SQL.Text := SQL.Text +',xMainBoardPrice = ' + MainPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //------------------------  Monitor Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MonitorCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xMonitorCode = '   + MonitorCode;
                      SQL.Text := SQL.Text +',xMonitorName = '   + QuotedStr(MonitorName);
                      SQL.Text := SQL.Text +',xMonitorMark = '   + QuotedStr(MonitorMark);
                      SQL.Text := SQL.Text +',xMonitorCount = '  + MonitorCount;
                      SQL.Text := SQL.Text +',xMonitorPrice = '  + MonitorPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Case Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CaseCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCaseCode = '   + CaseCode;
                      SQL.Text := SQL.Text +',xCaseName = '   + QuotedStr(CaseName);
                      SQL.Text := SQL.Text +',xCaseMark = '   + QuotedStr(CaseMark);
                      SQL.Text := SQL.Text +',xCaseCount = '  + CaseCount;
                      SQL.Text := SQL.Text +',xCasePrice = '  + casePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- CdRom Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CDRCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCdRomCode = '   + CDRCode;
                      SQL.Text := SQL.Text +',xCdRomName = '   + QuotedStr(CDRName);
                      SQL.Text := SQL.Text +',xCdRomMark = '   + QuotedStr(CDRMark);
                      SQL.Text := SQL.Text +',xCdRomCount = '  + CDRCount;
                      SQL.Text := SQL.Text +',xCdRomPrice = '  +CDRPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- CdWriter Info ------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(CDWCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xCdWriterCode = '   + CDWCode;
                      SQL.Text := SQL.Text +',xCdWriterName = '   + QuotedStr(CDWName);
                      SQL.Text := SQL.Text +',xCdWriterMark = '   + QuotedStr(CDWMark);
                      SQL.Text := SQL.Text +',xCdWriterCount = '  + CDWCount;
                      SQL.Text := SQL.Text +',xCdWriterPrice = '  + CDWPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- DvdRom Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(DVDRCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xDvdRomCode = '   + DVDRCode;
                      SQL.Text := SQL.Text +',xDvdRomName = '   + QuotedStr(DVDRomName);
                      SQL.Text := SQL.Text +',xDvdRomMark = '   + QuotedStr(DVDRomMark);
                      SQL.Text := SQL.Text +',xDvdRomCount = '  + DVDROMCount;
                      SQL.Text := SQL.Text +',xDvdRomPrice = '  + DVDROMPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //------------------------- DvdWriter Info ------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(DVDWCode) <>'' Then
                  begin
                      SQL.Text := SQL.Text +',xDvdWriterCode = '   + DVDWCode;
                      SQL.Text := SQL.Text +',xDvdWriterName = '   + QuotedStr(DVDWRITERName);
                      SQL.Text := SQL.Text +',xDvdWriterMark = '   + QuotedStr(DVDWRITERMark);
                      SQL.Text := SQL.Text +',xDvdWriterCount = '  + DVDWRITERCount;
                      SQL.Text := SQL.Text +',xDvdWriterPrice = '  + DVDWRITERPrice;
                  end;
                  //-----------------------------------------------------------------------
                  {Becuase Of Extra Field Number}
                  Sql.Text := SQL.Text +' Where xOrderNo_Fk='+OrderCode;
                  fmBuySystem.aredCommentsEdit.Text := SQL.Text;
                  ExecSQL;

                  SQL.Clear;
                  SQL.Text := 'Update tblSystemInfo Set'  ;
                  Sql.Text := SQL.Text +'xOrderNo_Fk='+OrderCode;
                  //-----------------------------------------------------------------------
                  //---------------------------- SpK Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SPKCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xSpeakerCode = '   + SPKCode;
                      SQL.Text := SQL.Text +',xSpeakerName = '   + QuotedStr(SPKName);
                      SQL.Text := SQL.Text +',xSpeakerMark = '   + QuotedStr(SPKMark);
                      SQL.Text := SQL.Text +',xSpeakerCount = '  + SPKCount;
                      SQL.Text := SQL.Text +',xSpeakerPrice = '  + SPKPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- KYB Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(KYBCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xKeyBoardCode = '   + KYBCode;
                      SQL.Text := SQL.Text +',xKeyBoardName = '   + QuotedStr(KYBName);
                      SQL.Text := SQL.Text +',xKeyBoardMark = '   + QuotedStr(KYBMark);
                      SQL.Text := SQL.Text +',xKeyBoardCount = '  + KYBCount;
                      SQL.Text := SQL.Text +',xKeyBoardPrice = '  + KYBPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Mouse Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MouseCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xMouseCode = '   + MouseCode;
                      SQL.Text := SQL.Text +',xMouseName = '   + QuotedStr(MouseName);
                      SQL.Text := SQL.Text +',xMouseMark = '   + QuotedStr(MouseMark);
                      SQL.Text := SQL.Text +',xMouseCount = '  + MouseCount;
                      SQL.Text := SQL.Text +',xMousePrice = '  + MousePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Sound Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SoundCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xSoundCode = '   + SoundCode;
                      SQL.Text := SQL.Text +',xSoundName = '   + QuotedStr(SoundName);
                      SQL.Text := SQL.Text +',xSoundMark = '   + QuotedStr(SoundMark);
                      SQL.Text := SQL.Text +',xSoundCount = '  + SoundCount;
                      SQL.Text := SQL.Text +',xSoundPrice = '  + SoundPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- VGA Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(VGACode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xVGACode = '   + VGACode;
                      SQL.Text := SQL.Text +',xVGAName = '   + QuotedStr(VGAName);
                      SQL.Text := SQL.Text +',xVGAMark = '   + QuotedStr(VGAMark);
                      SQL.Text := SQL.Text +',xVGACount = '  + VGACount;
                      SQL.Text := SQL.Text +',xVGAPrice = '  + VGAPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- SCANNER Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SCNCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xScanerCode = '   + SCNCode;
                      SQL.Text := SQL.Text +',xScanerName = '   + QuotedStr(SCNname);
                      SQL.Text := SQL.Text +',xScanerMark = '   + QuotedStr(SCNMark);
                      SQL.Text := SQL.Text +',xScanerCount = '  + SCNCount;
                      SQL.Text := SQL.Text +',xScanerPrice = '  + SCNPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- Printer Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(PRNCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xPrinterCode = '   + PRNCode;
                      SQL.Text := SQL.Text +',xPrinterName = '   + QuotedStr(PRNName);
                      SQL.Text := SQL.Text +',xPrinterMark = '   + QuotedStr(PRNMark);
                      SQL.Text := SQL.Text +',xPrinterCount = '  + PRNCount;
                      SQL.Text := SQL.Text +',xPrinterPrice = '  + PRNPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- TVCARD Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(TVCCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xTVCARDCode = '   + TVCCode;
                      SQL.Text := SQL.Text +',xTVCARDName = '   + QuotedStr(TVCName);
                      SQL.Text := SQL.Text +',xTVCARDMark = '   + QuotedStr(TVCMark);
                      SQL.Text := SQL.Text +',xTVCARDCount = '  + TVCCount;
                      SQL.Text := SQL.Text +',xTVCARDPrice = '  + TVCPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- LANCARD Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(LANCCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xLANCARDCode = '  + LANCCode;
                      SQL.Text := SQL.Text +',xLANCARDName = '  + QuotedStr(LANCName);
                      SQL.Text := SQL.Text +',xLANCARDMark = '  + QuotedStr(LANCMark);
                      SQL.Text := SQL.Text +',xLANCARDCount = ' + LANCCount;
                      SQL.Text := SQL.Text +',xLANCARDPrice = ' + LANCPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Modem Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(ModemCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xModemCode = '   + ModemCode;
                      SQL.Text := SQL.Text +',xModemName = '   + QuotedStr(ModemName);
                      SQL.Text := SQL.Text +',xModemMark = '   + QuotedStr(ModemMark);
                      SQL.Text := SQL.Text +',xModemCount = '  + ModemCount;
                      SQL.Text := SQL.Text +',xModemPrice = '  + ModemPrice;
                  end;
                  //-----------------------------------------------------------------------
                  {Becuase Of Extra Field Number}
                  Sql.Text := SQL.Text +' Where xOrderNo_Fk='+OrderCode;
                  ExecSQL;

                  SQL.Clear;
                  SQL.Text := 'Update tblSystemInfo Set'  ;
                  Sql.Text := SQL.Text +' xOrderNo_Fk='+OrderCode;
                  //-----------------------------------------------------------------------
                  //-------------------------- WebCam Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(WebCamCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xWebcamCode = '   + WebCamCode;
                      SQL.Text := SQL.Text +',xWebcamName = '   + QuotedStr(WebCamName);
                      SQL.Text := SQL.Text +',xWebcamMark = '   + QuotedStr(WebCamMark);
                      SQL.Text := SQL.Text +',xWebcamCount = '  + WebCamCount;
                      SQL.Text := SQL.Text +',xWebcamPrice = '  + WebCamPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- HeadSet Info -------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(HeadSetCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xHeadSetCode = '   + HeadSetCode;
                      SQL.Text := SQL.Text +',xHeadSetName = '   + QuotedStr(HeadSetName);
                      SQL.Text := SQL.Text +',xHeadSetMark = '   + QuotedStr(HeadSetMark);
                      SQL.Text := SQL.Text +',xHeadSetCount = '  + HeadSetCount;
                      SQL.Text := SQL.Text +',xHeadSetPrice = '  + HeadSetPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- Mic Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(MicrophoneCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xMicrophoneCode = '   + MicrophoneCode;
                      SQL.Text := SQL.Text +',xMicrophoneName = '   + QuotedStr(MicrophoneName);
                      SQL.Text := SQL.Text +',xMicrophoneMark = '   + QuotedStr(MicrophoneMark);
                      SQL.Text := SQL.Text +',xMicrophoneCount = '  + MicrophoneCount;
                      SQL.Text := SQL.Text +',xMicrophonePrice = '  + MicrophonePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- UPS Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(UPSCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xUpsCode = '   + UPSCode;
                      SQL.Text := SQL.Text +',xUPSName = '   + QuotedStr(UPSName);
                      SQL.Text := SQL.Text +',xUpsMark = '   + QuotedStr(UPSMark);
                      SQL.Text := SQL.Text +',xUpsCount = '  + UPSCount;
                      SQL.Text := SQL.Text +',xUpsPrice = '  + UPSPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- Switch Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(SwitchCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xSwitchCode = '   + SwitchCode ;
                      SQL.Text := SQL.Text +',xSwitchName = '   + QuotedStr(SwitchName);
                      SQL.Text := SQL.Text +',xSwitchMark = '   + QuotedStr(SwitchMark);
                      SQL.Text := SQL.Text +',xSwitchCount = '  + SwitchCount;
                      SQL.Text := SQL.Text +',xSwitchPrice = '  + SwitchPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //---------------------------- FDD Info ---------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(FloppyCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xFloppyCode = '   + FloppyCode;
                      SQL.Text := SQL.Text +',xFloppyName = '   + QuotedStr(FloppyName);
                      SQL.Text := SQL.Text +',xFloppyMark = '   + QuotedStr(FloppyMark);
                      SQL.Text := SQL.Text +',xFloppyCount = '  + FloppyCount;
                      SQL.Text := SQL.Text +',xFloppyPrice = '  + FloppyPrice;
                  end;
                  //-----------------------------------------------------------------------
                  //-------------------------- ZipDrive Info ------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(ZipDriveCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xZipDriveCode = '   + ZipDriveCode;
                      SQL.Text := SQL.Text +',xZipDriveName = '   + QuotedStr(ZipDriveName);
                      SQL.Text := SQL.Text +',xZipDriveMark = '   + QuotedStr(ZipDriveMark);
                      SQL.Text := SQL.Text +',xZipDriveCount = '  + ZipDriveCount;
                      SQL.Text := SQL.Text +',xZipDrivePrice = '  + ZipDrivePrice;
                  end;
                  //-----------------------------------------------------------------------
                  //--------------------------- Extra Info --------------------------------
                  //-----------------------------------------------------------------------
                  if Trim(ExtraCode) <> '' Then
                  begin
                      SQL.Text := SQL.Text +',xOtherDevice1Code = '   + ExtraCode;
                      SQL.Text := SQL.Text +',xOtherDevice1Name = '   + QuotedStr(ExtraName);
                      SQL.Text := SQL.Text +',xOtherDevice1Mark = '   + QuotedStr(ExtraMark);
                      SQL.Text := SQL.Text +',xOtherDevice1Count = '  + ExtraCount;
                      SQL.Text := SQL.Text +',xOtherDevice1Price = '  + ExtraPrice;
                  end;
                  Sql.Text := SQL.Text +' Where xOrderNo_Fk='+OrderCode;

                  ExecSQL;
             end;
             //--------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblGp Set'  ;
                  SQL.Text := SQL.Text +'xGpKind = '    + QuotedStr(PayKind);
                  SQL.Text := SQL.Text +',xComments = ' + QuotedStr(PayComments);
                  ExecSQL;
             end;
             //-------------------------------------------
             with fmDMmain.tblGp do
             begin
                  if not Active Then
                     Open;
                  Locate('xOrderCode_Fk',StrToint(OrderCode),[]);
                  thisGpCode := FieldByName('xGPCode_Pk_AN').AsInteger;
             end;
             //-----------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblNaghd Set'  ;
                  SQL.Text := SQL.Text +'xTotalGP = '         + NTotalGP;
                  SQL.Text := SQL.Text +',xPishPardakht = '   + NPishPardakht;
                  SQL.Text := SQL.Text +',xvarantyPrice = '   + NVarantyPrice;
                  SQL.Text := SQL.Text +',xAsemblePrice = '   + NAsembelPrice;
                  SQL.Text := SQL.Text +',xTakhfif = '        + NTakhfif;
                  SQL.Text := SQL.Text +',xMande = '          + NMande;
                  SQL.Text := SQL.Text +',xPayDate = '        + QuotedStr(Fillblank(NPayDate));
                  SQL.Text := SQL.Text +',xComment = '        + QuotedStr(NComments);
                  SQL.Text := SQL.Text +' Where xGpCode_Fk =' + IntToStr(thisGpCode);
                  ExecSQL;
             end;
            fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ‘œ',HbtInformation);             
     except
           on E:Exception Do fmDMmain.MessageDialog.Show('œ— À»  ÊÌ—«Ì‘ «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError);
     end;
             
end;

{ TDefBuyGoodsOrderClass }

class procedure TDefBuyGoodsOrderClass.InsertAPayValue(OrderNo: Integer;
  PayKind, PayComments: String; ATotalGP, APishPardakht, ATakhfif, AMande,
  ASarResidDay, AghsatPrice: Integer; APayDate, AStartDate, AEndDate,
  AComments: String);
var
   thisPayKind:Integer;
begin
     with fmDMmain Do
     begin
          try
              //----------------------- TblGp Insert ----------------------------------
              with tblGp do
              begin
                   if not Active Then
                      Open;
                   Insert;

                   FieldByName('xOrderCode_Fk').AsInteger := OrderNo;
                   FieldByName('xGpKind').AsString        := PayKind;
                   FieldByName('xComments').AsString      := PayComments;

                   Post;
                   Locate('xOrderCode_Fk',OrderNo,[]);
                   thisPayKind := FieldByName('xGPCode_Pk_AN').AsInteger;
              end;
              //---------------------------- tblAghsat Info ---------------------------
              with tblAghsat do
              begin
                   if not Active Then
                      Open;
                   Insert;

                   FieldByName('xGPCode_Fk').AsInteger   := thisPayKind;

                   FieldByName('xTotalGP').AsFloat       := StrToFloat(IntToStr(ATotalGP));
                   FieldByName('xPishPardakht').AsFloat  := StrToFloat(IntToStr(APishPardakht));
                   FieldByName('xTakhfif').AsFloat       := StrToFloat(IntToStr(ATakhfif));
                   FieldByName('xMande').AsFloat         := StrToFloat(IntToStr(AMande));
                   FieldByName('xAghsatPrice').AsFloat   := StrtoFloat(IntToStr(AghsatPrice));
                   FieldByName('xStartDate').AsString    := AStartDate;
                   FieldByName('xEndDate').AsString      := AEndDate;
                   FieldByName('xSarResidDay').AsInteger := ASarResidDay;
                   FieldByName('xPayDate').AsString      := APayDate;
                   FieldByName('xComments').AsString     := AComments;

                   Post;
              end;
              fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ê—œÌœ',HbtInformation);
          Except
                on E:Exception do fmDmMain.MessageDialog.Show('œ— À»  «ÿ·«⁄«  «‘ò«·Ì »ÊÃÊœ ¬„œ.',HbtError );
          end;
     end;
end;

class procedure TDefBuyGoodsOrderClass.InsertCPayValue(OrderNo: Integer;
  PayKind, PayComments: String; CTotalGP, CPishPardakht, CTakhfif, CMande,
  CCheckPrice: Integer; CPayDate, CGetDate, CVosolDate, CCheckNo,
  CBankName, CBankAddress, CComments: String; Forzemanat: Boolean);
Var
   thisPayKind : Integer;
begin
     with fmDMmain Do
     begin
          try
                  //----------------------- TblGp Insert ----------------------------------
                  with tblGp do
                  begin
                       if not Active Then
                          Open;
                       Insert;

                       FieldByName('xOrderCode_Fk').AsInteger := OrderNo;
                       FieldByName('xGpKind').AsString        := PayKind;
                       FieldByName('xComments').AsString      := PayComments;

                       Post;
                       Locate('xOrderCode_Fk',OrderNo,[]);
                       thisPayKind := FieldByName('xGPCode_Pk_AN').AsInteger;
                  end;
                  //--------------------------- tblChecks Info ----------------------------
                  with tblChecks do
                  begin
                       if not Active Then
                          Open;
                       Insert;

                       FieldByName('xGpCode_Fk').AsInteger         := thisPayKind;

                       FieldByName('xTotalGp').AsFloat             := StrToFloat(IntToStr(CTotalGP));
                       FieldByName('xPishPardakht').AsFloat        := StrToFloat(IntToStr(CPishPardakht));
                       FieldByName('xTakhfif').AsFloat             := StrToFloat(IntToStr(CTakhfif));
                       FieldByName('xMande').AsFloat               := StrToFloat(IntToStr(CMande));
                       FieldByName('xCheckNo').AsString            := CCheckNo;
                       FieldByName('xCheckPirce').AsFloat          := StrToFloat(IntToStr(CCheckPrice));
                       FieldByName('xCheckVosolDate').AsString     := CVosolDate;
                       FieldByName('xCheckTahvilDate').AsString    := CGetDate;
                       FieldByName('xPayDate').AsString            := CPayDate;
                       FieldByName('xCheckBank').AsString          := CBankName;
                       FieldByName('xBankaddress').AsString        := CBankAddress;
                       FieldByName('xIsCheckForZemanat').AsBoolean := Forzemanat;
                       FieldByName('xComments').AsString           := CComments;

                       post;
                  end;
                  fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ê—œÌœ',HbtInformation);                  
          Except
                on E:Exception do fmDmMain.MessageDialog.Show('œ— À»  «ÿ·«⁄«  «‘ò«·Ì »ÊÃÊœ ¬„œ.',HbtError );
          end;
     end;
end;

class procedure TDefBuyGoodsOrderClass.InsertGoodsListValue(OrderCode,
  GoodCode, Count, BasePrice: Integer; GoodsName, StartvarantyDate,
  EndVarantydate, Compony, VarantyNo, VarantyComments, Comments: String;IsVaranty:Boolean);
begin
     with fmDMmain Do
     begin
          try
                  with tblOrderGoodsList do
                  begin
                       if not Active Then
                          Open;
                       Insert;

                       FieldByName('xOrderNo_Fk').AsInteger         := OrderCode;

                       FieldByName('xGoodsCode_Fk').AsInteger      := GoodCode;
                       FieldByName('xGoodsName').AsString          := GoodsName;
                       FieldByName('xCount').AsInteger             := Count;
                       FieldByName('xBasePrice').AsFloat           := StrToFloat(IntToStr(BasePrice));
                       FieldByName('xVarantyStartDate').AsString   := Fillblank(StartvarantyDate);
                       FieldByName('xVarantyEndDate').AsString     := Fillblank(EndVarantydate);
                       FieldByName('xWhoVaranty').AsString         := Compony;
                       FieldByName('xVarantyNo').AsString          := VarantyNo;
                       FieldByName('xIsvaranty').AsBoolean         := IsVaranty;
                       FieldByName('xVarantyComments').AsString    := VarantyComments;
                       FieldByName('xComments').AsString           := Comments;                       

                       post;
                  end;
          Except
                on E:Exception do fmDmMain.MessageDialog.Show('œ— À»  «ÿ·«⁄«  «‘ò«·Ì »ÊÃÊœ ¬„œ.',HbtError );
          end;
     end;
end;

class procedure TDefBuyGoodsOrderClass.InsertNPayValue(OrderNo: Integer;
  PayKind, PayComments: String; NTotalGP, NPishPardakht, NTakhfif,
  NMande: Integer; NPayDate, NComments: String);
Var
   thisPayKind:Integer;
begin
     with fmDMmain Do
     begin
          try
                  with tblGp do
                  begin
                       if not Active Then
                          Open;
                       Insert;

                       FieldByName('xOrderCode_Fk').AsInteger := OrderNo;
                       FieldByName('xGpKind').AsString        := PayKind;
                       FieldByName('xComments').AsString      := PayComments;

                       Post;
                       Locate('xOrderCode_Fk',OrderNo,[]);
                       thisPayKind := FieldByName('xGPCode_Pk_AN').AsInteger;
                  end;
                  //------------------------ tblNaghd Info --------------------------------
                  with tblNaghd do
                  begin
                       if not Active Then
                          Open;
                       Insert;

                       FieldByName('xGpCode_Fk').AsInteger  := thisPayKind;

                       FieldByName('xTotalGP').AsFloat      := StrToFloat(IntToStr(NTotalGP));
                       FieldByName('xPishPardakht').AsFloat := StrToFloat(IntToStr(NPishPardakht));
                       FieldByName('xTakhfif').AsFloat      := StrToFloat(IntToStr(NTakhfif));
                       FieldByName('xMande').AsFloat   := StrToFloat(IntToStr(NMande));
                       FieldByName('xPayDate').AsString     := NPayDate;
                       FieldByName('xComment').AsString     := NComments;

                       Post;
                  end;
                  fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ê—œÌœ',HbtInformation);
          Except On E:Exception Do fmDMmain.MessageDialog.Show('œ— À»  «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError);
          end;
     end;
end;

class function TDefBuyGoodsOrderClass.InsertOrderValue(FactorNo: Integer;
  BuyDate: String; Count, SellerCode: Integer;
  OrderComments: String): Integer;
Var
   thisOrderNo : Integer;
begin
     with fmDMmain Do
     begin
          try
              with tblOrder do
              begin
                   if not Active Then
                      Open;
                   Insert;

                   FieldByName('xBuyOrderFactorNo').AsInteger := FactorNo;
                   FieldByName('xDate').AsString := Fillblank(BuyDate) ;
                   FieldByName('xCount').AsInteger := Count;
                   FieldByName('xPersonCode_Fk').AsInteger := SellerCode;
                   FieldByName('xIsSystemOrder').AsBoolean := False;
                   FieldByName('xComments').AsString := OrderComments;

                   Post;
                   Locate('xBuyOrderFactorNo',FactorNo,[]);
                   thisOrderNo := FieldByName('xOrderNo_Pk_AN').AsInteger;
              end;
              fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ê—œÌœ',HbtInformation);
          Except On E:Exception Do fmDMmain.MessageDialog.Show('œ— À»  «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError);
          end;
     end;
     Result := thisOrderNo;
end;

class procedure TDefBuyGoodsOrderClass.UpdateAPayValue(OrderNo: Integer;
  PayKind, PayComments, ATotalGP, APishPardakht, ATakhfif, AMande,
  ASarResidDay, AghsatPrice, APayDate, AStartDate, AEndDate,
  AComments: String);
var
   thisGpCode:Integer;
begin
     with fmDMmain do
     begin
          Try
             //--------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblGp Set'  ;
                  SQL.Text := SQL.Text +'xGpKind = '    + QuotedStr(PayKind);
                  SQL.Text := SQL.Text +',xComments = ' + QuotedStr(PayComments);
                  ExecSQL;
             end;
             //-------------------------------------------
             with fmDMmain.tblGp do
             begin
                  if not Active Then
                     Open;
                  Locate('xOrderCode_Fk',OrderNo,[]);
                  thisGpCode := FieldByName('xGPCode_Pk_AN').AsInteger;
             end;
             //-----------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblAghsat Set'  ;
                  SQL.Text := SQL.Text +'xTotalGP = '         + ATotalGP;
                  SQL.Text := SQL.Text +',xPishPardakht = '   + APishPardakht;
                  SQL.Text := SQL.Text +',xTakhfif = '        + ATakhfif;
                  SQL.Text := SQL.Text +',xMande = '          + AMande;
                  SQL.Text := SQL.Text +',xAghsatPrice = '    + AghsatPrice;
                  SQL.Text := SQL.Text +',xStartDate = '      + QuotedStr(AStartDate);
                  SQL.Text := SQL.Text +',xEndDate = '        + QuotedStr(AEndDate);
                  SQL.Text := SQL.Text +',xSarResidDay = '    + ASarResidDay;
                  SQL.Text := SQL.Text +',xPayDate = '        + QuotedStr(APayDate);
                  SQL.Text := SQL.Text +',xComment = '        + QuotedStr(AComments);
                  SQL.Text := SQL.Text +' Where  xGPCode_Fk = '+ IntTostr(thisGpCode) ;
                  ExecSQL;
             end;
          except
                on E:Exception Do fmDMmain.MessageDialog.Show('œ— À»  ÊÌ—«Ì‘ «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError);
          end;
     end;
end;

class procedure TDefBuyGoodsOrderClass.UpdateCPayValue(OrderNo: Integer;
  PayKind, PayComments, CTotalGP, CPishPardakht, CTakhfif, CMande,
  CCheckPrice, CPayDate, CGetDate, CVosolDate, CCheckNo, CBankName,
  CBankAddress, CComments: String; Forzemanat: Boolean);
Var
   thisGpCode:Integer;
begin
     with fmDMmain do
     begin
          try
             //--------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblGp Set'  ;
                  SQL.Text := SQL.Text +'xGpKind = '    + QuotedStr(PayKind);
                  SQL.Text := SQL.Text +',xComments = ' + QuotedStr(PayComments);
                  ExecSQL;
             end;
             //-------------------------------------------
             with fmDMmain.tblGp do
             begin
                  if not Active Then
                     Open;
                  Locate('xOrderCode_Fk',OrderNo,[]);
                  thisGpCode := FieldByName('xGPCode_Pk_AN').AsInteger;
             end;
             //-----------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblChecks Set'  ;
                  SQL.Text := SQL.Text +'xTotalGP = '             + CTotalGP;
                  SQL.Text := SQL.Text +',xPishPardakht = '       + CPishPardakht;
                  SQL.Text := SQL.Text +',xTakhfif = '            + CTakhfif;
                  SQL.Text := SQL.Text +',xMande = '              + CMande;
                  SQL.Text := SQL.Text +',xCheckNo = '            + QuotedStr(CCheckNo);
                  SQL.Text := SQL.Text +',xCheckPirce = '         + CCheckPrice;
                  SQL.Text := SQL.Text +',xCheckVosolDate = '     + QuotedStr(CVosolDate);
                  SQL.Text := SQL.Text +',xCheckTahvilDate = '    + QuotedStr(CGetDate);
                  SQL.Text := SQL.Text +',xPayDate = '            + QuotedStr(CPayDate);
                  SQL.Text := SQL.Text +',xCheckBank = '          + QuotedStr(CBankName);
                  SQL.Text := SQL.Text +',xBankaddress = '        + QuotedStr(CBankAddress);
                  SQL.Text := SQL.Text +',xIsCheckForZemanat = '  + BoolToStr(Forzemanat);
                  SQL.Text := SQL.Text +',xComment = '            + QuotedStr(CComments);
                  SQL.Text := SQL.Text +' Where xGpCode_Fk =' + IntToStr(thisGpCode);
                  ExecSQL;
             end;
          except
                on E:Exception Do fmDMmain.MessageDialog.Show('œ— À»  ÊÌ—«Ì‘ «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError);
          end;
     end;
end;

class procedure TDefBuyGoodsOrderClass.UpdateNPayValue(OrderNo: Integer;
  PayKind, PayComments, NTotalGP, NPishPardakht, NTakhfif, NMande,
  NPayDate, NComments: String);
Var
   thisGpCode : Integer;
begin
     with fmDMmain do
     begin
          Try
             //--------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblGp Set'  ;
                  SQL.Text := SQL.Text +'xGpKind = '    + QuotedStr(PayKind);
                  SQL.Text := SQL.Text +',xComments = ' + QuotedStr(PayComments);
                  ExecSQL;
             end;
             //-------------------------------------------
             with fmDMmain.tblGp do
             begin
                  if not Active Then
                     Open;
                  Locate('xOrderCode_Fk',OrderNo,[]);
                  thisGpCode := FieldByName('xGPCode_Pk_AN').AsInteger;
             end;
             //-----------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblNaghd Set'  ;
                  SQL.Text := SQL.Text +'xTotalGP = '         + NTotalGP;
                  SQL.Text := SQL.Text +',xPishPardakht = '   + NPishPardakht;
                  SQL.Text := SQL.Text +',xTakhfif = '        + NTakhfif;
                  SQL.Text := SQL.Text +',xMande = '          + NMande;
                  SQL.Text := SQL.Text +',xPayDate = '        + QuotedStr(NPayDate);
                  SQL.Text := SQL.Text +',xComment = '        + QuotedStr(NComments);
                  SQL.Text := SQL.Text +' Where xGpCode_Fk =' + IntToStr(thisGpCode);
                  ShowMessage(SQL.Text);
                  ExecSQL;
             end;
             fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ê—œÌœ',HbtInformation);
          except
                on E:Exception Do fmDMmain.MessageDialog.Show('œ— À»  ÊÌ—«Ì‘ «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError)
          end;
     end;
end;

class procedure TDefBuyGoodsOrderClass.UpdateOrderValue(OrderCode,
  FactorNo, BuyDate,SellerCode, OrderComments: String);
begin
     try
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblorder Set'  ;
                  SQL.Text := SQL.Text + 'xBuyOrderFactorNo ='  + FactorNo;
                  SQL.Text := SQL.Text + ',xDate  = '           + QuotedStr(BuyDate);
                  SQL.Text := SQL.Text + ',xPersonCode_Fk = '   + SellerCode;
                  SQL.Text := SQL.Text + ',xComments        ='  +QuotedStr(OrderComments);
                  SQL.Text := SQL.Text + ',xIsSystemOrder = False ';
                  SQL.Text := SQL.Text +' where  xOrderNo_Pk_AN ='+OrderCode;
                  ShowMessage(SQL.Text);
                  ExecSQL;
             end;
     except
           on E:Exception Do fmDMmain.MessageDialog.Show('œ— À»  ÊÌ—«Ì‘ «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError)
     end;
end;

{ TDefSellGoodsOrderClass }

class procedure TDefSellGoodsOrderClass.InsertAPayValue(OrderNo: Integer;
  PayKind, PayComments: String; ATotalGP, APishPardakht, ATakhfif, AMande,
  ASarResidDay, AghsatPrice: Integer; APayDate, AStartDate, AEndDate,
  AComments: String);
var
   thisPayKind:Integer;
begin
     with fmDMmain Do
     begin
          try
              //----------------------- TblGp Insert ----------------------------------
              with tblGp do
              begin
                   if not Active Then
                      Open;
                   Insert;

                   FieldByName('xOrderCode_Fk').AsInteger := OrderNo;
                   FieldByName('xGpKind').AsString        := PayKind;
                   FieldByName('xComments').AsString      := PayComments;

                   Post;
                   Locate('xOrderCode_Fk',OrderNo,[]);
                   thisPayKind := FieldByName('xGPCode_Pk_AN').AsInteger;
              end;
              //---------------------------- tblAghsat Info ---------------------------
              with tblAghsat do
              begin
                   if not Active Then
                      Open;
                   Insert;

                   FieldByName('xGPCode_Fk').AsInteger   := thisPayKind;

                   FieldByName('xTotalGP').AsFloat       := StrToFloat(IntToStr(ATotalGP));
                   FieldByName('xPishPardakht').AsFloat  := StrToFloat(IntToStr(APishPardakht));
                   FieldByName('xTakhfif').AsFloat       := StrToFloat(IntToStr(ATakhfif));
                   FieldByName('xMande').AsFloat         := StrToFloat(IntToStr(AMande));
                   FieldByName('xAghsatPrice').AsFloat   := StrtoFloat(IntToStr(AghsatPrice));
                   FieldByName('xStartDate').AsString    := AStartDate;
                   FieldByName('xEndDate').AsString      := AEndDate;
                   FieldByName('xSarResidDay').AsInteger := ASarResidDay;
                   FieldByName('xPayDate').AsString      := APayDate;
                   FieldByName('xComments').AsString     := AComments;

                   Post;
              end;
              fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ê—œÌœ',HbtInformation);
          Except
                on E:Exception do fmDmMain.MessageDialog.Show('œ— À»  «ÿ·«⁄«  «‘ò«·Ì »ÊÃÊœ ¬„œ.',HbtError );
          end;
     end;
end;

class procedure TDefSellGoodsOrderClass.InsertCPayValue(OrderNo: Integer;
  PayKind, PayComments: String; CTotalGP, CPishPardakht, CTakhfif, CMande,
  CCheckPrice: Integer; CPayDate, CGetDate, CVosolDate, CCheckNo,
  CBankName, CBankAddress, CComments: String; Forzemanat: Boolean);
Var
   thisPayKind : Integer;
begin
     with fmDMmain Do
     begin
          try
                  //----------------------- TblGp Insert ----------------------------------
                  with tblGp do
                  begin
                       if not Active Then
                          Open;
                       Insert;

                       FieldByName('xOrderCode_Fk').AsInteger := OrderNo;
                       FieldByName('xGpKind').AsString        := PayKind;
                       FieldByName('xComments').AsString      := PayComments;

                       Post;
                       Locate('xOrderCode_Fk',OrderNo,[]);
                       thisPayKind := FieldByName('xGPCode_Pk_AN').AsInteger;
                  end;
                  //--------------------------- tblChecks Info ----------------------------
                  with tblChecks do
                  begin
                       if not Active Then
                          Open;
                       Insert;

                       FieldByName('xGpCode_Fk').AsInteger         := thisPayKind;

                       FieldByName('xTotalGp').AsFloat             := StrToFloat(IntToStr(CTotalGP));
                       FieldByName('xPishPardakht').AsFloat        := StrToFloat(IntToStr(CPishPardakht));
                       FieldByName('xTakhfif').AsFloat             := StrToFloat(IntToStr(CTakhfif));
                       FieldByName('xMande').AsFloat               := StrToFloat(IntToStr(CMande));
                       FieldByName('xCheckNo').AsString            := CCheckNo;
                       FieldByName('xCheckPirce').AsFloat          := StrToFloat(IntToStr(CCheckPrice));
                       FieldByName('xCheckVosolDate').AsString     := CVosolDate;
                       FieldByName('xCheckTahvilDate').AsString    := CGetDate;
                       FieldByName('xPayDate').AsString            := CPayDate;
                       FieldByName('xCheckBank').AsString          := CBankName;
                       FieldByName('xBankaddress').AsString        := CBankAddress;
                       FieldByName('xIsCheckForZemanat').AsBoolean := Forzemanat;
                       FieldByName('xComments').AsString           := CComments;

                       post;
                  end;
                  fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ê—œÌœ',HbtInformation);                  
          Except
                on E:Exception do fmDmMain.MessageDialog.Show('œ— À»  «ÿ·«⁄«  «‘ò«·Ì »ÊÃÊœ ¬„œ.',HbtError );
          end;
     end;
end;

class procedure TDefSellGoodsOrderClass.InsertGoodsListValue(OrderCode,
  GoodCode, Count, BasePrice: Integer; GoodsName, StartvarantyDate,
  EndVarantydate, Compony, VarantyNo, VarantyComments, Comments: String;
  IsVaranty: Boolean);
begin
     with fmDMmain Do
     begin
          try
                  with tblOrderGoodsList do
                  begin
                       if not Active Then
                          Open;
                       Insert;

                       FieldByName('xOrderNo_Fk').AsInteger         := OrderCode;

                       FieldByName('xGoodsCode_Fk').AsInteger      := GoodCode;
                       FieldByName('xGoodsName').AsString          := GoodsName;
                       FieldByName('xCount').AsInteger             := Count;
                       FieldByName('xBasePrice').AsFloat           := StrToFloat(IntToStr(BasePrice));
                       FieldByName('xVarantyStartDate').AsString   := Fillblank(StartvarantyDate);
                       FieldByName('xVarantyEndDate').AsString     := Fillblank(EndVarantydate);
                       FieldByName('xWhoVaranty').AsString         := Compony;
                       FieldByName('xVarantyNo').AsString          := VarantyNo;
                       FieldByName('xIsvaranty').AsBoolean         := IsVaranty;
                       FieldByName('xVarantyComments').AsString    := VarantyComments;
                       FieldByName('xComments').AsString           := Comments;                       

                       post;
                  end;
          Except
                on E:Exception do fmDmMain.MessageDialog.Show('œ— À»  «ÿ·«⁄«  «‘ò«·Ì »ÊÃÊœ ¬„œ.',HbtError );
          end;
     end;
end;

class procedure TDefSellGoodsOrderClass.InsertNPayValue(OrderNo: Integer;
  PayKind, PayComments: String; NTotalGP, NPishPardakht, NTakhfif,
  NMande: Integer; NPayDate, NComments: String);
Var
   thisPayKind:Integer;
begin
     with fmDMmain Do
     begin
          try
                  with tblGp do
                  begin
                       if not Active Then
                          Open;
                       Insert;

                       FieldByName('xOrderCode_Fk').AsInteger := OrderNo;
                       FieldByName('xGpKind').AsString        := PayKind;
                       FieldByName('xComments').AsString      := PayComments;

                       Post;
                       Locate('xOrderCode_Fk',OrderNo,[]);
                       thisPayKind := FieldByName('xGPCode_Pk_AN').AsInteger;
                  end;
                  //------------------------ tblNaghd Info --------------------------------
                  with tblNaghd do
                  begin
                       if not Active Then
                          Open;
                       Insert;

                       FieldByName('xGpCode_Fk').AsInteger  := thisPayKind;

                       FieldByName('xTotalGP').AsFloat      := StrToFloat(IntToStr(NTotalGP));
                       FieldByName('xPishPardakht').AsFloat := StrToFloat(IntToStr(NPishPardakht));
                       FieldByName('xTakhfif').AsFloat      := StrToFloat(IntToStr(NTakhfif));
                       FieldByName('xMande').AsFloat   := StrToFloat(IntToStr(NMande));
                       FieldByName('xPayDate').AsString     := NPayDate;
                       FieldByName('xComment').AsString     := NComments;

                       Post;
                  end;
                  fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ê—œÌœ',HbtInformation);
          Except On E:Exception Do fmDMmain.MessageDialog.Show('œ— À»  «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError);
          end;
     end;
end;

class function TDefSellGoodsOrderClass.InsertOrderValue(FactorNo: Integer;
  SellDate: String; Count, CustomerCode: Integer;
  OrderComments: String): Integer;
Var
   thisOrderNo : Integer;
begin
     with fmDMmain Do
     begin
          try
              with tblOrder do
              begin
                   if not Active Then
                      Open;
                   Insert;

                   FieldByName('xSellFactorNo').AsInteger := FactorNo;
                   FieldByName('xDate').AsString := Fillblank(SellDate) ;
                   FieldByName('xCount').AsInteger := Count;
                   FieldByName('xPersonCode_Fk').AsInteger := CustomerCode;
                   FieldByName('xIsSystemOrder').AsBoolean := False;
                   FieldByName('xComments').AsString := OrderComments;

                   Post;
                   Locate('xSellFactorNo',FactorNo,[]);
                   thisOrderNo := FieldByName('xOrderNo_Pk_AN').AsInteger;
              end;
              fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ê—œÌœ',HbtInformation);
          Except On E:Exception Do fmDMmain.MessageDialog.Show('œ— À»  «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError);
          end;
     end;
     Result := thisOrderNo;
end;

class procedure TDefSellGoodsOrderClass.UpdateAPayValue(OrderNo: Integer;
  PayKind, PayComments, ATotalGP, APishPardakht, ATakhfif, AMande,
  ASarResidDay, AghsatPrice, APayDate, AStartDate, AEndDate,
  AComments: String);
var
   thisGpCode:Integer;
begin
     with fmDMmain do
     begin
          Try
             //--------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblGp Set'  ;
                  SQL.Text := SQL.Text +'xGpKind = '    + QuotedStr(PayKind);
                  SQL.Text := SQL.Text +',xComments = ' + QuotedStr(PayComments);
                  ExecSQL;
             end;
             //-------------------------------------------
             with fmDMmain.tblGp do
             begin
                  if not Active Then
                     Open;
                  Locate('xOrderCode_Fk',OrderNo,[]);
                  thisGpCode := FieldByName('xGPCode_Pk_AN').AsInteger;
             end;
             //-----------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblAghsat Set'  ;
                  SQL.Text := SQL.Text +'xTotalGP = '         + ATotalGP;
                  SQL.Text := SQL.Text +',xPishPardakht = '   + APishPardakht;
                  SQL.Text := SQL.Text +',xTakhfif = '        + ATakhfif;
                  SQL.Text := SQL.Text +',xMande = '          + AMande;
                  SQL.Text := SQL.Text +',xAghsatPrice = '    + AghsatPrice;
                  SQL.Text := SQL.Text +',xStartDate = '      + QuotedStr(AStartDate);
                  SQL.Text := SQL.Text +',xEndDate = '        + QuotedStr(AEndDate);
                  SQL.Text := SQL.Text +',xSarResidDay = '    + ASarResidDay;
                  SQL.Text := SQL.Text +',xPayDate = '        + QuotedStr(APayDate);
                  SQL.Text := SQL.Text +',xComment = '        + QuotedStr(AComments);
                  SQL.Text := SQL.Text +' Where  xGPCode_Fk = '+ IntTostr(thisGpCode) ;
                  ExecSQL;
             end;
          except
                on E:Exception Do fmDMmain.MessageDialog.Show('œ— À»  ÊÌ—«Ì‘ «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError);
          end;
     end;
end;

class procedure TDefSellGoodsOrderClass.UpdateCPayValue(OrderNo: Integer;
  PayKind, PayComments, CTotalGP, CPishPardakht, CTakhfif, CMande,
  CCheckPrice, CPayDate, CGetDate, CVosolDate, CCheckNo, CBankName,
  CBankAddress, CComments: String; Forzemanat: Boolean);
Var
   thisGpCode:Integer;
begin
     with fmDMmain do
     begin
          try
             //--------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblGp Set'  ;
                  SQL.Text := SQL.Text +'xGpKind = '    + QuotedStr(PayKind);
                  SQL.Text := SQL.Text +',xComments = ' + QuotedStr(PayComments);
                  ExecSQL;
             end;
             //-------------------------------------------
             with fmDMmain.tblGp do
             begin
                  if not Active Then
                     Open;
                  Locate('xOrderCode_Fk',OrderNo,[]);
                  thisGpCode := FieldByName('xGPCode_Pk_AN').AsInteger;
             end;
             //-----------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblChecks Set'  ;
                  SQL.Text := SQL.Text +'xTotalGP = '             + CTotalGP;
                  SQL.Text := SQL.Text +',xPishPardakht = '       + CPishPardakht;
                  SQL.Text := SQL.Text +',xTakhfif = '            + CTakhfif;
                  SQL.Text := SQL.Text +',xMande = '              + CMande;
                  SQL.Text := SQL.Text +',xCheckNo = '            + QuotedStr(CCheckNo);
                  SQL.Text := SQL.Text +',xCheckPirce = '         + CCheckPrice;
                  SQL.Text := SQL.Text +',xCheckVosolDate = '     + QuotedStr(CVosolDate);
                  SQL.Text := SQL.Text +',xCheckTahvilDate = '    + QuotedStr(CGetDate);
                  SQL.Text := SQL.Text +',xPayDate = '            + QuotedStr(CPayDate);
                  SQL.Text := SQL.Text +',xCheckBank = '          + QuotedStr(CBankName);
                  SQL.Text := SQL.Text +',xBankaddress = '        + QuotedStr(CBankAddress);
                  SQL.Text := SQL.Text +',xIsCheckForZemanat = '  + BoolToStr(Forzemanat);
                  SQL.Text := SQL.Text +',xComment = '            + QuotedStr(CComments);
                  SQL.Text := SQL.Text +' Where xGpCode_Fk =' + IntToStr(thisGpCode);
                  ExecSQL;
             end;
          except
                on E:Exception Do fmDMmain.MessageDialog.Show('œ— À»  ÊÌ—«Ì‘ «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError);
          end;
     end;
end;

class procedure TDefSellGoodsOrderClass.UpdateNPayValue(OrderNo: Integer;
  PayKind, PayComments, NTotalGP, NPishPardakht, NTakhfif, NMande,
  NPayDate, NComments: String);
Var
   thisGpCode : Integer;
begin
     with fmDMmain do
     begin
          Try
             //--------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblGp Set'  ;
                  SQL.Text := SQL.Text +'xGpKind = '    + QuotedStr(PayKind);
                  SQL.Text := SQL.Text +',xComments = ' + QuotedStr(PayComments);
                  ExecSQL;
             end;
             //-------------------------------------------
             with fmDMmain.tblGp do
             begin
                  if not Active Then
                     Open;
                  Locate('xOrderCode_Fk',OrderNo,[]);
                  thisGpCode := FieldByName('xGPCode_Pk_AN').AsInteger;
             end;
             //-----------------------------------------
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblNaghd Set'  ;
                  SQL.Text := SQL.Text +'xTotalGP = '         + NTotalGP;
                  SQL.Text := SQL.Text +',xPishPardakht = '   + NPishPardakht;
                  SQL.Text := SQL.Text +',xTakhfif = '        + NTakhfif;
                  SQL.Text := SQL.Text +',xMande = '          + NMande;
                  SQL.Text := SQL.Text +',xPayDate = '        + QuotedStr(NPayDate);
                  SQL.Text := SQL.Text +',xComment = '        + QuotedStr(NComments);
                  SQL.Text := SQL.Text +' Where xGpCode_Fk =' + IntToStr(thisGpCode);
                  ShowMessage(SQL.Text);
                  ExecSQL;
             end;
             fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ê—œÌœ',HbtInformation);
          except
                on E:Exception Do fmDMmain.MessageDialog.Show('œ— À»  ÊÌ—«Ì‘ «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError)
          end;
     end;
end;

class procedure TDefSellGoodsOrderClass.UpdateOrderValue(OrderCode,
  FactorNo, SellDate, CustomerCode, OrderComments: String);
begin
     try
             with fmDMmain.qrytmp do
             begin
                  SQL.Clear;
                  SQL.Text := 'Update tblorder Set'  ;
                  SQL.Text := SQL.Text + 'xSellFactorNo ='  + FactorNo;
                  SQL.Text := SQL.Text + ',xDate  = '           + QuotedStr(SellDate);
                  SQL.Text := SQL.Text + ',xPersonCode_Fk = '   + CustomerCode;
                  SQL.Text := SQL.Text + ',xComments        ='  +QuotedStr(OrderComments);
                  SQL.Text := SQL.Text + ',xIsSystemOrder = False ';
                  SQL.Text := SQL.Text +' where  xOrderNo_Pk_AN ='+OrderCode;
                  ShowMessage(SQL.Text);
                  ExecSQL;
             end;
     except
           on E:Exception Do fmDMmain.MessageDialog.Show('œ— À»  ÊÌ—«Ì‘ «‘ò«·Ì »ÊÃÊœ ¬„œ',HbtError)
     end;
end;

procedure TfmDMmain.rvSysCustomerOverrideSetup(ReportSystem: TRvSystem;
  OverrideMode: TOverrideMode; var OverrideForm: TForm);
begin
  case
    OverrideMode of
    omCreate:
      begin
        OverrideForm := THbtSetupForm.Create(nil);
        OverrideForm.Caption := rvSysCustomer.TitleSetup;
        (OverrideForm as THbtSetupForm).ReportSystem := ReportSystem;
      end;
    omShow:
      begin
        with OverrideForm as THbtSetupForm, ReportSystem do
        begin
          PreviewSetup := False;
          Aborted := ShowModal = mrCancel;
        end;
      end;
    omWait:
      begin
	{because showModal: no wait necessary!}
      end;
    omFree:
      begin
        OverrideForm.Free;
      end;
  end;
end;

procedure TfmDMmain.rvSysCustomerOverridePreview(ReportSystem: TRvSystem;
  OverrideMode: TOverrideMode; var OverrideForm: TForm);
begin
  Case OverrideMode Of
    omCreate: Begin
        OverrideForm := TFormMyPreview.Create(self);
        OverrideForm.Caption := ReportSystem.TitlePreview;
        OverrideForm.Width := ReportSystem.SystemPreview.FormWidth;
        OverrideForm.Height := ReportSystem.SystemPreview.FormHeight;
        OverrideForm.WindowState := ReportSystem.SystemPreview.FormState;
        (OverrideForm As TFormMyPreview).ReportSystem := ReportSystem;
      End;

    omShow: Begin
        ReportSystem.SystemPreview.InitPreview((OverrideForm As TFormMyPreview).RvRenderPreview);
        If Assigned(ReportSystem.OnPreviewSetup) Then Begin
          ReportSystem.OnPreviewSetup((OverrideForm As TFormMyPreview).RvRenderPreview);
        End; { if }

        (OverrideForm As TFormMyPreview).InputFileName := ReportSystem.SystemFiler.Filename;
        (OverrideForm As TFormMyPreview).InputStream := ReportSystem.SystemFiler.Stream;
        (OverrideForm As TFormMyPreview).InitFromRPSystem;
    (* *)
        If soPreviewModal In ReportSystem.SystemOptions Then Begin
          OverrideForm.ShowModal;
        End Else Begin
          OverrideForm.Show;
        End; { else }
      End;

    omWait: Begin
        If Not (soPreviewModal In ReportSystem.SystemOptions) Then Begin
      // Wait for close
          Repeat
            Sleep(250);
            Application.ProcessMessages;
          Until Not OverrideForm.Visible;
        End; { if }
      End;
    omFree: Begin
        If (ReportSystem.SystemFiler.StreamMode In [smTempFile, smFile]) Then Begin
          (OverrideForm As TFormMyPreview).RvRenderPreview.NDRStream.Free;
          (OverrideForm As TFormMyPreview).RvRenderPreview.NDRStream := Nil;
        End; { if }
        FreeAndNil(OverrideForm);
      End;
  End; { case }
end;

procedure TfmDMmain.RvSysSellerOverridePreview(ReportSystem: TRvSystem;
  OverrideMode: TOverrideMode; var OverrideForm: TForm);
begin
  Case OverrideMode Of
    omCreate: Begin
        OverrideForm := TFormMyPreview.Create(self);
        OverrideForm.Caption := ReportSystem.TitlePreview;
        OverrideForm.Width := ReportSystem.SystemPreview.FormWidth;
        OverrideForm.Height := ReportSystem.SystemPreview.FormHeight;
        OverrideForm.WindowState := ReportSystem.SystemPreview.FormState;
        (OverrideForm As TFormMyPreview).ReportSystem := ReportSystem;
      End;

    omShow: Begin
        ReportSystem.SystemPreview.InitPreview((OverrideForm As TFormMyPreview).RvRenderPreview);
        If Assigned(ReportSystem.OnPreviewSetup) Then Begin
          ReportSystem.OnPreviewSetup((OverrideForm As TFormMyPreview).RvRenderPreview);
        End; { if }

        (OverrideForm As TFormMyPreview).InputFileName := ReportSystem.SystemFiler.Filename;
        (OverrideForm As TFormMyPreview).InputStream := ReportSystem.SystemFiler.Stream;
        (OverrideForm As TFormMyPreview).InitFromRPSystem;
    (* *)
        If soPreviewModal In ReportSystem.SystemOptions Then Begin
          OverrideForm.ShowModal;
        End Else Begin
          OverrideForm.Show;
        End; { else }
      End;

    omWait: Begin
        If Not (soPreviewModal In ReportSystem.SystemOptions) Then Begin
      // Wait for close
          Repeat
            Sleep(250);
            Application.ProcessMessages;
          Until Not OverrideForm.Visible;
        End; { if }
      End;
    omFree: Begin
        If (ReportSystem.SystemFiler.StreamMode In [smTempFile, smFile]) Then Begin
          (OverrideForm As TFormMyPreview).RvRenderPreview.NDRStream.Free;
          (OverrideForm As TFormMyPreview).RvRenderPreview.NDRStream := Nil;
        End; { if }
        FreeAndNil(OverrideForm);
      End;
  End; { case }
end;

procedure TfmDMmain.RvSysSellerOverrideSetup(ReportSystem: TRvSystem;
  OverrideMode: TOverrideMode; var OverrideForm: TForm);
begin
  case
    OverrideMode of
    omCreate:
      begin
        OverrideForm := THbtSetupForm.Create(nil);
        OverrideForm.Caption := RvSysSeller.TitleSetup;
        (OverrideForm as THbtSetupForm).ReportSystem := ReportSystem;
      end;
    omShow:
      begin
        with OverrideForm as THbtSetupForm, ReportSystem do
        begin
          PreviewSetup := False;
          Aborted := ShowModal = mrCancel;
        end;
      end;
    omWait:
      begin
	{because showModal: no wait necessary!}
      end;
    omFree:
      begin
        OverrideForm.Free;
      end;
  end;
end;

procedure TfmDMmain.RvSysStoreInfoOverridePreview(ReportSystem: TRvSystem;
  OverrideMode: TOverrideMode; var OverrideForm: TForm);
begin
  Case OverrideMode Of
    omCreate: Begin
        OverrideForm := TFormMyPreview.Create(self);
        OverrideForm.Caption := ReportSystem.TitlePreview;
        OverrideForm.Width := ReportSystem.SystemPreview.FormWidth;
        OverrideForm.Height := ReportSystem.SystemPreview.FormHeight;
        OverrideForm.WindowState := ReportSystem.SystemPreview.FormState;
        (OverrideForm As TFormMyPreview).ReportSystem := ReportSystem;
      End;

    omShow: Begin
        ReportSystem.SystemPreview.InitPreview((OverrideForm As TFormMyPreview).RvRenderPreview);
        If Assigned(ReportSystem.OnPreviewSetup) Then Begin
          ReportSystem.OnPreviewSetup((OverrideForm As TFormMyPreview).RvRenderPreview);
        End; { if }

        (OverrideForm As TFormMyPreview).InputFileName := ReportSystem.SystemFiler.Filename;
        (OverrideForm As TFormMyPreview).InputStream := ReportSystem.SystemFiler.Stream;
        (OverrideForm As TFormMyPreview).InitFromRPSystem;
    (* *)
        If soPreviewModal In ReportSystem.SystemOptions Then Begin
          OverrideForm.ShowModal;
        End Else Begin
          OverrideForm.Show;
        End; { else }
      End;

    omWait: Begin
        If Not (soPreviewModal In ReportSystem.SystemOptions) Then Begin
      // Wait for close
          Repeat
            Sleep(250);
            Application.ProcessMessages;
          Until Not OverrideForm.Visible;
        End; { if }
      End;
    omFree: Begin
        If (ReportSystem.SystemFiler.StreamMode In [smTempFile, smFile]) Then Begin
          (OverrideForm As TFormMyPreview).RvRenderPreview.NDRStream.Free;
          (OverrideForm As TFormMyPreview).RvRenderPreview.NDRStream := Nil;
        End; { if }
        FreeAndNil(OverrideForm);
      End;
  End; { case }
end;

procedure TfmDMmain.RvSysStoreInfoOverrideSetup(ReportSystem: TRvSystem;
  OverrideMode: TOverrideMode; var OverrideForm: TForm);
begin
  case
    OverrideMode of
    omCreate:
      begin
        OverrideForm := THbtSetupForm.Create(nil);
        OverrideForm.Caption := RvSysStoreInfo.TitleSetup;
        (OverrideForm as THbtSetupForm).ReportSystem := ReportSystem;
      end;
    omShow:
      begin
        with OverrideForm as THbtSetupForm, ReportSystem do
        begin
          PreviewSetup := False;
          Aborted := ShowModal = mrCancel;
        end;
      end;
    omWait:
      begin
	{because showModal: no wait necessary!}
      end;
    omFree:
      begin
        OverrideForm.Free;
      end;
  end;
end;

procedure TfmDMmain.DataModuleDestroy(Sender: TObject);
var
   i:Integer;
begin
     for I:=0 To componentcount-1 Do
     begin
          if ( Components[i] is TFormMyPreview ) then
             ( Components[i] As TForm ).Close;
     end;
end;

end.
