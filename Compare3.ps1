sqlcmd -S 127.0.0.1 -d AdventureWorksLT2019 -U sa -P "yourStrong(!)Password" -i SQLQuery3.sql -o StudentAns3.txt
$studentOutput = Get-Content -Path StudentAns3.txt -Raw
$expectedOutput =Get-Content -Path /home/runner/work/labb4/labb4/testdir/ExpectedOutput3.txt -Raw
$studentOutput -eq $expectedOutput