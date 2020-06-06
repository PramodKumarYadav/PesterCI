[![Build Status](https://img.shields.io/appveyor/build/PramodKumarYadav/pesterci)](https://ci.appveyor.com/project/PramodKumarYadav/pesterci)
[![Test Status](https://img.shields.io/appveyor/tests/PramodKumarYadav/pesterci)](https://ci.appveyor.com/project/PramodKumarYadav/pesterci/build/tests)



# References for Implementing CI using Pester/Github/AppVeyor
- https://tjaddison.com/blog/2018/06/adding-pester-tests-to-a-powershell-module-and-scheduling-ci-with-appveyor/
- https://pester.dev/docs/usage/test-results
- https://pester.dev/docs/quick-start


# References for using Shields.io badges (that you see above)
- https://shields.io/category/build


# What works
This code works with old pester version using powershell 5.1 (so from installed default powershell prompt)

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


# How to Run
PS D:\PesterCI> Invoke-Pester -CodeCoverage .\PSScripts\Set-Dummy.ps1

# Result (with coverage)
CODE ABOVE FUNCTION

Describing Set-Dummyyyyy

in function set-dummy2
 
 [-] this is meant to fail 776ms

   Expected: {}

   But was:  {5}

   8:         Set-Dummy | Should Be $null

   at <ScriptBlock>, D:\PesterCI\PSScripts\Set-Dummy.Tests.ps1: line 8

in function set-dummy2
 
 [+] this is how it should be 295ms

Tests completed in 1.07s

Passed: 1 Failed: 1 Skipped: 0 Pending: 0 Inconclusive: 0

Code coverage report:

Covered 100.00% of 4 analyzed commands in 1 file.
PS D:\PesterCI>

# What doesn't work

It did not work with new version of pester and new version of powershell
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