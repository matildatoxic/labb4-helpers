sqlcmd -S 127.0.0.1 -d AdventureWorksLT2019 -U sa -P "yourStrong(!)Password" -i SQLQuery1.sql -o StudentAns1.txt -W -h -1 -m 1
$studentOutput = Get-Content -Path StudentAns1.txt -Raw
$expectedOutput =Get-Content -Path ./test-helpers/ExpectedOutput1.txt -Raw
$studentOutput -eq $expectedOutput