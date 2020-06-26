## What do it do ?

* Helps in downloading stripping mp3 from youtube / vimeo links
* Doesnt need any authorization to download any song
* Dependent on youtube-dl which is heavily dependent on ffmpeg framework

## How to you use ?


### install Pre-req
```bash
brew install ffmpeg
brew install youtube-dl
```


### ( In Windows ) 
https://www.osradar.com/how-to-install-chocolatey-in-windows-10/
```
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) 
choco upgrade all -y
choco install ffmpeg
choco install youtube-dl
```
