[![Build Status](https://img.shields.io/appveyor/build/PramodKumarYadav/pesterci)](https://ci.appveyor.com/project/PramodKumarYadav/pesterci)
[![Test Status](https://img.shields.io/appveyor/tests/PramodKumarYadav/pesterci)](https://ci.appveyor.com/project/PramodKumarYadav/pesterci/build/tests)

# Check versions (PowerShell and Pester)

## Check powershell version
PS D:\PesterCI> "$($PSVersionTable.PSVersion)"

5.1.18362.752

## Check pester version
PS D:\PesterCI> Get-Module Pester -ListAvailable


Directory: C:\Program Files\WindowsPowerShell\Modules

ModuleType Version    Name                                ExportedCommands
---------- -------    ----                                ----------------
Script     3.4.0      Pester                              {Describe, Context, It, Should...}

## Note:
The code samples in here uses older version of Pester (and thus older syntax) with version 5 of powershell. I tried with newer versions of Powershell and Pester but had issues. I may/will migrate eventually to newer versions of both powershell/Pester using latest syntax of pester but for a POC, this suffices. 

# Steps to Run
- Clone this project on your machine.
- Make a change in any of the files (except this readme file). 
    - This could be adding a new function/module/test or even as simple as adding a space.
- Add and commit this change.
- Push to Github (Git push)
- Now go to the [GitHub page](https://github.com/PramodKumarYadav/PesterCI)
- Click on any of the badges on the top of this Readme.md file (Build or Test)
    - This should take you to the appveyor page [say for build](https://ci.appveyor.com/project/PramodKumarYadav/pesterci )
- If this build points to the latest commit you pushed, you are good. If not, login to appVeyor
    - https://ci.appveyor.com/project/PramodKumarYadav/pesterci
    - For me I was not able to login using github on chrome. Edge worked okay.
- Make a change, commit, push and try again.
- You should be able to see the latest build and tests status by navigating via badges.

# To replicate this in your project.
- If you want to replicate the process, the appveyor.yml file in root is the one that does the magic. 
    - Customize this file for your needs in your project.
    - Copy the scripts/modules you want to test in one directory.
    - Copy the tests in another (as shown here).
    - Invoke your tests from root (as shown in the appveyor.yml) file.
    - You are good to check results in appveyor.yml.
        - And yes, you would have to regiester for appveyor (if not done already).
        - I used github to login/register. Then selected the project where I wanted to run the CI tests.
    - If stuck, use this very detailed article that I used to setup my project.
        - https://tjaddison.com/blog/2018/06/adding-pester-tests-to-a-powershell-module-and-scheduling-ci-with-appveyor/


# To test Pester on your local machine 
## Run this

PS D:\PesterCI> Invoke-Pester -OutputFormat NUnitXml -OutputFile .\TestResults.xml -PassThru -CodeCoverage .\PSScripts\*.ps1, .\PSScripts\*.psm1

## Results

Describing Get-DoubleOfANumber  
Testing with $num: 0  
Result is : 0
 [+] double of 0 is 0 696ms  
Testing with $num: 1  
Result is : 2  
 [+] double of 1 is 2 152ms  
Testing with $num: 5  
Result is : 10  
 [+] double of 5 is 10 150ms  
Describing Demonstrating Code Coverage  
 [+] Calls FunctionOne with no switch parameter set 289ms  
 [+] Calls FunctionTwo 140ms  
Tests completed in 1.43s  
Passed: 5 Failed: 0 Skipped: 0 Pending: 0 Inconclusive: 0  

Code coverage report:  
Covered 77.78% of 9 analyzed commands in 1 file.  

Missed commands:  

File                    Function    Line Command  
----                    --------    ---- -------
Get-DoubleOfANumber.ps1 FunctionOne   17 return 'SwitchParam was set'  
Get-DoubleOfANumber.ps1 FunctionTwo   28 return 'I do not'  

- More options for running with coverage are here: https://pester.dev/docs/usage/code-coverage
- More options for creating test reports are here: https://pester.dev/docs/usage/test-results

# References for Implementing CI using Pester/Github/AppVeyor
- https://tjaddison.com/blog/2018/06/adding-pester-tests-to-a-powershell-module-and-scheduling-ci-with-appveyor/
- https://pester.dev/docs/usage/test-results
- https://pester.dev/docs/quick-start


# References for using Shields.io badges (that you see above)
- https://shields.io/category/build
- https://egghead.io/lessons/javascript-how-to-write-a-javascript-library-adding-badges-to-your-readme
