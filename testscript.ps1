# Set the directory path and file name
$directoryPath = "C:\MyNewDirectory"
$fileName = "sample.txt"

 

# Create the new directory if it doesn't exist
if (!(Test-Path -Path $directoryPath -PathType Container)) {
    New-Item -ItemType Directory -Path $directoryPath | Out-Null
    Write-Host "New directory created: $directoryPath"
}

 

# Set the content of the text file
$fileContent = @"
This is a sample text file.
It contains some example content.
Feel free to modify it as needed.
"@

 

# Create the text file in the new directory
$fileFullPath = Join-Path -Path $directoryPath -ChildPath $fileName
$fileContent | Out-File -FilePath $fileFullPath

 

Write-Host "Text file created: $fileFullPath"
Write-Host "Sample content added to the file."