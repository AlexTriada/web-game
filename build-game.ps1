$Output = Join-Path $PSScriptRoot 'dist'
if (Test-Path -LiteralPath $Output) { Remove-Item -LiteralPath $Output -Recurse -Force }
New-Item -ItemType Directory -Path (Join-Path $Output 'server') -Force | Out-Null
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'index.html'), (Join-Path $PSScriptRoot 'style.css'), (Join-Path $PSScriptRoot 'game3d.js'), (Join-Path $PSScriptRoot 'three.min.js'), (Join-Path $PSScriptRoot 'GLTFLoader.legacy.js'), (Join-Path $PSScriptRoot 'SkeletonUtils.js') -Destination $Output
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'assets') -Destination $Output -Recurse
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'worker.js') -Destination (Join-Path $Output 'server/index.js')
