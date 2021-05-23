@ECHO OFF
echo Buscando Servico "ByteBanck Interface Service" no servidor SRV01
sc \\SRV01 query "ByteBank Interface Service" | find /i "state" | find /i "running"

IF %ERRORLEVEL% NEQ 0 (
    echo Ops, servico nao sendo executado no servidor!
) ELSE (
    echo Parando servico...
    sc \\ SRV stop "ByteBanck Interface Service" > NULL
    echo Iniciando servico...
    sc \\ SRV01 start "ByteBank Interface Service" > NUL
    echo Servico Reiniciado com sucesso!
)
