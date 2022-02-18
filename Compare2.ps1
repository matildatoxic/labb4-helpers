sqlcmd -S 127.0.0.1 -d AdventureWorksLT2019 -U sa -P "yourStrong(!)Password" -i SQLQuery2.sql -o StudentAns2.txt -W -h -1 -m 1
$studentOutput = Get-Content -Path StudentAns2.txt -Raw
$expectedOutput =Get-Content -Path ./test-helpers/ExpectedOutput2.txt -Raw
$studentOutput -eq $expectedOutput