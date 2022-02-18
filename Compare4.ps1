sqlcmd -S 127.0.0.1 -d AdventureWorksLT2019 -U sa -P "yourStrong(!)Password" -i SQLQuery4.sql -o StudentAns4.txt -W -h -1 -m 1
$studentOutput = Get-Content -Path StudentAns4.txt -Raw
$expectedOutput =Get-Content -Path ./test-helpers/ExpectedOutput4.txt -Raw
$studentOutput -eq $expectedOutput