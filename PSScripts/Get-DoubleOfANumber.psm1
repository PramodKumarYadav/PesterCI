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