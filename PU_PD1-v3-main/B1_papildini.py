# ----------------------------------------------------------------------
# B1. Python — kļūdas pa diennakts stundām
# ----------------------------------------------------------------------

# Saskaiti, cik ERROR rindu ir katrā diennakts stundā, un izvadi tās no 00 līdz 23. Aizpildi abas vietas, kur stāv TODO.
#
# Aizpildi vietu, kur stāv TODO. Tad palaid.
# ----------------------------------------------------------------------                                                                                                Vārdnīcu, kurā skaita, nosauc par stundu_tabula.

stundas = {}

with open("sistema.log", encoding="utf-8") as f:
    for rinda in f:
        dalas = rinda.split()
        if dalas[2] == "ERROR":
            stunda = dalas[1][:2]
            stundas[stunda] = stundas.get(stunda, 0) + 1
for h in range(24):
    stunda =f"{h:02d}"
    print(stunda,stundas.get(stunda, 0))