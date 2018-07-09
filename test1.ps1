Write-Host "** ComputerName:" $args[0]

Write-Host "** Default Region:" $args[1]

## コンピュータ名の変更(強制)
gci . 
Rename-Computer -NewName $args[0] -Force

## AWSデフォルトリージョンの設定

Set-DefaultAWSRegion $args[1]



## タイムゾーンを変更

tzutil.exe /s "Tokyo Standard Time"

    

## フォルダオプション(拡張子を表示する)

Set-ItemProperty "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -name "HideFileExt" -Value 0

   

## フォルダオプション(隠しファイル、隠しフォルダ、隠しドライブを表示する)

Set-ItemProperty "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -name "Hidden" -Value 1

   

## Windows ファイアウォールの無効化

Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False

