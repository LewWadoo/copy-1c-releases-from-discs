# copy-1c-releases-from-discs
Скрипт копирует основные дистрибутивы 1С с дисков для партнёров: "AccountingBase", "Accounting", "Taxes", "TradeBase", "hrmbase", "HRM", "StateAccounting", "StateHRM", "Trade", "ARAutomation", "AccountingCorp".

Функция Copy-ReleasesFromDisc ($disc, $strPathFromDisc, $strPathToStart) принимает значения:
$disc — номер диска, по умолчанию = 1;
$strPathFromDisc — путь к диску с дистрибутивами, по умолчанию = "\\ServPrint\F";
$strPathToStart — путь для сохранения дистрибутивов, по умолчанию = "Z:\1С в облаке\Релизы".
