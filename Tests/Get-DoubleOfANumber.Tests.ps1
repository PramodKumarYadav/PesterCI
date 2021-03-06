# Dot import powershell scripts (ps1 files) to this test script 
$files = Get-ChildItem -Path ".\PSScripts\*.ps1" -Recurse -Force
foreach($file in $files) {
    Write-Host "Importing `$file: $file"
    . $file  # Dot importing functions
}

# Import modules 
$modules = Get-ChildItem -Path ".\PSScripts\*.psm1" -Recurse -Force
foreach($module in $modules) {
    Write-Host "Importing `$module: $module"
    Import-Module $module -Force
}

Describe "Get-DoubleOfANumber" { 

    # It "this is meant to fail" {
    #     Get-DoubleOfANumber | Should Be $null  
    # }

    It "an integer variable when not passed is zero" {
        Get-DoubleOfANumber | Should Be 0  
    }

    It "double of 0 is 0" {
        Get-DoubleOfANumber -num 0 | Should Be 0   
    }

    It "double of 1 is 2" {
        Get-DoubleOfANumber -num 1 | Should Be 2   
    }

    # Mock Set-Dummy { return 1}
    It "double of 5 is 10" {
        Get-DoubleOfANumber -num 5| Should Be 10  
    }
}

Describe 'Demonstrating Code Coverage' {
    It 'Calls FunctionOne with no switch parameter set' {
        FunctionOne | Should Be 'SwitchParam was not set'
    }

    It 'Calls FunctionTwo' {
        FunctionTwo | Should Be 'I get executed'
    }
}
