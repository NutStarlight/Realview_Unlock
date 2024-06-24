$pathCurrentVAG = 'HKCU:\SOFTWARE\SolidWorks\AllowList\Current'
$nameVGA = (Get-ItemPropertyValue $pathCurrentVAG -Name Renderer)
$path = 'SOFTWARE\SolidWorks\AllowList\Gl2Shaders\NV40'
(Get-Item HKCU:).OpenSubKey($path,$true).CreateSubKey("$nameVGA")
New-ItemProperty -Path "HKCU:\$Path\$nameVGA" -PropertyType DWORD -Value '0x32408' -Name 'Workarounds' -Force
