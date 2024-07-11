unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    cbb1: TComboBox;
    Label9: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    dbgrd1: TDBGrid;
    edt6: TEdit;
    Label8: TLabel;
    procedure btn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a:string;
implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.bersih;
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
 DataModule2.frxrprt1.Showreport();
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 cbb1.Items.Add('yes');
 cbb1.Items.Add('no');
end;

procedure TForm1.posisiawal;
begin
  btn1.Enabled := True;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := False;
  cbb1.Enabled := False;
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt1.Enabled := False;
  edt2.Enabled := False;
  edt3.Enabled := False;
  edt4.Enabled := False;
  edt5.Enabled := False;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
   bersih;
   btn1.Enabled := True;
   btn2.Enabled := True;
   btn3.Enabled := False;
   btn4.Enabled := False;
   btn5.Enabled := True;
   edt1.Enabled := True;
   edt2.Enabled := True;
   edt3.Enabled := True;
   edt4.Enabled := True;
   edt5.Enabled := True;
   cbb1.Enabled := True;
end;

procedure TForm1.cbb1Change(Sender: TObject);
begin
 if cbb1.Text = 'yes' then
    Label8.Caption := '10%'
  else if cbb1.Text = 'no' then
    Label8.Caption := '5%';
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  if edt1.Text = '' then
  begin
    ShowMessage('Nik kustomer Tidak Boleh Kosong!');
  end else if DataModule2.zqry1.Locate('Nik', edt1.Text, []) then
  begin
    ShowMessage('Nik kustomer ' + edt1.Text + ' Sudah Ada Dalam Sistem');
  end else
  begin
    DataModule2.zqry1.SQL.Clear;
    DataModule2.zqry1.SQL.Add('insert into kustomer values(null, "' + edt1.Text + '", "' + edt2.Text + '", "' + edt3.Text + '", "' + edt4.Text + '", "' + edt5.Text + '", "' + cbb1.Text + '")');
    DataModule2.zqry1.ExecSQL;

    DataModule2.zqry1.SQL.Clear;
    DataModule2.zqry1.SQL.Add('select * from kustomer');
    DataModule2.zqry1.Open;
    ShowMessage('Data Berhasil di Simpan');
  end;
  posisiawal;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  DataModule2.zqry1.SQL.Clear;
  DataModule2.zqry1.SQL.Add('update kustomer set Nik = "' + edt1.Text + '", Name = "' + edt2.Text + '", Telp = "' + edt3.Text + '", Email = "' + edt4.Text + '", Alamat = "' + edt5.Text + '", Member = "' + cbb1.Text + '" where Id = "' + a + '"');
  DataModule2.zqry1.ExecSQL;

  DataModule2.zqry1.SQL.Clear;
  DataModule2.zqry1.SQL.Add('select * from kustomer');
  DataModule2.zqry1.Open;
  ShowMessage('Data Berhasil di Update!');
  posisiawal;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text := DataModule2.zqry1.Fields[1].AsString;
  edt2.Text := DataModule2.zqry1.Fields[2].AsString;
  edt3.Text := DataModule2.zqry1.Fields[3].AsString;
  edt4.Text := DataModule2.zqry1.Fields[4].AsString;
  edt5.Text := DataModule2.zqry1.Fields[5].AsString;
  cbb1.Text := DataModule2.zqry1.Fields[6].AsString;
  a := DataModule2.zqry1.Fields[0].AsString;

  edt1.Enabled := True;
  btn2.Enabled := False;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn5.Enabled := True;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
if MessageDlg('Apakah Anda Yakin Menghapus Data ini?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    DataModule2.zqry1.SQL.Clear;
    DataModule2.zqry1.SQL.Add('delete from kustomer where Id="' + a + '"');
    DataModule2.zqry1.ExecSQL;

    DataModule2.zqry1.SQL.Clear;
    DataModule2.zqry1.SQL.Add('select * from kustomer');
    DataModule2.zqry1.Open;
    ShowMessage('Data Berhasil di Delete!');
  end;
  posisiawal;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
 edt1.Clear;
 edt2.Clear;
 edt3.Clear;
 edt4.Clear;
 edt5.Clear;
 posisiawal;
end;

end.
