$word = New-Object -ComObject Word.Application
$word.Visible = $false
$doc = $word.Documents.Open("C:\Users\Rustam\Desktop\R.Abduvakhobov.docx")
$text = $doc.Content.Text
$text | Out-File -FilePath "C:\Users\Rustam\Documents\Projects\choyxona_uz\.agent\docx_content.txt" -Encoding UTF8
$doc.Close()
$word.Quit()
[System.Runtime.Interopservices.Marshal]::ReleaseComObject($word) | Out-Null
Write-Output "Done - file saved"
