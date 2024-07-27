# video: https://youtu.be/xDZC5iYg_uU?si=M-uIuK_jWHgRRphv

Write-Host (Get-Date -Format "dddd, dd/MM/yyyy")
Write-Host '>> Xin chào Linh <<'
Write-Host ''


# Themes
# Install: scoop install oh-my-posh
 #oh-my-posh init pwsh --config 'C:\Users\linh\scoop\apps\oh-my-posh\current\themes\multiverse-neon.omp.json' | Invoke-Expression
oh-my-posh init pwsh --config 'C:\Users\linh\scoop\apps\oh-my-posh\current\themes\multiverse-neon.omp.json' | Invoke-Expression 
# Icons
# Install: Install-Module -Name Terminal-Icons -Scope CurrentUser -Force
Import-Module Terminal-Icons

# PSFzf
# Install: Install-Module -Name PSFzf -Scope CurrentUser -Force
Import-Module PSFzf

## Scoop
# Neofetch
# neofetch

# Fzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReserveHistory 'Ctrl+q'


# ALias
Set-Alias lc get-location

# Utilities
function which ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue | 
		Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}