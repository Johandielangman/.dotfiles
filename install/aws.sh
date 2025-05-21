#!/usr/bin/env bash

set -e

if ! command -v aws &> /dev/null; then
    TMPDIR=$(mktemp -d)
    cd "$TMPDIR"

    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install

    cd -
    rm -rf "$TMPDIR"
    aws --version

    aws_config_content="[profile my-dev-profile]
sso_session = my-sso
sso_account_id = 123456789011
sso_role_name = readOnly
region = us-west-2
output = json

[sso-session my-sso]
sso_region = us-east-1
sso_start_url = https://my-sso-portal.awsapps.com/start
sso_registration_scopes = sso:account:access"

    echo "$aws_config_content" >> ~/.aws/config
fi
