$Output = Join-Path $PSScriptRoot 'dist'
if (Test-Path -LiteralPath $Output) { Remove-Item -LiteralPath $Output -Recurse -Force }
New-Item -ItemType Directory -Path (Join-Path $Output 'server') -Force | Out-Null
New-Item -ItemType Directory -Path (Join-Path $Output 'client') -Force | Out-Null
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'index.html'), (Join-Path $PSScriptRoot 'style.css'), (Join-Path $PSScriptRoot 'game3d.js'), (Join-Path $PSScriptRoot 'three.min.js'), (Join-Path $PSScriptRoot 'GLTFLoader.legacy.js'), (Join-Path $PSScriptRoot 'SkeletonUtils.js') -Destination (Join-Path $Output 'client')
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'assets') -Destination (Join-Path $Output 'client') -Recurse
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'worker.js') -Destination (Join-Path $Output 'server/index.js')
