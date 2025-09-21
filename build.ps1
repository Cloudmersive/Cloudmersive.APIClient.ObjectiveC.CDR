Remove-Item –path ./client –recurse

Invoke-WebRequest -Uri 'https://api.cloudmersive.com/cdr/docs/v1/swagger' -OutFile '.\cdr-api-swagger.json'
(Get-Content .\cdr-api-swagger.json).replace('localhost', "api.cloudmersive.com") | Set-Content .\cdr-api-swagger.json
(Get-Content .\cdr-api-swagger.json).replace('"http"', '"https"') | Set-Content .\cdr-api-swagger.json

& java -jar swagger-codegen-cli.jar generate -i .\cdr-api-swagger.json -l objc -o client -c packageconfig.json
(Get-Content ./client/CloudmersiveCDRApiClient.podspec).replace('CloudmersiveCDRApiClient/**/*.{m,h}', "client/CloudmersiveCDRApiClient/**/*.{m,h}") | Set-Content ./client/CloudmersiveCDRApiClient.podspec
(Get-Content ./client/CloudmersiveCDRApiClient.podspec).replace('CloudmersiveCDRApiClient/**/*.h', "client/CloudmersiveCDRApiClient/**/*.h") | Set-Content ./client/CloudmersiveCDRApiClient.podspec