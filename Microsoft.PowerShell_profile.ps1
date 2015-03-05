. C:\Users\alexander.nyquist\Posh-HG\profile.example.ps1

Set-Alias subl 'C:\Program Files\Sublime Text 2\sublime_text.exe'

Function FindRec($filepattern, $pattern) {
	Get-ChildItem -Recurse -Include $filepattern | Select-String -Pattern $pattern | Group path | Select Name, Count | Sort Count
}

Function Desktop() {
	Set-Location -Path C:\Users\alexander.nyquist\Desktop
}

Set-Alias d Desktop

Function Goto($project) {
	If (Test-Path C:\Development\Projects\$project) {
		Set-Location -Path C:\Development\Projects\$project
	} ElseIf (Test-Path C:\wamp\www\$project) {
		Set-Location -Path C:\wamp\www\$project
	}
}

Set-Alias g Goto

Function Explore() {
	$exe = "explorer.exe"
	&$exe .
}

Set-Alias e Explore