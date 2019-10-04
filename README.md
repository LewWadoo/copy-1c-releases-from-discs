# copy-1c-releases-from-discs
Скрипт копирует основные дистрибутивы 1С с дисков для партнёров: *"AccountingBase", "Accounting", "Taxes", "TradeBase", "hrmbase", "HRM", "StateAccounting", "StateHRM", "Trade", "ARAutomation", "AccountingCorp"*.

Функция <code>Copy-ReleasesFromDisc ($disc, $strPathFromDisc, $strPathToStart)</code> принимает значения:
* <code>$disc</code> — номер диска, по умолчанию = **1**;
* <code>$strPathFromDisc</code> — путь к диску с дистрибутивами, по умолчанию = **"\\ServPrint\F"**;
* <code>$strPathToStart</code> — путь для сохранения дистрибутивов, по умолчанию = **"Z:\1С в облаке\Релизы"**.
