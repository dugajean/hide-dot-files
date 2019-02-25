; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Hide Dot Files"
#define MyAppVersion "1.0"
#define MyAppPublisher "Dugajean"
#define MyAppURL "http://dukagj.in"
#define MyAppExeName "hide-dot-files.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{8489324E-94C0-4712-A50C-D7BD99895421}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=C:\Users\Dugi\Desktop
OutputBaseFilename=Setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\Users\Dugi\Code\hide-dot-files\dist\hide-dot-files.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Dugi\Code\hide-dot-files\dist\_bz2.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Dugi\Code\hide-dot-files\dist\_ctypes.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Dugi\Code\hide-dot-files\dist\_hashlib.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Dugi\Code\hide-dot-files\dist\_lzma.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Dugi\Code\hide-dot-files\dist\_queue.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Dugi\Code\hide-dot-files\dist\_socket.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Dugi\Code\hide-dot-files\dist\_ssl.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Dugi\Code\hide-dot-files\dist\base_library.zip"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Dugi\Code\hide-dot-files\dist\hide-dot-files.exe.manifest"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Dugi\Code\hide-dot-files\dist\libcrypto-1_1-x64.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Dugi\Code\hide-dot-files\dist\libssl-1_1-x64.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Dugi\Code\hide-dot-files\dist\pyexpat.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Dugi\Code\hide-dot-files\dist\python37.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Dugi\Code\hide-dot-files\dist\select.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Dugi\Code\hide-dot-files\dist\unicodedata.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Dugi\Code\hide-dot-files\dist\VCRUNTIME140.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
