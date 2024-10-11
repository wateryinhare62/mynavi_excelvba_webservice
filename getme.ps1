$headers = @{
  "Authorization" = "Bearer ＜アクセストークン＞"
}
$result = Invoke-WebRequest "https://api.twitter.com/2/users/me" -Headers $headers -Method GET
$result
