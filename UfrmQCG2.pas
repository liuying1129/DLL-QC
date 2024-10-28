unit UfrmQCG2;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, Buttons, 
  DosMove, TeeProcs, TeEngine, Chart, DbChart, Series, 
  ActnList, DateUtils, ADOLYGetcode, UfrmLocateRecord, 
  frxClass, frxDBSet, StdCtrls, ExtCtrls;

type
  TfrmQCG2 = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    DosMove1: TDosMove;
    Splitter2: TSplitter;
    GroupBox3: TGroupBox;
    Panel3: TPanel;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    BitBtn9: TBitBtn;
    ActionList1: TActionList;
    ActAdd1: TAction;
    ActSAVE1: TAction;
    ActADD2: TAction;
    ActSAVE2: TAction;
    ActDEL2: TAction;
    ActQCANA: TAction;
    ActPRINTQC: TAction;
    LabeledEdit14: TLabeledEdit;
    LabeledEdit15: TLabeledEdit;
    LabeledEdit20: TLabeledEdit;
    LabeledEdit21: TLabeledEdit;
    labelededit28: TComboBox;
    labelededit29: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    ActDEL1: TAction;
    Label2: TLabel;
    LabeledEdit32: TComboBox;
    BitBtn2: TBitBtn;
    DBChart1: TDBChart;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series25: TLineSeries;
    Series26: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    Series1: TLineSeries;
    DBChart2: TDBChart;
    Series10: TLineSeries;
    Series11: TLineSeries;
    Series27: TLineSeries;
    Series28: TLineSeries;
    Series12: TLineSeries;
    Series13: TLineSeries;
    Series14: TLineSeries;
    Series9: TLineSeries;
    DBChart3: TDBChart;
    Series18: TLineSeries;
    Series19: TLineSeries;
    Series29: TLineSeries;
    Series30: TLineSeries;
    Series20: TLineSeries;
    Series21: TLineSeries;
    Series22: TLineSeries;
    Series17: TLineSeries;
    BitBtnCopy: TBitBtn;
    BitBtnPaste: TBitBtn;
    ADOConnection1: TADOConnection;
    LabeledEdit9: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    LabeledEdit13: TLabeledEdit;
    LabeledEdit16: TLabeledEdit;
    LabeledEdit17: TLabeledEdit;
    LabeledEdit18: TLabeledEdit;
    LabeledEdit19: TLabeledEdit;
    LabeledEdit22: TLabeledEdit;
    LabeledEdit23: TLabeledEdit;
    LabeledEdit24: TLabeledEdit;
    LabeledEdit25: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit26: TLabeledEdit;
    LabeledEdit31: TLabeledEdit;
    Label1: TLabel;
    BitBtn4: TBitBtn;
    SpeedButton1: TSpeedButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure ADOQuery1AfterScroll(DataSet: TDataSet);
    procedure ADOQuery2AfterPost(DataSet: TDataSet);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtnCopyClick(Sender: TObject);
    procedure BitBtnPasteClick(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure labelededit28Change(Sender: TObject);
    procedure LabeledEdit31KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ADOQuery1AfterOpen(DataSet: TDataSet);
    procedure ADOQuery2AfterOpen(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
  private
    { Private declarations }
    procedure ClearEdit;
    procedure updateEdit;
    procedure update_adoquery1;
    procedure update_adoquery2;
    procedure updateaverage;
    procedure updatechart;
    procedure updatecharth;
    procedure updatechartl;
    procedure InsertQcValueItem(qcghead_unid:integer;qcyear,qcmonth:Word);//�����ʿؽ����һ���µ�������
  public
    { Public declarations }
    FConnString:string;
    FbRegister:boolean;
    FAppHandle:THandle;
  end;

function  frmQCG2(AppHandle:THandle;AConnString:String;AbRegister:boolean): TfrmQCG2;

implementation
var
  ffrmQCG2: TfrmQCG2;
  ifljnewadd:boolean;
  ifDrawHLJ,ifDrawLJ,ifDrawLLJ:boolean;
  CopyYear,CopyMonth:string;

//�ҵ������쳣�󣬴���־���ܿ���ȥ��
procedure WriteLog(const ALogStr: Pchar);stdcall;external 'LYFunction.dll';

  {$R *.dfm}

function ExecSQLCmd(AConnectionString:string;ASQL:string):integer;
var
  Conn:TADOConnection;
  Qry:TAdoQuery;
begin
  Conn:=TADOConnection.Create(nil);
  Conn.LoginPrompt:=false;
  Conn.ConnectionString:=AConnectionString;
  Qry:=TAdoQuery.Create(nil);
  Qry.Connection:=Conn;
  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Text:=ASQL;
  Try
    Result:=Qry.ExecSQL;
  except
    on E:Exception do
    begin
      MESSAGEDLG('����ExecSQLCmdʧ��:'+E.Message+'�������SQL:'+ASQL,mtError,[mbOK],0);
      Result:=-1;
    end;
  end;
  Qry.Free;
  Conn.Free;
end;

function  frmQCG2(AppHandle:THandle;AConnString:String;AbRegister:boolean): TfrmQCG2;
begin
  if ffrmQCG2=nil then ffrmQCG2:=TfrmQCG2.Create(application.mainform);
  ffrmQCG2.FConnString:=AConnString;
  ffrmQCG2.FbRegister:=AbRegister;
  ffrmQCG2.FAppHandle:=AppHandle;
  result:=ffrmQCG2;
end;

procedure TfrmQCG2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  if ffrmQCG2=self then ffrmQCG2:=nil;
end;

procedure TfrmQCG2.FormShow(Sender: TObject);
var
  i:integer;
  QryTemp:TAdoQuery;
begin
  //=======================��ʼ�����ݿؼ�=====================================//
  ADOConnection1.ConnectionString:=FConnString;

  ADOQuery1.Connection:=ADOConnection1;
  ADOQuery2.Connection:=ADOConnection1;
  //==========================================================================//

  labelededit28.Items.Clear;
  for i :=yearof(now)-8  to yearof(now)+8 do labelededit28.Items.Add(inttostr(i));

  labelededit28.ItemIndex:=labelededit28.Items.IndexOf(inttostr(YearOf(now)));
  labelededit29.ItemIndex:=labelededit29.Items.IndexOf(inttostr(Monthof(now)));

  QryTemp:=TAdoQuery.Create(nil);
  QryTemp.Connection:=ADOConnection1;
  QryTemp.Close;
  QryTemp.SQL.Clear;
  QryTemp.SQL.Text:='select * from commcode where typename=''��������'' ';
  QryTemp.Open;
  while not QryTemp.Eof do
  begin
    Labelededit32.Items.Add(trim(QryTemp.fieldbyname('name').AsString));
    QryTemp.Next;
  end;
  QryTemp.Free;//����걾����

  update_adoquery1;//����qcghead
  
  ifljnewadd:=false;
end;

procedure TfrmQCG2.updateEdit;
var
  inH_SD,inSD,inL_SD:SINGLE;
  inH_X,inX,inL_X:SINGLE;
begin
  if not adoquery1.Active then exit;
  
  if adoquery1.RecordCount>0 then
  begin
    LabeledEdit26.Text:=adoquery1.fieldbyname('��Ŀ����').AsString;
    LabeledEdit31.Text:=trim(adoquery1.fieldbyname('��Ŀ����').AsString);
    LabeledEdit32.Text:=trim(adoquery1.fieldbyname('�걾����').AsString);
    labelededit1.Text:=trim(adoquery1.fieldbyname('�걾����').AsString);
    labelededit2.Text:=trim(adoquery1.fieldbyname('ʵ�鷽��').AsString);
    labelededit3.Text:=trim(adoquery1.fieldbyname('ʵ���豸').AsString);
    labelededit4.Text:=trim(adoquery1.fieldbyname('����').AsString);
    labelededit7.Text:=trim(adoquery1.fieldbyname('��ֵ��ֵ').AsString);
    labelededit8.Text:=trim(adoquery1.fieldbyname('��ֵSD').AsString);
    labelededit14.Text:=trim(adoquery1.fieldbyname('��ֵ��ֵ').AsString);
    labelededit15.Text:=trim(adoquery1.fieldbyname('��ֵSD').AsString);
    labelededit20.Text:=trim(adoquery1.fieldbyname('��ֵ��ֵ').AsString);
    labelededit21.Text:=trim(adoquery1.fieldbyname('��ֵSD').AsString);

    try//��ת������ֵ����singleʱ��TRYSTRTOFLOAT�ᱨ��floating point overflow��
      IF(TRYSTRTOFLOAT(adoquery1.fieldbyname('��ֵSD').AsString,inSD))
        AND(TRYSTRTOFLOAT(adoquery1.fieldbyname('��ֵ��ֵ').AsString,inX))THEN
      BEGIN
        IF inX<>0 THEN labelededit10.Text:=format('%.2f',[inSD*100/inX]);//��ֵCV
      end;
    except
      labelededit10.Clear;
      WriteLog(pchar('�ʿ�ģ���׳��쳣,����updateEdit,��ֵSD:'+adoquery1.fieldbyname('��ֵSD').AsString+',��ֵ��ֵ:'+adoquery1.fieldbyname('��ֵ��ֵ').AsString));
    end;

    try
      IF(TRYSTRTOFLOAT(adoquery1.fieldbyname('��ֵSD').AsString,inH_SD))
        AND(TRYSTRTOFLOAT(adoquery1.fieldbyname('��ֵ��ֵ').AsString,inH_X))THEN
      BEGIN
        IF inH_X<>0 THEN labelededit16.Text:=format('%.2f',[inH_SD*100/inH_X]);//��ֵCV
      end;
    except
      labelededit16.Clear;
      WriteLog(pchar('�ʿ�ģ���׳��쳣,����updateEdit,��ֵSD:'+adoquery1.fieldbyname('��ֵSD').AsString+',��ֵ��ֵ:'+adoquery1.fieldbyname('��ֵ��ֵ').AsString));
    end;

    try
      IF(TRYSTRTOFLOAT(adoquery1.fieldbyname('��ֵSD').AsString,inL_SD))
        AND(TRYSTRTOFLOAT(adoquery1.fieldbyname('��ֵ��ֵ').AsString,inL_X))THEN
      BEGIN
        IF inL_X<>0 THEN labelededit22.Text:=format('%.2f',[inL_SD*100/inL_X]);//��ֵCV
      end;
    except
      labelededit22.Clear;
      WriteLog(pchar('�ʿ�ģ���׳��쳣,����updateEdit,��ֵSD:'+adoquery1.fieldbyname('��ֵSD').AsString+',��ֵ��ֵ:'+adoquery1.fieldbyname('��ֵ��ֵ').AsString));
    end;
  end else
  begin
    LabeledEdit26.Clear;
    LabeledEdit31.Clear;
    LabeledEdit32.Text:='';
    labelededit1.Clear;
    labelededit2.Clear;
    labelededit3.Clear;
    labelededit4.Clear;
    labelededit7.Clear;
    labelededit8.Clear;
    labelededit14.Clear;
    labelededit15.Clear;
    labelededit20.Clear;
    labelededit21.Clear;

    labelededit10.Clear;
    labelededit16.Clear;
    labelededit22.Clear;
  end;
end;

procedure TfrmQCG2.updateaverage;
var
  p,q:single;
  hv_p,hv_q:single;
  lv_p,lv_q:single;
  a,b,c:single;
  n,hv_n,lv_n:integer;
  adoquerytemp:tadoquery;
  hv,v,lv:single;
begin
    labelededit17.Clear;
    labelededit18.Clear;
    labelededit19.Clear;
    labelededit9.Clear;
    labelededit11.Clear;
    labelededit5.Clear;
    labelededit6.Clear;
    labelededit12.Clear;
    labelededit13.Clear;
    labelededit23.Clear;
    labelededit24.Clear;
    labelededit25.Clear;

  if not adoquery1.Active then exit;

        adoquerytemp:=tadoquery.Create(nil);
        adoquerytemp.Connection:=ADOConnection1;
        adoquerytemp.Close;
        adoquerytemp.SQL.Clear;
        adoquerytemp.SQL.Text:='select * from qcgdata where pkunid=:P_pkunid ';
        adoquerytemp.Parameters.ParamByName('P_pkunid').Value:=
            ADOQuery1.fieldbyname('Ψһ���').AsInteger;
        adoquerytemp.Open;

        if adoquerytemp.RecordCount=0 then begin adoquerytemp.Free;exit;end;

          hv_n:=adoquerytemp.RecordCount;
          n:=adoquerytemp.RecordCount;
          lv_n:=adoquerytemp.RecordCount;
          p:=0;q:=0;
          hv_p:=0;hv_q:=0;
          lv_p:=0;lv_q:=0;

          while not adoquerytemp.Eof do
          begin
            try
              if not trystrtofloat(adoquerytemp.FieldByName('result').AsString,v) then
              begin
                dec(n);
              end;
            except
              dec(n);
              WriteLog(pchar('�ʿ�ģ���׳��쳣,����updateaverage,result:'+adoquerytemp.FieldByName('result').AsString));
            end;

            try
              if not trystrtofloat(adoquerytemp.FieldByName('hv_result').AsString,hv) then
              begin
                dec(hv_n);
              end;
            except
              dec(hv_n);
              WriteLog(pchar('�ʿ�ģ���׳��쳣,����updateaverage,hv_result:'+adoquerytemp.FieldByName('hv_result').AsString));
            end;

            try
              if not trystrtofloat(adoquerytemp.FieldByName('lv_result').AsString,lv) then
              begin
                dec(lv_n);
              end;
            except
              dec(lv_n);
              WriteLog(pchar('�ʿ�ģ���׳��쳣,����updateaverage,lv_result:'+adoquerytemp.FieldByName('lv_result').AsString));
            end;

            try
              a:=strtofloatdef(adoquerytemp.FieldByName('result').AsString,0);
              q:=q+a;  //���
              p:=p+(a)*(a);  //��ƽ����
            except
              WriteLog(pchar('�ʿ�ģ���׳��쳣,����updateaverage,��ƽ��,result:'+adoquerytemp.FieldByName('result').AsString));
            end;

            try
              b:=strtofloatdef(adoquerytemp.FieldByName('hv_result').AsString,0);
              hv_q:=hv_q+b;  //���
              hv_p:=hv_p+(b)*(b); //��ƽ����
            except
              WriteLog(pchar('�ʿ�ģ���׳��쳣,����updateaverage,��ƽ��,hv_result:'+adoquerytemp.FieldByName('hv_result').AsString));
            end;

            try
              c:=strtofloatdef(adoquerytemp.FieldByName('lv_result').AsString,0);
              lv_q:=lv_q+c;  //���
              lv_p:=lv_p+(c)*(c);  //��ƽ����
            except
              WriteLog(pchar('�ʿ�ģ���׳��쳣,����updateaverage,��ƽ��,lv_result:'+adoquerytemp.FieldByName('lv_result').AsString));
            end;

            adoquerytemp.Next;
          end;
          adoquerytemp.Free;

            if n<>0 then labelededit9.Text:=format('%.2f',[q/n]);
            if hv_n<>0 then labelededit17.Text:=format('%.2f',[hv_q/hv_n]);
            if lv_n<>0 then labelededit23.Text:=format('%.2f',[lv_q/lv_n]);
            
          labelededit11.Text:=inttostr(hv_n);
          labelededit5.Text:=inttostr(n);
          labelededit6.Text:=inttostr(lv_n);

          if n>=2 then
          begin
            labelededit12.Text:=format('%.2f',[sqrt((p-q*q/n)/(n-1))]);

            try
              labelededit13.Text:=
                format('%.2f',[strtofloat(labelededit12.Text)*100/strtofloat(labelededit9.Text)]);
            except
              WriteLog(pchar('�ʿ�ģ���׳��쳣,����updateaverage,labelededit12:'+labelededit12.Text+',labelededit9:'+labelededit9.Text));
            end;
          end;

          if hv_n>=2 then
          begin
            labelededit18.Text:=format('%.2f',[sqrt((hv_p-hv_q*hv_q/hv_n)/(hv_n-1))]);

            try
              labelededit19.Text:=
                format('%.2f',[strtofloat(labelededit18.Text)*100/strtofloat(labelededit17.Text)]);
            except
              WriteLog(pchar('�ʿ�ģ���׳��쳣,����updateaverage,labelededit18:'+labelededit18.Text+',labelededit17:'+labelededit17.Text));
            end;
          end;

          if lv_n>=2 then
          begin
            labelededit24.Text:=format('%.2f',[sqrt((lv_p-lv_q*lv_q/lv_n)/(lv_n-1))]);

            try
              labelededit25.Text:=
                format('%.2f',[strtofloat(labelededit24.Text)*100/strtofloat(labelededit23.Text)]);
            except
              WriteLog(pchar('�ʿ�ģ���׳��쳣,����updateaverage,labelededit24:'+labelededit24.Text+',labelededit23:'+labelededit23.Text));
            end;
          end;
end;


procedure TfrmQCG2.BitBtn4Click(Sender: TObject);
var
  sUnid:string;
begin
  if not adoquery1.Active then exit;
  if adoquery1.RecordCount=0 then exit;
  if messagedlg('ȷʵҪɾ����?',mtConfirmation,mbokcancel,0)<>mrok then exit;
  
  sUnid:=adoquery1.fieldbyname('Ψһ���').AsString;
  
  adoquery1.Delete;

  ExecSQLCmd(FConnString,'delete from qcgdata where pkunid='+sUnid);

  updateEdit;

  updateaverage;
  updatechart;//��ֵ�ʿ�ͼ����
  updatecharth;//��ֵ�ʿ�ͼ����
  updatechartl;//��ֵ�ʿ�ͼ����
end;

procedure TfrmQCG2.BitBtn3Click(Sender: TObject);
var
  adotemp26:tadoquery;
  Insert_Identity:integer;
  stringTemp:string;
begin
  if not ifLJnewAdd then //����
  begin
          if not adoquery1.Active then exit;
          if adoquery1.RecordCount=0 then exit;

          if adoquery1.fieldbyname('��Ŀ����').AsString<>'' then
          begin
            if LabeledEdit26.Text<>adoquery1.fieldbyname('��Ŀ����').AsString then
            begin
              if (MessageDlg('ȷʵҪ��"'+adoquery1.fieldbyname('��Ŀ����').AsString+'"�޸�Ϊ"'+LabeledEdit31.Text+'"��?', mtWarning, [mbYes, mbNo], 0) <> mrYes) then exit;
            end;
          end; 

          Insert_Identity:=adoquery1.fieldbyname('Ψһ���').AsInteger;

          adoquery1.Edit;
          adoquery1.fieldbyname('��Ŀ����').AsString:=LabeledEdit26.Text;
          adoquery1.fieldbyname('�걾����').AsString:=trim(LabeledEdit32.Text);
          adoquery1.fieldbyname('�걾����').AsString:=trim(labelededit1.Text);
          adoquery1.fieldbyname('ʵ�鷽��').AsString:=trim(labelededit2.Text);
          adoquery1.fieldbyname('ʵ���豸').AsString:=trim(labelededit3.Text);
          adoquery1.fieldbyname('����').AsString:=trim(labelededit4.Text);
          adoquery1.fieldbyname('��ֵ��ֵ').AsString:=trim(labelededit7.Text);
          adoquery1.fieldbyname('��ֵSD').AsString:=trim(labelededit8.Text);
          adoquery1.fieldbyname('��ֵ��ֵ').AsString:=trim(labelededit14.Text);
          adoquery1.fieldbyname('��ֵSD').AsString:=trim(labelededit15.Text);
          adoquery1.fieldbyname('��ֵ��ֵ').AsString:=trim(labelededit20.Text);
          adoquery1.fieldbyname('��ֵSD').AsString:=trim(labelededit21.Text);
          adoquery1.Post;
  end;

  if ifLJnewAdd then   //����
  begin
        ifljnewadd:=false;

        adotemp26:=tadoquery.Create(nil);
        adotemp26.Connection:=ADOConnection1;
       adotemp26.Close;
       adotemp26.SQL.Clear;
       stringTemp:='Insert into qcghead (itemid,qc_year,qc_month,spectype,lot,lambta,equip,method,dest,sd,hv_dest,hv_sd,lv_dest,lv_sd )'+
          ' values (:itemid,:P_qc_year,:p_qc_month,:P_QC_def_spectype,:P_QC_def_lot,:P_QC_def_lambta,:P_QC_def_equip,:P_QC_def_method,:P_QC_def_dest,:P_QC_def_sd,:P_QC_def_hv_dest,:P_QC_def_hv_sd,:P_QC_def_lv_dest,:P_QC_def_lv_sd )';
       adotemp26.SQL.Add(stringTemp);
       adotemp26.SQL.Add(' SELECT @@IDENTITY AS Insert_Identity ');
       adotemp26.Parameters.ParamByName('itemid').Value:=labelededit26.Text ;
       //adotemp26.Parameters.ParamByName('P_itemname').Value:=trim(labelededit31.Text) ;
       adotemp26.Parameters.ParamByName('P_qc_year').Value:=labelededit28.Text;
       adotemp26.Parameters.ParamByName('p_qc_month').Value:=labelededit29.Text;
       adotemp26.Parameters.ParamByName('P_QC_def_spectype').Value :=trim(labelededit32.Text) ;
       adotemp26.Parameters.ParamByName('P_QC_def_lot').Value :=trim(labelededit1.Text) ;
       adotemp26.Parameters.ParamByName('P_QC_def_lambta').Value :=trim(labelededit4.Text) ;
       adotemp26.Parameters.ParamByName('P_QC_def_equip').Value :=trim(labelededit3.Text) ;
       adotemp26.Parameters.ParamByName('P_QC_def_method').Value :=trim(labelededit2.Text) ;
       adotemp26.Parameters.ParamByName('P_QC_def_dest').Value :=trim(labelededit7.Text) ;
       adotemp26.Parameters.ParamByName('P_QC_def_sd').Value :=trim(labelededit8.Text) ;
       adotemp26.Parameters.ParamByName('P_QC_def_hv_dest').Value :=trim(labelededit14.Text) ;
       adotemp26.Parameters.ParamByName('P_QC_def_hv_sd').Value :=trim(labelededit15.Text) ;
       adotemp26.Parameters.ParamByName('P_QC_def_lv_dest').Value :=trim(labelededit20.Text) ;
       adotemp26.Parameters.ParamByName('P_QC_def_lv_sd').Value :=trim(labelededit21.Text) ;
       adotemp26.Open;//.ExecSQL;

       Insert_Identity:=adotemp26.fieldbyname('Insert_Identity').AsInteger;
       adotemp26.Free;
  end;

  InsertQcValueItem(Insert_Identity,strtoint(labelededit28.Text),strtoint(labelededit29.Text));

        update_adoquery1;
        adoquery1.Locate('Ψһ���',Insert_Identity,[loCaseInsensitive]);
        update_adoquery2;
        updateaverage;
          updatechart;//��ֵ�ʿ�ͼ����
          updatecharth;//��ֵ�ʿ�ͼ����
          updatechartl;//��ֵ�ʿ�ͼ����

end;

procedure TfrmQCG2.update_adoquery2;
var
  sqlstr:string;
begin
  if not adoquery1.Active then exit;

  sqlstr:=' select GETTIME as ����,hv_result as ��ֵ,result as ��ֵ,lv_result as ��ֵ, '+
      ' isedit as �޸ı��'+
      ' from qcgdata'+
      ' where pkunid=:P_pkunid '+
      ' order by GETTIME';
  ADOQuery2.Close;
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Text:=sqlstr;
  ADOQuery2.Parameters.ParamByName('P_pkunid').Value:=
            ADOQuery1.fieldbyname('Ψһ���').AsInteger;
  ADOQuery2.Open;
end;

procedure TfrmQCG2.BitBtn9Click(Sender: TObject);
var
  frxMasterData:TfrxMasterData;  
begin
  if not FbRegister then exit;
  
  if not adoquery1.Active then exit;
  if adoquery1.RecordCount=0 then exit;
  if not adoquery2.Active then exit;
  if adoquery2.RecordCount=0 then exit;
   
  frxReport1.Clear;//�������ģ��
  frxDBDataSet1.UserName:='ADOQuery1';//����ģ���ļ�ǰ���ñ���.��Ϊһ�����ģ���ļ�ʱ�Ѿ������˱�����Ϣ
  frxDBDataSet2.UserName:='ADOQuery2';//����ģ���ļ�ǰ���ñ���.��Ϊһ�����ģ���ļ�ʱ�Ѿ������˱�����Ϣ

  if not frxReport1.LoadFromFile('report_qc_assay2.fr3') then
  begin
    MessageDlg('���ش�ӡģ��report_qc_assay2.fr3ʧ�ܣ����뿪������ϵ',mtError,[mbOK],0);
    exit;
  end;
  
  frxDBDataSet1.DataSet:=ADOQuery1;//����Fastreport�������TDataset���ݼ�
  frxDBDataSet2.DataSet:=ADOQuery2;//����Fastreport�������TDataset���ݼ�
  frxReport1.DataSets.Clear;//���ԭ�������ݼ�
  frxReport1.DataSets.Add(frxDBDataSet1);//���ع����õ�TfrxDBDataSet��������
  frxReport1.DataSets.Add(frxDBDataSet2);//���ع����õ�TfrxDBDataSet��������
  
  frxMasterData:=frxReport1.FindObject('MasterData1') as TfrxMasterData;
  if (frxMasterData<>nil) and (frxMasterData is TfrxMasterData) then frxMasterData.DataSet:=frxDBDataSet2;//��̬����MasterData.DataSet
  
  frxReport1.PrintOptions.ShowDialog:=true;
  frxReport1.ShowReport;
end;

procedure TfrmQCG2.update_adoquery1;
var
  sqlstr:string;
begin
  sqlstr:=' select ITEMID as ��Ŀ����,ITEMNAME as ��Ŀ����, '+
      ' SPECTYPE as �걾����,LOT as �걾����,method as ʵ�鷽��,'+
      ' equip as ʵ���豸,lambta as ����,'+
      ' dest as ��ֵ��ֵ,sd as ��ֵSD, '+
      ' hv_dest as ��ֵ��ֵ,hv_sd as ��ֵSD, '+
      ' lv_dest as ��ֵ��ֵ,lv_sd as ��ֵSD, '+
      ' qc_year as ���,qc_month as �·�, '+
      ' UNID as Ψһ��� '+
      ' from qcghead '+
      ' where '+
      ' qc_year=:P_qc_year '+ 
      ' and qc_month=:P_qc_month '+
      ' order by ITEMID ';
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Text:=sqlstr;
  ADOQuery1.Parameters.ParamByName('P_qc_year').Value:=labelededit28.Text;
  ADOQuery1.Parameters.ParamByName('P_qc_month').Value:=labelededit29.Text;
  ADOQuery1.Open;
end;

procedure TfrmQCG2.updatecharth;
var x,f:double;
    a: double;
    adotemp47:tadoquery;
begin
          DBchart1.Series[0].Clear;
          DBchart1.Series[1].Clear;
          DBchart1.Series[2].Clear;
          DBchart1.Series[3].Clear;
          DBchart1.Series[4].Clear;
          DBchart1.Series[5].Clear;
          DBchart1.Series[6].Clear;
          DBchart1.Series[7].Clear;
          ifDrawHLJ:=false;

        if not adoquery1.Active then exit;
        if not adoquery2.Active then exit;
        if adoquery2.RecordCount=0 then exit;

  try        
        if(not(trystrtofloat(adoquery1.fieldbyname('��ֵ��ֵ').AsString,x)))
          or(not(trystrtofloat(adoquery1.fieldbyname('��ֵSD').AsString,f))) then
        exit;

        DBCHART1.LeftAxis.SetMinMax(x-3.2*f,x+3.2*f);
        DBCHART1.BevelOuter:=bvNone;//�粻���ø�����,���ӡʱ�ײ����ұ߸���һ����ɫ��

        adotemp47:=tadoquery.Create(nil);
        adotemp47.Connection:=ADOConnection1;
        adotemp47.Close;
        adotemp47.SQL.Clear;
        adotemp47.SQL.Text:='select * from qcgdata where pkunid=:pkunid order by gettime';
        adotemp47.Parameters.ParamByName('pkunid').Value:=adoquery1.fieldbyname('Ψһ���').AsInteger;
        adotemp47.Open;

      while not adotemp47.Eof do
      begin
        DBchart1.Series[0].AddXY(adotemp47.FieldByName('gettime').AsFloat,x+3*f,adotemp47.FieldByName('gettime').AsString);
        DBchart1.Series[1].AddXY(adotemp47.FieldByName('gettime').AsFloat,x+2*f,adotemp47.FieldByName('gettime').AsString);
        DBchart1.Series[2].AddXY(adotemp47.FieldByName('gettime').AsFloat,x+f,adotemp47.FieldByName('gettime').AsString);
        DBchart1.Series[3].AddXY(adotemp47.FieldByName('gettime').AsFloat,x-f,adotemp47.FieldByName('gettime').AsString);
        DBchart1.Series[4].AddXY(adotemp47.FieldByName('gettime').AsFloat,x-2*f,adotemp47.FieldByName('gettime').AsString);
        DBchart1.Series[5].AddXY(adotemp47.FieldByName('gettime').AsFloat,x-3*f,adotemp47.FieldByName('gettime').AsString);
        DBchart1.Series[6].AddXY(adotemp47.FieldByName('gettime').AsFloat,x,adotemp47.FieldByName('gettime').AsString);

        if not trystrtofloat(adotemp47.FieldByName('hv_result').AsString,a) then
        begin
          adotemp47.Next;
          continue;
        end;
        DBchart1.Series[7].AddXY(adotemp47.FieldByName('gettime').AsFloat,a,adotemp47.FieldByName('gettime').AsString);
        adotemp47.Next;
      end;
      ifDrawHLJ:=true;
      adotemp47.Free;
  except
    on E:Exception do
    begin
      WriteLog(pchar('�ʿ�ģ���׳��쳣,����updatecharth:'+E.Message));
    end;
  end;
end;

procedure TfrmQCG2.updatechart;
var x,f:double;
    a: double;
    adotemp47:tadoquery;
begin
          DBchart2.Series[0].Clear;
          DBchart2.Series[1].Clear;
          DBchart2.Series[2].Clear;
          DBchart2.Series[3].Clear;
          DBchart2.Series[4].Clear;
          DBchart2.Series[5].Clear;
          DBchart2.Series[6].Clear;
          DBchart2.Series[7].Clear;
      ifDrawLJ:=false;

        if not adoquery1.Active then exit;
        if not adoquery2.Active then exit;
        if adoquery2.RecordCount=0 then exit;

  try        
        if(not(trystrtofloat(adoquery1.fieldbyname('��ֵ��ֵ').AsString,x)))
          or(not(trystrtofloat(adoquery1.fieldbyname('��ֵSD').AsString,f))) then
        exit;

        DBCHART2.LeftAxis.SetMinMax(x-3.2*f,x+3.2*f);
        DBCHART2.BevelOuter:=bvNone;//�粻���ø�����,���ӡʱ�ײ����ұ߸���һ����ɫ��

        adotemp47:=tadoquery.Create(nil);
        adotemp47.Connection:=ADOConnection1;
        adotemp47.Close;
        adotemp47.SQL.Clear;
        adotemp47.SQL.Text:='select * from qcgdata where pkunid=:pkunid order by gettime';
        adotemp47.Parameters.ParamByName('pkunid').Value:=adoquery1.fieldbyname('Ψһ���').AsInteger;
        adotemp47.Open;

      while not adotemp47.Eof do
      begin
        DBchart2.Series[0].AddXY(adotemp47.FieldByName('gettime').AsFloat,x+3*f,adotemp47.FieldByName('gettime').AsString);//+3SD
        DBchart2.Series[1].AddXY(adotemp47.FieldByName('gettime').AsFloat,x+2*f,adotemp47.FieldByName('gettime').AsString);//+2SD
        DBchart2.Series[2].AddXY(adotemp47.FieldByName('gettime').AsFloat,x+f,adotemp47.FieldByName('gettime').AsString);  //+SD
        DBchart2.Series[3].AddXY(adotemp47.FieldByName('gettime').AsFloat,x-f,adotemp47.FieldByName('gettime').AsString);  //-SD
        DBchart2.Series[4].AddXY(adotemp47.FieldByName('gettime').AsFloat,x-2*f,adotemp47.FieldByName('gettime').AsString);//-2SD
        DBchart2.Series[5].AddXY(adotemp47.FieldByName('gettime').AsFloat,x-3*f,adotemp47.FieldByName('gettime').AsString); //-3SD
        DBchart2.Series[6].AddXY(adotemp47.FieldByName('gettime').AsFloat,x,adotemp47.FieldByName('gettime').AsString);//��ֵ

        if not trystrtofloat(adotemp47.FieldByName('result').AsString,a) then
        begin
          adotemp47.Next;
          continue; //����õ������쳣���������õ�
        end;
        DBchart2.Series[7].AddXY(adotemp47.FieldByName('gettime').AsFloat,a,adotemp47.FieldByName('gettime').AsString);

        adotemp47.Next;
      end;
      ifDrawLJ:=true;

      adotemp47.Free;
  except
    on E:Exception do
    begin
      WriteLog(pchar('�ʿ�ģ���׳��쳣,����updatechart:'+E.Message));
    end;
  end;
end;

procedure TfrmQCG2.updatechartl;
var x,f:double;
    a: double;
    adotemp47:tadoquery;
begin
          DBchart3.Series[0].Clear;
          DBchart3.Series[1].Clear;
          DBchart3.Series[2].Clear;
          DBchart3.Series[3].Clear;
          DBchart3.Series[4].Clear;
          DBchart3.Series[5].Clear;
          DBchart3.Series[6].Clear;
          DBchart3.Series[7].Clear;
      ifDrawLLJ:=false;

        if not adoquery1.Active then exit;
        if not adoquery2.Active then exit;
        if adoquery2.RecordCount=0 then exit;

  try        
        if(not(trystrtofloat(adoquery1.fieldbyname('��ֵ��ֵ').AsString,x)))
          or(not(trystrtofloat(adoquery1.fieldbyname('��ֵSD').AsString,f))) then
        exit;

        DBCHART3.LeftAxis.SetMinMax(x-3.2*f,x+3.2*f);
        DBCHART3.BevelOuter:=bvNone;//�粻���ø�����,���ӡʱ�ײ����ұ߸���һ����ɫ��

        adotemp47:=tadoquery.Create(nil);
        adotemp47.Connection:=ADOConnection1;
        adotemp47.Close;
        adotemp47.SQL.Clear;
        adotemp47.SQL.Text:='select * from qcgdata where pkunid=:pkunid order by gettime';
        adotemp47.Parameters.ParamByName('pkunid').Value:=adoquery1.fieldbyname('Ψһ���').AsInteger;
        adotemp47.Open;

      while not adotemp47.Eof do
      begin
        DBchart3.Series[0].AddXY(adotemp47.FieldByName('gettime').AsFloat,x+3*f,adotemp47.FieldByName('gettime').AsString);
        DBchart3.Series[1].AddXY(adotemp47.FieldByName('gettime').AsFloat,x+2*f,adotemp47.FieldByName('gettime').AsString);
        DBchart3.Series[2].AddXY(adotemp47.FieldByName('gettime').AsFloat,x+f,adotemp47.FieldByName('gettime').AsString);
        DBchart3.Series[3].AddXY(adotemp47.FieldByName('gettime').AsFloat,x-f,adotemp47.FieldByName('gettime').AsString);
        DBchart3.Series[4].AddXY(adotemp47.FieldByName('gettime').AsFloat,x-2*f,adotemp47.FieldByName('gettime').AsString);
        DBchart3.Series[5].AddXY(adotemp47.FieldByName('gettime').AsFloat,x-3*f,adotemp47.FieldByName('gettime').AsString);
        DBchart3.Series[6].AddXY(adotemp47.FieldByName('gettime').AsFloat,x,adotemp47.FieldByName('gettime').AsString);

        if not trystrtofloat(adotemp47.FieldByName('lv_result').AsString,a) then
        begin
          adotemp47.Next;
          continue;
        end;
        DBchart3.Series[7].AddXY(adotemp47.FieldByName('gettime').AsFloat,a,adotemp47.FieldByName('gettime').AsString);

        adotemp47.Next;
      end;
      ifDrawLLJ:=true;
      adotemp47.Free;
  except
    on E:Exception do
    begin
      WriteLog(pchar('�ʿ�ģ���׳��쳣,����updatechartl:'+E.Message));
    end;
  end;
end;

procedure TfrmQCG2.ADOQuery1AfterScroll(DataSet: TDataSet);
begin
  ifljnewadd:=false;
   
  update_adoquery2;

  updateEdit;
  updateaverage;
  updatechart;//��ֵ�ʿ�ͼ����
  updatecharth;//��ֵ�ʿ�ͼ����
  updatechartl;//��ֵ�ʿ�ͼ����
end;

procedure TfrmQCG2.ADOQuery2AfterPost(DataSet: TDataSet);
begin
  updateaverage;
  updatechart;//��ֵ�ʿ�ͼ����
  updatecharth;//��ֵ�ʿ�ͼ����
  updatechartl;//��ֵ�ʿ�ͼ����
end;

procedure TfrmQCG2.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if adoquery2.Eof then
  begin
    dbgrid2.Columns.Items[1].ReadOnly:=true;
    dbgrid2.Columns.Items[2].ReadOnly:=true;
    dbgrid2.Columns.Items[3].ReadOnly:=true;
  end;
end;

procedure TfrmQCG2.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    dbgrid2.Columns.Items[1].ReadOnly:=false;
    dbgrid2.Columns.Items[2].ReadOnly:=false;
    dbgrid2.Columns.Items[3].ReadOnly:=false;

end;

procedure TfrmQCG2.BitBtn2Click(Sender: TObject);
begin
  ifLJnewAdd:=true;
  ClearEdit;
  LabeledEdit31.SetFocus;
end;

procedure TfrmQCG2.ClearEdit;
begin
  LabeledEdit26.Clear; //��ĿID
  LabeledEdit31.Text:=''; //��Ŀ����
  //LabeledEdit32.Text:=''; //�걾����
  //LabeledEdit1.Clear;  //�ʿ�����
  //LabeledEdit2.Clear;  //ʵ�鷽��
  //LabeledEdit3.Clear;  //ʵ���豸
  //LabeledEdit4.Clear;  //����
  //LabeledEdit14.Clear; //��ֵ��ֵ
  //LabeledEdit7.Clear;  //��ֵ��ֵ
  //LabeledEdit20.Clear; //��ֵ��ֵ
  //LabeledEdit15.Clear; //��ֵSD
  //LabeledEdit8.Clear;  //��ֵSD
  //LabeledEdit21.Clear; //��ֵSD
  LabeledEdit16.Clear; //��ֵCV
  LabeledEdit10.Clear;
  LabeledEdit22.Clear;
  LabeledEdit17.Clear; //�����ֵ��ֵ
  LabeledEdit9.Clear;
  LabeledEdit23.Clear;
  LabeledEdit18.Clear; //�����ֵSD
  LabeledEdit12.Clear;
  LabeledEdit24.Clear;
  LabeledEdit19.Clear; //�����ֵCV
  LabeledEdit13.Clear;
  LabeledEdit25.Clear;
  LabeledEdit11.Clear; //����
  LabeledEdit5.Clear;
  LabeledEdit6.Clear;
end;

procedure TfrmQCG2.BitBtnCopyClick(Sender: TObject);
begin
  CopyYear:=labelededit28.Text;
  CopyMonth:=labelededit29.Text;
end;

procedure TfrmQCG2.BitBtnPasteClick(Sender: TObject);
var
  adotemp11,adotemp12,adotemp26:tadoquery;
  itemID,spectype,lot,method,equip,lambta,dest,sd,hv_dest,hv_sd,lv_dest,lv_sd:string;
  Insert_Identity:integer;
  recordNum:integer;
  stringTemp:string;
begin
  if messagedlg('ȷʵҪ����'+CopyYear+'��'+CopyMonth+'�µ��ʿ���Ŀ��'+labelededit28.Text+'��'+labelededit29.Text+'����',mtConfirmation,mbOKCancel,0)<>mrok then exit;

  screen.Cursor:=crHourGlass;
  
  adotemp11:=tadoquery.Create(nil);
  adotemp11.Connection:=ADOConnection1;

  adotemp11.Close;
  adotemp11.SQL.Clear;
  adotemp11.SQL.Text:='select * from qcghead where qc_year=:P_qc_year and qc_month=:P_qc_month AND ITEMID<>''-1''';// and QC_Type=2
  adotemp11.Parameters.ParamByName('P_qc_year').Value:=CopyYear;
  adotemp11.Parameters.ParamByName('P_qc_month').Value:=CopyMonth;
  adotemp11.Open;
  while not adotemp11.Eof do
  begin
    itemID:=adotemp11.fieldbyname('itemID').AsString;
    spectype:=adotemp11.fieldbyname('spectype').AsString;
    lot:=adotemp11.fieldbyname('lot').AsString;
    method:=adotemp11.fieldbyname('method').AsString;
    equip:=adotemp11.fieldbyname('equip').AsString;
    lambta:=adotemp11.fieldbyname('lambta').AsString;
    dest:=adotemp11.fieldbyname('dest').AsString;
    sd:=adotemp11.fieldbyname('sd').AsString;
    hv_dest:=adotemp11.fieldbyname('hv_dest').AsString;
    hv_sd:=adotemp11.fieldbyname('hv_sd').AsString;
    lv_dest:=adotemp11.fieldbyname('lv_dest').AsString;
    lv_sd:=adotemp11.fieldbyname('lv_sd').AsString;

    adotemp12:=tadoquery.Create(nil);
    adotemp12.Connection:=ADOConnection1;
    adotemp12.Close;
    adotemp12.SQL.Clear;
    adotemp12.SQL.Text:='select count(*) as recordNum from qcghead where itemID=:itemID and qc_year=:P_qc_year and qc_month=:P_qc_month';// and QC_Type=2
    adotemp12.Parameters.ParamByName('itemID').Value:=itemID;
    adotemp12.Parameters.ParamByName('P_qc_year').Value:=labelededit28.Text;
    adotemp12.Parameters.ParamByName('P_qc_month').Value:=labelededit29.Text;
    adotemp12.Open;
    recordNum:=adotemp12.fieldbyname('recordNum').AsInteger;
    adotemp12.Free;

    if recordNum=0 then
    begin
       adotemp26:=tadoquery.Create(nil);
       adotemp26.Connection:=ADOConnection1;
       adotemp26.Close;
       adotemp26.SQL.Clear;
       stringTemp:='Insert into qcghead (itemID,qc_year,qc_month,spectype,lot,lambta,equip,method,dest,sd,hv_dest,hv_sd,lv_dest,lv_sd )'+
          ' values (:itemID,:P_qc_year,:p_qc_month,:P_QC_def_spectype,:P_QC_def_lot,:P_QC_def_lambta,:P_QC_def_equip,:P_QC_def_method,:P_QC_def_dest,:P_QC_def_sd,:P_QC_def_hv_dest,:P_QC_def_hv_sd,:P_QC_def_lv_dest,:P_QC_def_lv_sd )';
       adotemp26.SQL.Add(stringTemp);
       adotemp26.SQL.Add(' SELECT @@IDENTITY AS Insert_Identity ');
       adotemp26.Parameters.ParamByName('itemID').Value:=itemID ;
       adotemp26.Parameters.ParamByName('P_qc_year').Value:=labelededit28.Text;
       adotemp26.Parameters.ParamByName('p_qc_month').Value:=labelededit29.Text;
       adotemp26.Parameters.ParamByName('P_QC_def_spectype').Value :=spectype ;
       adotemp26.Parameters.ParamByName('P_QC_def_lot').Value :=lot ;
       adotemp26.Parameters.ParamByName('P_QC_def_lambta').Value :=lambta ;
       adotemp26.Parameters.ParamByName('P_QC_def_equip').Value :=equip ;
       adotemp26.Parameters.ParamByName('P_QC_def_method').Value :=method ;
       adotemp26.Parameters.ParamByName('P_QC_def_dest').Value :=dest ;
       adotemp26.Parameters.ParamByName('P_QC_def_sd').Value :=sd ;
       adotemp26.Parameters.ParamByName('P_QC_def_hv_dest').Value :=hv_dest ;
       adotemp26.Parameters.ParamByName('P_QC_def_hv_sd').Value :=hv_sd ;
       adotemp26.Parameters.ParamByName('P_QC_def_lv_dest').Value :=lv_dest ;
       adotemp26.Parameters.ParamByName('P_QC_def_lv_sd').Value :=lv_sd ;
       adotemp26.Open;//.ExecSQL;

       Insert_Identity:=adotemp26.fieldbyname('Insert_Identity').AsInteger;
       adotemp26.Free;

       InsertQcValueItem(Insert_Identity,strtoint(labelededit28.Text),strtoint(labelededit29.Text));
    end;
    adotemp11.Next;
  end;
  adotemp11.Free;

  labelededit28Change(nil);//�����ڲ�ѯ��ť

  screen.Cursor:=crArrow ;
end;

procedure TfrmQCG2.InsertQcValueItem(qcghead_unid:integer;qcyear,qcmonth:Word);//�����ʿؽ����һ���µ�������
var
  adotemp1,adotemp2,adotemp27:tadoquery;
  k,i:integer;
begin
  adotemp2:=tadoquery.create(nil);
  adotemp2.Connection:=ADOConnection1;
  adotemp2.Close;
  adotemp2.SQL.Clear;
  adotemp2.SQL.Text:='select count(*) as RecordNum from qcgdata  '+//(pkunid, gettime) '+
                     ' where pkunid=:P_pkunid ';//+
  adotemp2.Parameters.ParamByName('P_pkunid').Value:=qcghead_unid;//adoquery1.fieldbyname('Ψһ���').AsInteger;
  adotemp2.Prepared:=true;
  adotemp2.Open;//.ExecSQL;
  k:=adotemp2.fieldbyname('RecordNum').AsInteger;
  adotemp2.Free;
  if k<>DaysInAMonth(qcyear,qcmonth) then
  begin
        adotemp1:=tadoquery.create(nil);
        adotemp1.Connection:=ADOConnection1;
        adotemp27:=tadoquery.Create(nil);
        adotemp27.Connection:=ADOConnection1;
        for i :=1  to DaysInAMonth(qcyear,qcmonth) do
        begin
          adotemp27.Close;
          adotemp27.SQL.Clear;
          adotemp27.SQL.Text:=' select count(*) as RecordNum from qcgdata '+
                              ' where pkunid=:P_pkunid '+
                              ' and GETTIME=:P_GETTIME ';
          adotemp27.Parameters.ParamByName('P_pkunid').Value:=qcghead_unid;
          adotemp27.Parameters.ParamByName('P_GETTIME').Value:=i;
          adotemp27.Open;

          if adotemp27.FieldByName('RecordNum').AsInteger=0 then   //�ʿؽ�������иü���ֵ��������޸�
          begin
            adotemp1.Close;
            adotemp1.SQL.Clear;
            adotemp1.SQL.Text:='INSERT INTO qcgdata  (pkunid, gettime) '+
                                ' VALUES (:P_pkunid,:P_gettime) ';
            adotemp1.Parameters.ParamByName('P_pkunid').Value:=qcghead_unid;//adoquery1.fieldbyname('Ψһ���').AsInteger;
            adotemp1.Parameters.ParamByName('P_gettime').Value:=i;
            adotemp1.Prepared:=true;
            adotemp1.ExecSQL;
          end;
        end;
        adotemp1.Free;
        adotemp27.Free;
  end;
end;

procedure TfrmQCG2.DBGrid2Exit(Sender: TObject);
begin
  if not TDBGrid(sender).DataSource.DataSet.Active then exit;
  if TDBGrid(sender).DataSource.DataSet.RecordCount=0 then exit;
  if TDBGrid(sender).DataSource.DataSet.State=dsEdit then //add ly 20050521
    TDBGrid(sender).DataSource.DataSet.Post;
end;

procedure TfrmQCG2.FormDestroy(Sender: TObject);
begin
  PostMessage(FAppHandle,WM_USER+2,0,0);//������Ϣ�õ��ó����ͷ�DLL
end;

procedure TfrmQCG2.labelededit28Change(Sender: TObject);
begin
  update_adoquery1;
  update_adoquery2;

  updateEdit;
  updateaverage;
  updatechart;//��ֵ�ʿ�ͼ����
  updatecharth;//��ֵ�ʿ�ͼ����
  updatechartl;//��ֵ�ʿ�ͼ����
end;

procedure TfrmQCG2.LabeledEdit31KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.Connection:=ADOConnection1;
  tmpADOLYGetcode.ifAbetChineseChar:=true;
  tmpADOLYGetcode.OpenStr:='select itemid as ��Ŀ����,name as ��Ŀ����,COMMWORD as ������ĸ,dlttype as ������ʶ�� from clinicchkitem ';
  tmpADOLYGetcode.InField:='itemid,name,pym';
  tmpADOLYGetcode.InValue:=tLabeledEdit(sender).Text;
  tmpADOLYGetcode.ShowX:=left+tLabeledEdit(SENDER).Parent.Left+tLabeledEdit(SENDER).Left;
  tmpADOLYGetcode.ShowY:=top+22{��ǰ����������߶�}+21{��ǰ����˵��߶�}+tLabeledEdit(SENDER).Parent.Top+tLabeledEdit(SENDER).Top+tLabeledEdit(SENDER).Height;//tLabeledEdit(SENDER).Parent.Parent.Top{Panel7}+

  if tmpADOLYGetcode.Execute then
  begin
    LabeledEdit26.Text:=tmpADOLYGetcode.OutValue[0];
    tLabeledEdit(SENDER).Text:=tmpADOLYGetcode.OutValue[1];
  end;
  tmpADOLYGetcode.Free;
end;

procedure TfrmQCG2.ADOQuery1AfterOpen(DataSet: TDataSet);
begin
  if not DataSet.Active then exit;
  if DataSet.RecordCount<=0 then exit;
   
  dbgrid1.Columns[0].Width:=55;
  dbgrid1.Columns[1].Width:=85;
  dbgrid1.Columns[2].Width:=55;
end;

procedure TfrmQCG2.ADOQuery2AfterOpen(DataSet: TDataSet);
begin
  if not DataSet.Active then exit;
  if DataSet.RecordCount<=0 then exit;
   
  dbgrid2.Columns.Items[0].ReadOnly:=true;
  dbgrid2.Columns.Items[0].Width:=27;
  dbgrid2.Columns.Items[1].Width:=trunc((dbgrid2.Width-60)/3);
  dbgrid2.Columns.Items[2].Width:=trunc((dbgrid2.Width-60)/3);
  dbgrid2.Columns.Items[3].Width:=trunc((dbgrid2.Width-60)/3);
  dbgrid2.Columns.Items[4].ReadOnly:=true;
end;

procedure TfrmQCG2.SpeedButton1Click(Sender: TObject);
var
  LYLocateRecord:TLYLocateRecord;
begin
  LYLocateRecord:=TLYLocateRecord.create(nil);
  LYLocateRecord.DataSource:=DataSource1;
  LYLocateRecord.Execute;
  LYLocateRecord.free;
end;

procedure TfrmQCG2.frxReport1BeforePrint(Sender: TfrxReportComponent);
begin
  if TfrxPictureView(Sender).Name='PictureHigh' then
  begin
    TfrxPictureView(Sender).Picture.Assign(dbchart1.TeeCreateMetafile(False,Rect(0,0,Round(Sender.Width),Round(Sender.Height))));//ָ��ͳ��ͼ�oFastReport
    if not ifDrawHLJ then TfrxPictureView(Sender).Visible:=false else TfrxPictureView(Sender).Visible:=true;
  end;
  if TfrxPictureView(Sender).Name='PictureMid' then
  begin
    TfrxPictureView(Sender).Picture.Assign(dbchart2.TeeCreateMetafile(False,Rect(0,0,Round(Sender.Width),Round(Sender.Height))));//ָ��ͳ��ͼ�oFastReport
    if not ifDrawLJ then TfrxPictureView(Sender).Visible:=false else TfrxPictureView(Sender).Visible:=true;
  end;
  if TfrxPictureView(Sender).Name='PictureLow' then
  begin
    TfrxPictureView(Sender).Picture.Assign(dbchart3.TeeCreateMetafile(False,Rect(0,0,Round(Sender.Width),Round(Sender.Height))));//ָ��ͳ��ͼ�oFastReport
   if not ifDrawLLJ then TfrxPictureView(Sender).Visible:=false else TfrxPictureView(Sender).Visible:=true;
  end;
end;

procedure TfrmQCG2.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if VarName='HighCalaAvg' then Value:=LabeledEdit17.Text;
  if VarName='MidCalaAvg' then Value:=LabeledEdit9.Text;
  if VarName='LowCalaAvg' then Value:=LabeledEdit23.Text;
  
  if VarName='HighCalaSD' then Value:=LabeledEdit18.Text;
  if VarName='MidCalaSD' then Value:=LabeledEdit12.Text;
  if VarName='LowCalaSD' then Value:=LabeledEdit24.Text;
  
  if VarName='HighCalaCV' then Value:=LabeledEdit19.Text;
  if VarName='MidCalaCV' then Value:=LabeledEdit13.Text;
  if VarName='LowCalaCV' then Value:=LabeledEdit25.Text;
  
  if VarName='HighCV' then Value:=LabeledEdit16.Text;
  if VarName='MidCV' then Value:=LabeledEdit10.Text;
  if VarName='LowCV' then Value:=LabeledEdit22.Text;
end;

initialization
  ffrmQCG2:=nil;

end.
