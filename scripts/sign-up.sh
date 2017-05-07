
aws cognito-idp sign-up \
  --region us-east-1 \
  --client-id YOUR_COGNITO_APP_CLIENT_ID \
  --username admin@example.com \
  --password Passw0rd! \
  --user-attributes Name=email,Value=admin@example.com
