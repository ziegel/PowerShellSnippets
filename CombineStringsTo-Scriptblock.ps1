#Combining 2 strings to scriptblock allows it to be run in PowerShell where a parameter of type ScriptBlock (and Not String) is expected
#Based on https://www.thomasmaurer.ch/2011/11/powershell-convert-string-to-scriptblock/
function CombineStringTo-Scriptblock ()
{
    [CmdletBinding()]
    param(
    [Parameter(Mandatory=$True,Position=1)]
    [string]$command1,
    [Parameter(Mandatory=$True,Position=2)]
    [string]$command2
    )

    $scriptblock1 = [scriptblock]::Criceate($($command1+$command2))

    return $scriptblock1
}
