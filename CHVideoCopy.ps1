## Copy Clone Hero Songs from generic folder to each song
## Use at your own risk. Song folder and video folder must be identically named

#Path to Video Files
$sourceVideosPath = "C:\Users\cigda\Documents\Clone Hero\Custom\Video Backgrounds\"
#Path to Clone Hero Songs folder
$destinationVideosPath = "C:\Users\cigda\Documents\Clone Hero\Songs\"

$videoFiles = $sourceVideosPath + "*.*"

# Pull path for each video.webm file in path shown in $sourceVideosPath
$files = Get-ChildItem -Recurse $videoFiles | Select-Object -ExpandProperty DirectoryName

# Extract title,song from each info.dat and write to file in $outputFile
foreach ($f in $files){
    $source = $f + "\*.*"
    $destination = $f.replace($sourceVideosPath,$destinationVideosPath)
    Copy-Item $source -Destination $destination -verbose
}
