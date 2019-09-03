; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "CalcHelper"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "dp3"
#define MyAppURL "https://mioto.dp3.jp"
#define MyAppExeName "CalcHelper.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{14673A1D-A931-493A-9B23-A40BA312FB00}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=CalcHelperSetup
OutputDir=.\Installer
;SetupIconFile=C:\Users\min\Documents\Visual Studio 2015\Projects\IoTBasics\CalcHelper\iot.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
UninstallDisplayIcon={app}\iot.ico


[Languages]
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\min\Documents\Visual Studio 2015\Projects\IoTBasics\CalcHelper\bin\Release\CalcHelper.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\min\Documents\Visual Studio 2015\Projects\IoTBasics\CalcHelper\bin\Release\x64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\min\Documents\Visual Studio 2015\Projects\IoTBasics\CalcHelper\bin\Release\x86\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\min\Documents\Visual Studio 2015\Projects\IoTBasics\CalcHelper\bin\Release\html\*"; DestDir: "{app}\html\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\min\Documents\Visual Studio 2015\Projects\IoTBasics\CalcHelper\bin\Release\CalcHelper.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\min\Documents\Visual Studio 2015\Projects\IoTBasics\CalcHelper\bin\Release\System.Data.SQLite.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\min\Documents\Visual Studio 2015\Projects\IoTBasics\CalcHelper\bin\Release\System.Data.SQLite.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\min\Documents\Visual Studio 2015\Projects\IoTBasics\CalcHelper\iot.ico"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Parameters: "/i"; Flags: runascurrentuser runminimized

[UninstallRun]
Filename: "{app}\{#MyAppExeName}"; Parameters: "/u"; Flags: runascurrentuser runminimized

