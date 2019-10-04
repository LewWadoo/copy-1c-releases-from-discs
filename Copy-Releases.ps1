## In order to copy to mail.ru disc run it on the same computer
## ToDo: if mail.ru cloud isn't launched then launch it (C:\Users\Администратор.WIN-ATAOO2SI5N8\AppData\Local\Mail.Ru\Disk-O\Disko.exe)
$strAllFiles = "*"

$arrReleases = "AccountingBase","Accounting","Taxes","TradeBase","hrmbase","HRM","StateAccounting","StateHRM","Trade","ARAutomation","AccountingCorp"
$arrDiscsPathsFromStart = "1CItsFr1\EXE\V8\V8CONFIG","1CitsFrB\EXE\V8\V8CONFIG82","1CItsFr3\EXE\V8\V8CONFIG","1CItsFr4\EXE\V8\V8CONFIG","1CItsFr5\EXE\V8\V8CONFIG"
$arrDiscsPathsFromFull = New-Object 'String[,]' $arrDiscsPathsFromStart.Length,$arrReleases.Length
$arrDiscsPathsToFull = New-Object 'String[]' $arrReleases.Length

function Copy-ReleasesFromDisc ($disc, $strPathToDisc, $strPathToStart) {
if ($strPathToDisc -eq $null) {
$strPathToDisc = "\\ServPrint\F"
}
if ($strPathToStart -eq $null) {
$strPathToStart = "Z:\1С в облаке\Релизы"
}
if ($disc -eq $null) {
$disc = 1
}

    $disc-- 
    $arrDiscsPathsFromStart[$disc] = Join-Path -Path $strPathToDisc -ChildPath $arrDiscsPathsFromStart[$disc]
    for ($release = 0; $release -lt $arrReleases.Length; ++$release)
    {
        $arrDiscsPathsFromFull[$disc,$release] = Join-Path -Path $arrDiscsPathsFromStart[$disc] -ChildPath $arrReleases[$release]
        if (Test-Path -Path $arrDiscsPathsFromFull[$disc, $release]) {
            $arrDiscsPathsToFull[$release] = Join-Path -Path $strPathToStart -ChildPath $arrReleases[$release]
            $strFromFull = Join-Path -Path $arrDiscsPathsFromFull[$disc,$release] -ChildPath $strAllFiles
            "Копируется $($arrReleases[$release]) из $strFromFull в $($arrDiscsPathsToFull[$release])…"
            Copy-Item -Path $strFromFull -Destination $arrDiscsPathsToFull[$release] -Recurse
        }
    }
}