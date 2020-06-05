$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Set-Dummyyyyy" { 
    # Mock Set-Dummy { return 1}
    It "this is meant to fail" {
        Set-Dummy | Should Be $null    
    }

    # Mock Set-Dummy { return 1}
    It "this is how it should be" {
        Set-Dummy | Should Be 5  
    }
}