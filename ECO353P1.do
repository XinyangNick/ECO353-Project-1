clear all
cls
cd "/Users/nick0o0o0/Library/Mobile Documents/com~apple~CloudDocs/gxyfile/third_year/ECO353/Assignment/project1/ECO353-Project-1"

import delimited "NBATeamData.csv", clear


eststo spec1: regress totalrevenues citypopulationinthousand
eststo spec2: regress totalrevenues attendanceinthousand
eststo spec3: regress totalrevenues statemedianincome2021inthousand
eststo spec4: regress totalrevenues winningtotal
eststo spec5: regress totalrevenues citypopulationinthousand attendanceinthousand statemedianincome2021inthousand winningtotal


esttab spec1 spec2 spec3 spec4 spec5, mtitles("spec1" "spec2" "spec3" "spec4" "spec5") cells(b(star fmt(3)) se(par))
esttab spec1 spec2 spec3 spec4 spec5  using RegressionTable.html, mtitles("spec1" "spec2" "spec3" "spec4" "spec5") cells(b(star fmt(3)) se(par)) replace
