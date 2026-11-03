# ----------------------------------------------------------------------
# B2. PowerShell — līmeņu kopsavilkums CSV failā
# ----------------------------------------------------------------------

# Saskaiti, cik žurnālā ir katra līmeņa rindu, un saglabā rezultātu CSV failā limeni.csv, ko var atvērt Excel. Aizpildi vietu, kur stāv TODO.
#
# Aizpildi vietu, kur stāv TODO. Tad palaid.
# ----------------------------------------------------------------------                                                                                                Pirms eksporta izvadi Write-Host rindu "Grupēts".

$rindas = Get-Content "sistema.log"
$limeni = $rindas | ForEach-Object { ($_ -split " ")[2] }

$limeni | Group-Object | 
Select-Object Name, Count |
Export-Csv "limeni.csv" -Encoding UTF8
