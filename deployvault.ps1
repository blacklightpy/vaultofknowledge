$origin = pwd

# Remove all files in repo except .git/ and README.md
cd 'D:\Backup\Common Folder\02 Areas\Personal\Self Study\vaultofknowledge\gh-pages'

if (-not $?){
    Write-Error "Could not cd to target dir. Excited"
    cd $origin
    return $false
}

# remove all dirs except for .git
$dirs = Get-ChildItem -Directory
foreach ($dir in $dirs){
if ($dir.Name -eq '.git'){
        continue
    }
    $dir | Remove-Item -Recurse -Force
}

# remove all files in root except for README.md
$files = Get-ChildItem -File
foreach ($file in $files){
    if ($file.Name -eq 'README.md'){
        continue
    }
    $file | Remove-Item
}

mkdir md
# Convert Obsidian to HTML
cd "D:\Backup\Common Folder\02 Areas\Personal\Self Study\"
python -m obsidianhtml -i "D:\Backup\Common Folder\02 Areas\Personal\Self Study\Obsidian Notes\config.yaml"

if (-not $?){
    Write-Error "Python script failed. Exited."
    cd $origin
    return $false
}

# Git push

cd vaultofknowledge
echo nul > output/.nojekyll
xcopy /e output gh-pages
cd gh-pages
git add . --all
git commit -m "autopush"
git push origin gh-pages

cd $origin