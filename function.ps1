function Add-Twonumber {
    param (
        [int]$a , [int]$b
    )
    $c = $a + $b
    Write-Host "Value is $c"
}

function Sub-TwoNumber {
    param (
        $a , $b
    )
    $c = $a - $b
    Write-Host "Value is $c"
}

function Mul-TwoNumber {
    param (
        $a , $b
    )
    $c = $a * $b
    Write-Host "Value is $c"
}

function Div-TwoNumber {
    param (
        $a , $b
    )
    $c = $a % $b
    $e = $a / $b 
    Write-Host "Value is $c"
    Write-Host "Value is $e"
} 