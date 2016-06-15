$paths = 
@(
    C:\Users\softekadmin\AppData\Local\Apps\Panther Client
    C:\Users\softekadmin\AppData\Local\Temp
    C:\Users\softekadmin\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Softek Solutions
    C:\Users\softekadmin\AppData\Roaming\Microsoft\Installer\{A1D32FA9-E30A-4FEF-B56E-840100D98FD0}
)

Foreach ($path in $paths)
{
    if (!(Test-Path $path)) 
    { continue }
    $files = Get-ChildItem $path | Where-Object {-not $_.PsIsContainer}
    if ($files.Count -gt 0)
    {
        $filesToDelete = $files | Select-Object
        $filesToDelete | select FullName, Length, LastWriteTime | Add-Content "deleted_items.txt"
        $filesToDelete | Remove-Item -Force -ErrorAction SilentlyContinue
    }
}

REMOVE-ITEM -PATH HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{A1D32FA9-E30A-4FEF-B56E-840100D98FD0} 

REMOVE-ITEMPROPERTY -PATH HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders -Name 'C:\Users\%username%\AppData\Local\Apps\Panther Client\'
REMOVE-ITEMPROPERTY -PATH HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders -Name 'C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Softek Solutions\Panther Client\'

REMOVE-ITEM -PATH HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\%SID%\Components\0351FC5A551BC16439D6913DAE6FF4E5
REMOVE-ITEM -PATH HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\%SID%\Components\0B188CFA84506C549852DCE32EFE65DE
REMOVE-ITEM -PATH HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\%SID%\Components\33D09C165AAB33A46892B98C4504036D
REMOVE-ITEM -PATH HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\%SID%\Components\33E91DA39D1355148891389344AA9A57
REMOVE-ITEM -PATH HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\%SID%\Components\4142FA497107B1849BC455BB2A646648
REMOVE-ITEM -PATH HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\%SID%\Components\44549433ACCC0014486789268526881D
REMOVE-ITEM -PATH HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\%SID%\Components\44E6799CBF820674A8ECD5929C3A88EA

REMOVE-ITEM -PATH HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\%SID%\Components\4AA88C724775B334F82BF2F008200BE0
REMOVE-ITEM -PATH HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\%SID%\Components\52B60E8C00E5DE64CABB43CA3991B83A
REMOVE-ITEM -PATH HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\%SID%\Components\5E0E0B86D78B20A4BBAF31E63E4C93D2
REMOVE-ITEM -PATH HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\%SID%\Components\5FBD1C6930725E947A7354F1AEFD6308
REMOVE-ITEM -PATH HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\%SID%\Components\7C46FC61AFC0CCD48A7C8CFDA31201A5
REMOVE-ITEM -PATH HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\%SID%\Components\9B4C396AFFBBCA54D86B81AA6AE5F780
REMOVE-ITEM -PATH HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\%SID%\Components\C1BB3611C5509154D88BDB4C55052305
REMOVE-ITEM -PATH HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\%SID%\Components\C6DE5101D6BAF124D8FB43BB873E18E3
REMOVE-ITEM -PATH HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\%SID%\Components\D79856A5A651B46458C77935490E2F31
REMOVE-ITEM -PATH HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\%SID%\Components\DB4F3B0ED33559840A3209D6C40BBCC5

REMOVE-ITEM -PATH HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\%SID%\Products\9AF23D1AA03EFEF45BE64810009DF80D