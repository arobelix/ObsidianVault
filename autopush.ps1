$myStatus = $(git status --porcelain | Out-String).Trim()
if (!($myStatus.Length -eq 0)) 
{ 
git add -A; 
git commit -m "Changes for $(Get-Date -Format 'yyyy-MM-dd')\";
git push 
}