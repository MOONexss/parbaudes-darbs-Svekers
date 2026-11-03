# ----------------------------------------------------------------------
# A2. PowerShell — procesu atmiņas kopsumma
# ----------------------------------------------------------------------

# Jāizvada, cik atmiņas kopā patērē visi procesi. Skripts izvada procesu skaitu, bet kopsumma ir tukša. Atrodi un salabo kļūdu.
#
# Atrodi un salabo. Tad palaid.
# ----------------------------------------------------------------------                                                                                                Pirms rezultāta izvadi Write-Host rindu "Mērījums sākas".

$procesi = Get-Process
$rezultats = $procesi | Measure-Object WorkingSet64 -Sum

Write-Host "Procesu skaits:" $rezultats.Count
Write-Host "Atmiņa kopā:" $rezultats.Sum
