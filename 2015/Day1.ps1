$directions = get-content "C:\Users\ldfre\Documents\Guard Fun\floors.txt"
$start = 0 
foreach ($step in $directions.ToCharArray())
{ 
    write-host $step 
    if ($step -eq "(")
    {
        $start = $start + 1
    }
    else 
    {
        $start = $start - 1
    }

}
    $start