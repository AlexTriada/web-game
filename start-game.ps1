$RuntimePython = 'C:\Users\Александр\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe'
Start-Process -FilePath $RuntimePython -ArgumentList '-m', 'http.server', '8080' -WorkingDirectory $PSScriptRoot -WindowStyle Hidden
Write-Host 'Игра запущена: http://localhost:8080'
