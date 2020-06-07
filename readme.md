[![Build Status](https://img.shields.io/appveyor/build/PramodKumarYadav/pesterci)](https://ci.appveyor.com/project/PramodKumarYadav/pesterci)
[![Test Status](https://img.shields.io/appveyor/tests/PramodKumarYadav/pesterci)](https://ci.appveyor.com/project/PramodKumarYadav/pesterci/build/tests)

# To test on the local machine (Run this)

PS D:\PesterCI> Invoke-Pester -OutputFormat NUnitXml -OutputFile .\TestResults.xml -PassThru -CodeCoverage .\PSScripts\*.ps1, .\PSScripts\*.psm1



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
