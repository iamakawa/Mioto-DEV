; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
;
; バージョン更新時は、MyAppVersionのみ変更すること。AppIdの変更は不要。
; アプリケーションの削除メニューに表示されるバージョンは、メニューを閉じて再表示すれば更新される。
;
#define MyAppName "MiotoServer"
#define MyAppVersion "1.4.7"
#define MyAppPublisher "dp3"
#define MyAppURL "https://mioto.dp3.jp"
#define MyAppExeName "MiotoServerW.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C615BCEB-A5E9-449D-825D-0DCF599B7C23}
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
OutputBaseFilename=MiotoServerSetup
OutputDir=Installer
Compression=lzma
SolidCompression=yes
WizardStyle=modern
UninstallDisplayIcon={app}\iot.ico

[Languages]
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\min\Source\Repos\Mioto-DEV\MiotoServer\bin\Release\MiotoServerW.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\min\Source\Repos\Mioto-DEV\MiotoServer\bin\Release\EntityFramework.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\min\Source\Repos\Mioto-DEV\MiotoServer\bin\Release\EntityFramework.SqlServer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\min\Source\Repos\Mioto-DEV\MiotoServer\bin\Release\EntityFramework.SqlServer.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\min\Source\Repos\Mioto-DEV\MiotoServer\bin\Release\EntityFramework.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\min\Source\Repos\Mioto-DEV\MiotoServer\bin\Release\sqlite3.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\min\Source\Repos\Mioto-DEV\MiotoServer\bin\Release\System.Text.Json.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\min\Source\Repos\Mioto-DEV\MiotoServer\bin\Release\System.Text.Json.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\min\Source\Repos\Mioto-DEV\MiotoServer\bin\Release\MiotoServer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\min\Source\Repos\Mioto-DEV\MiotoServer\bin\Release\MiotoServer.dll.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\min\Source\Repos\Mioto-DEV\MiotoServer\bin\Release\MiotoServer.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\min\Source\Repos\Mioto-DEV\MiotoServer\bin\Release\MiotoServerW.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\min\Source\Repos\Mioto-DEV\MiotoServer\bin\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\min\Source\Repos\Mioto-DEV\MiotoServer\iot.ico"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
; Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent runascurrentuser
Filename: "{app}\{#MyAppExeName}"; Parameters: "/i"; Flags: runascurrentuser runminimized

[UninstallRun]
Filename: "{app}\{#MyAppExeName}"; Parameters: "/u"; Flags: runascurrentuser runminimized

