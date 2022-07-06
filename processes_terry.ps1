echo "------------------------ START ------------------------"
echo "Start pslist"

$process_name = 'pslist'
$path_source = 'E:\Lab5\Parts\Terry Ram\'
$path_destination = 'E:\Lab5\Parts\Part 3\Run Volatility on E\'
$subdirectory = 'Output_Process'
$subdirectory = $subdirectory+'_'+$process_name+'\'
$path_destination = $path_destination+$subdirectory
$file_extension = '.txt.'

echo "`n"
echo "Start Loop"

$list = Get-ChildItem -Path $path_source -Name

echo "`n"
echo "Analysis of Files:"
echo $list

foreach ($file in $list)
{
    echo $file 
    $name = $file

    ./volatility_2.6_win64_standalone.exe -f $path_source$name'\'$file $process_name | Out-File -FilePath $path_destination$name$file_extension
}

echo "`n"
echo "Complete pslist"
echo "------------------------ END ------------------------"