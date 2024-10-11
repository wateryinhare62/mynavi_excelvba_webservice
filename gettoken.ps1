$clientId = "＜クライアントID＞"
$clientSecret = "＜クライアントシークレット＞"
$bytes = [System.Text.Encoding]::UTF8.GetBytes($clientId + ":" + $clientSecret)
$basic = [Convert]::ToBase64String($bytes)
$headers = @{
  "Content-Type" = "application/x-www-form-urlencoded"
  "Authorization" = "Basic " + $basic
}
$body = @{
  code="＜認可コード＞"
  grant_type="authorization_code"
  redirect_uri="https://x.com/"
  code_verifier="challenge"
  client_id=$clientId
}
$result = Invoke-WebRequest "https://api.twitter.com/2/oauth2/token" -Headers $headers -Method POST -Body $body
$result
