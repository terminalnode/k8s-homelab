#!/usr/bin/env sh
username="$1"
password="$2"
email="$3"

echo "Creating secret with username=$username, password=$password and email=$email"
kubectl create secret generic freshrss-admin-secret \
  --dry-run=client -o yaml \
  --from-literal "ADMIN_USERNAME=$username" \
  --from-literal "ADMIN_PASSWORD=$password" \
  --from-literal "ADMIN_EMAIL=$email" \
  > admin-secret.yml
echo 'Run `kubectl apply -f admin-secret.yml` to apply the secret!'
