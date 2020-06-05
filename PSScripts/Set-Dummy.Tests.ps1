$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Set-Dummyyyyy" { 
    # Mock Set-Dummy { return 1}
    It "does something useful" {
        Set-Dummy | Should Be $null    
    }

    # Mock Set-Dummy { return 1}
    It "does something useful" {
        Set-Dummy | Should Be 1   
    }
}