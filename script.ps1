1..1024 | ForEach-Object { $sock = New-Object System.Net.Sockets.TcpClient; $async =
$sock.BeginConnect('localhost', $_, $null, $null); $wait = $async.AsyncWaitHandle.WaitOne(100, $false);
if($sock.Connected) { $_ } ; $sock.Close() }
