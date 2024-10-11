$headers = @{
  "Content-Type" = "application/json;charset=UTF-8"
  "Authorization" = "Bearer ＜アクセストークン＞"
}
$poststr = ConvertTo-Json @{
  "text" = "こんにちは！"
}
$postbytes = [System.Text.Encoding]::UTF8.GetBytes($poststr)
$result = Invoke-WebRequest "https://api.twitter.com/2/tweets" -Headers $headers -Method POST -Body $postbytes
$result
