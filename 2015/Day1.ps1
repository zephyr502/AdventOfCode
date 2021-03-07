$directions = get-content "C:\Users\ldfre\Documents\Guard Fun\floors.txt"
$floor = 0 
$basement = -1
$position = 0
foreach ($step in $directions.ToCharArray())
{ 
    if ($step -eq "(")
    {
        $floor = $floor + 1
    }
    else 
    {
        $floor = $floor - 1
    }
    $position = $position + 1
    if ($floor -eq $basement)
    {
        return $position
    }
}
    $floor