# Install Chocolatey if not installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Set-ExecutionPolicy Bypass -Scope Process -Force; 
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; 
    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

choco install rust -y
choco install mingw -y
choco install jdk8 -y
choco install ruby -y
choco install lua -y
choco install golang -y
choco install nodejs -y
choco install php -y
choco install strawberryperl -y
choco install scala -y
choco install kotlinc -y

Write-Output "Installation complete. Please ensure all compilers and interpreters are in your PATH."

