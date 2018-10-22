unit MainScrTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.UITypes, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TFmMain = class(TForm)
    GBoxInfo: TGroupBox;
    EdtFam: TEdit;
    EdtName: TEdit;
    EdtOtch: TEdit;
    EdtZakl: TEdit;
    LblZak: TLabel;
    LblFam: TLabel;
    LblName: TLabel;
    LblOtch: TLabel;
    LblYear: TLabel;
    CmbYear: TComboBox;
    GBoxResult: TGroupBox;
    LblTest1: TLabel;
    LblUD: TLabel;
    EdtUD: TEdit;
    EdtNPA: TEdit;
    LblNPA: TLabel;
    LblTest2: TLabel;
    EdtUD2: TEdit;
    EdtNPA2: TEdit;
    EdtRT2: TEdit;
    EdtRT: TEdit;
    LblRT: TLabel;
    LblTest3: TLabel;
    LblLt: TLabel;
    EdtLt: TEdit;
    EdtLt2: TEdit;
    LblTest4: TLabel;
    LblIVR: TLabel;
    EdtIVR: TEdit;
    LblIAR: TLabel;
    EdtIAR: TEdit;
    LblTest5: TLabel;
    LblAlco: TLabel;
    EdtAlco2: TEdit;
    EdtAlco: TEdit;
    MemoVivod: TMemo;
    LblVivod: TLabel;
    BtnReport: TBitBtn;
    procedure EdtUDChange(Sender: TObject);
    procedure EdtUDKeyPress(Sender: TObject; var Key: Char);
    procedure ResizeEdtUD2;
    procedure StartState;
    procedure EdtNPAChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtNPAKeyPress(Sender: TObject; var Key: Char);
    procedure EdtRTKeyPress(Sender: TObject; var Key: Char);
    procedure EdtRTChange(Sender: TObject);
    procedure EdtLtChange(Sender: TObject);
    procedure EdtAlcoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtAlcoChange(Sender: TObject);
  //  procedure proverka(Edit: TEdit);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmMain: TFmMain;
  mass: array[1..5] of string = ('состояние без депрессии', 'легкая депрессия ситуативного или невротического генеза', 'субдепрессивное состояние или маскированная депрессия', 'истинное депрессивное состояние...', '');
  mass2: array[1..5] of string = ('группа здоровья I (здоровые)', 'II (практически здоровые, с благоприятными прогностическими признаками)', 'III (практически здоровые, с неблагоприятными прогностическими признаками)', 'IV (легкая патология)', 'V (с признаками патологии)');
  mass3: array[1..3] of string = ('низкий уровень тревожности', 'умеренный уровень тревожности', 'высокий уровень тревожности');
  mass4: array[1..3] of string = ('Алкоголизм отсутствует', 'Подозрение на алкоголизм', 'Вероятно наличие алкоголизма');
  m, m2, m3, m4, ed: Integer;

implementation

{$R *.dfm}

{procedure TFmMain.proverka(Edit: TEdit);
begin
  ed := 3;
  if (Sender as TEdit).GetTextLen = 0 then
  begin
    FmMain.StartState;
    Exit;
  end;
  if (StrToInt((Sender as TEdit).Text) <= 30) then
  begin
    with edit{(Sender as TEdit) do
    begin
      m3 := 1;
      Text := mass3[1]; //низкий уровень тревожности
      Hint := mass3[1];
    end;
    FmMain.ResizeEdtUD2;
  end
  else if (StrToInt((Sender as TEdit).Text) >= 31) and (StrToInt((Sender as TEdit).Text) <= 45) then
  begin
    with edit{(Sender as TEdit) do
    begin
      m3 := 2;
      Text := mass3[2]; //умеренный уровень тревожности
      Hint := mass3[2]
    end;
    FmMain.ResizeEdtUD2;
  end
  else if (StrToInt((Sender as TEdit).Text) >= 46) then
  begin
    with edit{(Sender as TEdit) do
    begin
      m3 := 3;
      Text := mass3[3]; //высокий уровень тревожности
      Hint := mass3[3]
    end;
    FmMain.ResizeEdtUD2;
  end
end;}

procedure TFmMain.StartState;
begin
  if ed = 1 then
    with FmMain do      //Test1
    begin  //возврат EdtUD2 к начальным размерам
      EdtUD2.Clear;
      EdtUD2.Width := 145;
      EdtUD2.ShowHint := False;
    end
  else if ed = 2 then   //Test2
    with FmMain do
    begin  //возврат EdtNPA2 к начальным размерам
      Width := 590;
      GBoxResult.Width := 561;
      EdtNPA2.Clear;
      EdtNPA2.Width := 145;
      EdtNPA2.ShowHint := False;
    end
  else if ed = 3 then   //Test3 реактивная тревожность
    with FmMain do
    begin  //возврат EdtRT2 к начальным размерам
      Width := 590;
      GBoxResult.Width := 561;
      EdtRT2.Clear;
      EdtRT2.Width := 145;
      EdtRT2.ShowHint := False;
    end
  else if ed = 4 then  //Test3 личностная тревожность
    with FmMain do
    begin  //возврат EdtLT2 к начальным размерам
      Width := 590;
      GBoxResult.Width := 561;
      EdtLT2.Clear;
      EdtLT2.Width := 145;
      EdtLT2.ShowHint := False;
    end
  else if ed = 5 then  //Test5 на алкоголизм
    with FmMain do
    begin  //возврат EdtAlco2 к начальным размерам
      Width := 590;
      GBoxResult.Width := 561;
      EdtAlco2.Clear;
      EdtAlco2.Width := 145;
      EdtAlco2.ShowHint := False;
    end;
end;

procedure TFmMain.ResizeEdtUD2;
begin
  EdtUD2.ShowHint := True;
  EdtNPA.ShowHint := True;
  if ed = 1 then
  begin
    with FmMain.EdtUD2 do
    begin
      if m = 1 then
        Width := 196
      else if m = 2 then
        Width := 429
      else if m = 3 then
        Width := 429
      else if m = 4 then
        Width := 274;
    end;
  end
  else if ed = 2 then
  begin
    with FmMain.EdtNPA2 do
    begin
      if m2 = 1 then
      begin
        FmMain.Width := 590;
        GBoxResult.Width := 561;
        Width := 209
      end
      else if m2 = 2 then
      begin
        FmMain.Width := 686;
        GBoxResult.Width := 657;
        Width := 543
      end
      else if m2 = 3 then
      begin
        FmMain.Width := 702;
        GBoxResult.Width := 681;
        Width := 565
      end
      else if m2 = 4 then
        Width := 162
      else if m2 = 5 then
      begin
        if (FmMain.Width = 686) or (FmMain.Width = 702) then
        begin
          FmMain.Width := 590;
          GBoxResult.Width := 561;
        end;
        Width := 201;
      end;
    end;
  end
  else if (ed = 3) then
  begin
    with FmMain.EdtRT2 do
    begin
      if m3 = 1 then
        Width := 207
      else if m3 = 2 then
        Width := 235
      else if m3 = 3 then
        Width := 217
    end;
  end
  else if (ed = 4) then
    with FmMain.EdtLt2 do
    begin
      if m3 = 1 then
        Width := 207
      else if m3 = 2 then
        Width := 235
      else if m3 = 3 then
        Width := 217
    end
  else if (ed = 5) then
    with FmMain.EdtAlco2 do
    begin
      if m4 = 1 then
        Width := 174
      else if m4 = 2 then
        Width := 196
      else if m4 = 3 then
        Width := 226
    end;

end;

procedure TFmMain.EdtAlcoChange(Sender: TObject);
begin
  ed := 5;
  if (Sender as TEdit).GetTextLen = 0 then
  begin
    FmMain.StartState;
    Exit;
  end;
  if (StrToInt((Sender as TEdit).Text) >= 0) and (StrToInt(EdtAlco.Text) <= 4) then
  begin
    with EdtAlco2 do
    begin
      m4 := 1;
      Text := mass4[1]; //Алкоголизм отсутствует
      Hint := mass4[1];
    end;
    FmMain.ResizeEdtUD2;
  end
  else if (StrToInt((Sender as TEdit).Text) >= 5) and (StrToInt((Sender as TEdit).Text) <= 7) then
  begin
    with EdtAlco2 do
    begin
      m4 := 2;
      Text := mass4[2]; //Подозрение на алкоголизм
      Hint := mass4[2]
    end;
    FmMain.ResizeEdtUD2;
  end
  else if (StrToInt((Sender as TEdit).Text) > 7) then
  begin
    with EdtAlco2 do
    begin
      m4 := 3;
      Text := mass4[3]; //Вероятно наличие алкоголизма
      Hint := mass4[3]
    end;
    FmMain.ResizeEdtUD2;
  end;
end;

procedure TFmMain.EdtAlcoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #8) then
    Exit;
  if (Key = #$D) then    //Enter
  begin
    if (EdtAlco.GetTextLen = 0) then
    begin
      ShowMessage('Поле не может  быть пустым. Введите числовое значение');
      Exit
    end
    else if (EdtAlco.GetTextLen <> 0) then
      EdtAlco2.SetFocus;
    Key := #0;
    Exit;
  end;
  if (Key < '0') or (Key > '9') then
  begin
    MessageDlg('Необходимо ввести числовое значение.', mtInformation, [mbYes], 0);
    Key := #0;
  end;
end;

procedure TFmMain.EdtLtChange(Sender: TObject);
begin
  ed := 4;
  if (Sender as TEdit).GetTextLen = 0 then
  begin
    FmMain.StartState;
    Exit;
  end;
  if (StrToInt((Sender as TEdit).Text) <= 30) then
  begin
    with EdtLT2 do
    begin
      m3 := 1;
      Text := mass3[1]; //низкий уровень тревожности
      Hint := mass3[1];
    end;
    FmMain.ResizeEdtUD2;
  end
  else if (StrToInt((Sender as TEdit).Text) >= 31) and (StrToInt((Sender as TEdit).Text) <= 45) then
  begin
    with EdtLT2 do
    begin
      m3 := 2;
      Text := mass3[2]; //умеренный уровень тревожности
      Hint := mass3[2]
    end;
    FmMain.ResizeEdtUD2;
  end
  else if (StrToInt((Sender as TEdit).Text) >= 46) then
  begin
    with EdtLT2 do
    begin
      m3 := 3;
      Text := mass3[3]; //высокий уровень тревожности
      Hint := mass3[3]
    end;
    FmMain.ResizeEdtUD2;
  end;
end;

procedure TFmMain.EdtNPAChange(Sender: TObject);
begin
  ed := 2;
  if EdtNPA.GetTextLen = 0 then
  begin
    StartState;
    Exit;
  end;
  if (StrToInt(EdtNPA.Text) <= 10) then //попробовать ActiveControl
  begin
    with EdtNPA2 do
    begin
      m2 := 1;
      Text := mass2[1]; //группа здоровья I (здоровые)
      Hint := mass2[1];
    end;
    ResizeEdtUD2;
  end
  else if (StrToInt(EdtNPA.Text) >= 11) and (StrToInt(EdtNPA.Text) <= 20) then
  begin
    with EdtNPA2 do
    begin
      m2 := 2;
      Text := mass2[2]; //II (практически здоровые, с благоприятными прогностическими признаками)
      Hint := mass2[2]
    end;
    ResizeEdtUD2;
  end
  else if (StrToInt(EdtNPA.Text) >= 21) and (StrToInt(EdtNPA.Text) <= 30) then
  begin
    with EdtNPA2 do
    begin
      m2 := 3;
      Text := mass2[3]; //III (практически здоровые, с неблагоприятными прогностическими признаками)
      Hint := mass2[3]
    end;
    ResizeEdtUD2;
  end
  else if (StrToInt(EdtNPA.Text) >= 31) and (StrToInt(EdtNPA.Text) <= 40) then
  begin
    with EdtNPA2 do
    begin
      m2 := 4;
      Text := mass2[4]; //IV (легкая патология)
      Hint := mass2[4]
    end;
    ResizeEdtUD2;
  end
  else if (StrToInt(EdtNPA.Text) > 40) then
  begin
    with EdtNPA2 do
    begin
      m2 := 5;
      Text := mass2[5]; //V (с признаками патологии)
      Hint := mass2[5]
    end;
    ResizeEdtUD2;
  end;
end;

procedure TFmMain.EdtNPAKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #8) then
    Exit;
  if (Key = #$D) then    //Enter
  begin
    if (EdtNPA.GetTextLen = 0) then
    begin
      ShowMessage('Поле не может  быть пустым. Введите числовое значение');
      Exit
    end
    else if (EdtNPA.GetTextLen <> 0) then
      EdtRT.SetFocus;
    Key := #0;
    Exit;
  end;
  if (Key < '0') or (Key > '9') then
  begin
    MessageDlg('Необходимо ввести числовое значение.', mtInformation, [mbYes], 0);
    Key := #0;
  end;
end;

procedure TFmMain.EdtRTChange(Sender: TObject);
begin
  ed := 3;
  if (Sender as TEdit).GetTextLen = 0 then
  begin
    FmMain.StartState;
    Exit;
  end;
  if (StrToInt((Sender as TEdit).Text) <= 30) then
  begin
    with EdtRT2{(Sender as TEdit)} do
    begin
      m3 := 1;
      Text := mass3[1]; //низкий уровень тревожности
      Hint := mass3[1];
    end;
    FmMain.ResizeEdtUD2;
  end
  else if (StrToInt((Sender as TEdit).Text) >= 31) and (StrToInt((Sender as TEdit).Text) <= 45) then
  begin
    with EdtRT2{(Sender as TEdit)} do
    begin
      m3 := 2;
      Text := mass3[2]; //умеренный уровень тревожности
      Hint := mass3[2]
    end;
    FmMain.ResizeEdtUD2;
  end
  else if (StrToInt((Sender as TEdit).Text) >= 46) then
  begin
    with EdtRT2{(Sender as TEdit)} do
    begin
      m3 := 3;
      Text := mass3[3]; //высокий уровень тревожности
      Hint := mass3[3]
    end;
    FmMain.ResizeEdtUD2;
  end;
end;

procedure TFmMain.EdtRTKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #8) then      //BackSpace
    Exit;
  if (Key = #$D) then    //Enter
  begin
    if (EdtRT.GetTextLen = 0) then
    begin
      ShowMessage('Поле не может  быть пустым. Введите числовое значение');
      Exit
    end
    else if (EdtRT.GetTextLen <> 0) then
      EdtLt.SetFocus;
    Key := #0;             //Обнуление
    Exit;
  end;
  if (Key < '0') or (Key > '9') then
  begin
    MessageDlg('Необходимо ввести числовое значение.', mtInformation, [mbYes], 0);
    Key := #0;
  end;
end;

procedure TFmMain.EdtUDChange(Sender: TObject);
begin
  ed := 1;
  if EdtUD.GetTextLen = 0 then
  begin
    StartState;
    Exit;
  end;
  if (StrToInt(EdtUD.Text) >= 0) and (StrToInt(EdtUD.Text) <= 49) then
  begin
    with EdtUD2 do
    begin
      m := 1;
      Text := mass[1]; //состояние без депрессии
      Hint := mass[1];
    end;
    ResizeEdtUD2;
  end
  else if (StrToInt(EdtUD.Text) >= 50) and (StrToInt(EdtUD.Text) <= 59) then
  begin
    with EdtUD2 do
    begin
      m := 2;
      Text := mass[2]; //легкая депрессия ситуативного или невротического генеза
      Hint := mass[2]
    end;
    ResizeEdtUD2;
  end
  else if (StrToInt(EdtUD.Text) >= 60) and (StrToInt(EdtUD.Text) <= 69) then
  begin
    with EdtUD2 do
    begin
      m := 3;
      Text := mass[3]; //субдепрессивное состояние или маскировочная депрессия
      Hint := mass[3]
    end;
    ResizeEdtUD2;
  end
  else if (StrToInt(EdtUD.Text) >= 70) then
  begin
    with EdtUD2 do
    begin
      m := 4;
      Text := mass[4]; //истенное депрессивное состояние...
      Hint := mass[4]
    end;
    ResizeEdtUD2;
  end;
end;

procedure TFmMain.EdtUDKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #8) then
    Exit;
  if (Key = #$D) then    //Enter
  begin
    if (EdtUD.GetTextLen = 0) then
    begin
      ShowMessage('Поле не может  быть пустым. Введите числовое значение');
      Exit
    end
    else if (EdtUD.GetTextLen <> 0) then
      EdtNPA.SetFocus;
    Key := #0;
    Exit;
  end;
  if (Key < '0') or (Key > '9') then
  begin
    MessageDlg('Необходимо ввести числовое значение.', mtInformation, [mbYes], 0);
    Key := #0;
  end;
end;

procedure TFmMain.FormCreate(Sender: TObject);
begin
  FmMain.Width := 590;
  GBoxResult.Width := 561;
  m := 0;
  m2 := 0;
  ed := 0;
end;

end.

