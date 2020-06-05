# This code works with old pester version using powershell 5.1 (so from installed default powershell prompt)

PS D:\PesterCI> $PSVersionTable

Name                           Value
----                           -----
PSVersion                      5.1.18362.752
PSEdition                      Desktop
PSCompatibleVersions           {1.0, 2.0, 3.0, 4.0...}
BuildVersion                   10.0.18362.752
CLRVersion                     4.0.30319.42000
WSManStackVersion              3.0
PSRemotingProtocolVersion      2.3
SerializationVersion           1.1.0.1

## PS D:\PesterCI> Get-Module Pester -ListAvailable

    Directory: C:\Program Files\WindowsPowerShell\Modules


ModuleType Version    Name                                ExportedCommands
---------- -------    ----                                ----------------
Script     3.4.0      Pester                              {Describe, Context, It, Should...}


#  It did not work with new version of pester and new version of powershell
PS D:\PesterCI> $psversiontable


Name                           Value
----                           -----
PSVersion                      7.0.1
PSEdition                      Core
GitCommitId                    7.0.1
OS                             Microsoft Windows 10.0.18362
Platform                       Win32NT
PSCompatibleVersions           {1.0, 2.0, 3.0, 4.0…}
PSRemotingProtocolVersion      2.3
SerializationVersion           1.1.0.1
WSManStackVersion              3.0

##  PS D:\PesterCI> Get-Module Pester -ListAvailable



    Directory: C:\Users\Pramod Yadav\OneDrive\Documents\PowerShell\Modules

ModuleType Version    PreRelease Name                                PSEdition ExportedCommands
---------- -------    ---------- ----                                --------- ----------------
Script     5.0.2                 Pester                              Desk      {Invoke-Pester, Describe, Context, It…}

    Directory: C:\Program Files\WindowsPowerShell\Modules

ModuleType Version    PreRelease Name                                PSEdition ExportedCommands
---------- -------    ---------- ----                                --------- ----------------
Script     3.4.0                 Pester                              Desk      {Describe, Context, It, Should…}

PS D:\PesterCI>