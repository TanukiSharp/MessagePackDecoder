rmdir /s /q .\_temp_
rmdir /s /q .\docs

mkdir .\_temp_
mkdir .\docs

dotnet publish .\MessagePackDecoder\MessagePackDecoder.csproj -c Release -o .\_temp_
xcopy /y /e .\_temp_\wwwroot\ .\docs

rmdir /s /q .\_temp_
