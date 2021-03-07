$boxes = get-content "C:\Users\ldfre\Documents\Guard Fun\day2input.txt"
$result = 0
foreach ($box in $boxes)
{
    $split = $box -split ('x')
    [int]$length = $split[0]
    [int]$width = $split[1]
    [int]$height = $split[2]

    [int]$area = (2*$length*$width) + (2*$width*$height) + (2*$height*$length)
    [int]$side1 = ($length*$width)
    [int]$side2 = ($width*$height)
    [int]$side3 = ($height*$length)
    [int]$smallestside = ($side1,$side2,$side3 | Sort-Object)[0]
    $result = $result + $area + $smallestside
}
return $result