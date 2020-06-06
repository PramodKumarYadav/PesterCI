function Get-DoubleOfANumber {
    # Parameter help description
    param(
            [int]$num
        )

    write-host "Testing with `$num: $num " 
    $twice = $num*2
    write-host "Result is : $twice " 
    return $twice
}

function FunctionOne ([switch] $SwitchParam)
{
    if ($SwitchParam)
    {
        return 'SwitchParam was set'
    }
    else
    {
        return 'SwitchParam was not set'
    }
}

function FunctionTwo
{
    return 'I get executed'
    return 'I do not'
}