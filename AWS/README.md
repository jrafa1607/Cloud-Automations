## 🛠️ Scripts for AWS

These scripts run using the AWS Command Line Interface (CLI) configured with **AWS SSO** credentials.

### 🚀 Setup Steps

1.  **Install AWS CLI:**
    * Ensure the latest version of the [AWS CLI is installed and operational](https://aws.amazon.com/cli/).
2.  **Configure AWS SSO:**
    * Follow the official guide to [Configure the AWS CLI for AWS SSO](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-sso.html).
3.  **Local Repository Setup:**
    * Copy all necessary scripts from this repository to your local environment.
4.  **Define Target Accounts:**
    * Copy the template file named `contas` to your environment.
    * Populate this file with the **AWS Profile Names** (which match your SSO configuration names) that you intend to target, like so:

#### File: `Contas`

```text
<ProfileName-Num1>
<ProfileName-Num2>
<ProfileName-Num3>
```

5.  **Authenticate ( Configure Credentials via SSO ):**
    * Ensure your local ~/.aws/config file contains the corresponding SSO profile configuration for each account listed in the Accounts file
  
#### File: `~/.aws/config` Structure Example

```text
[profile <ProfileName-Num1>]
sso_start_url = <Your-SSO-Portal-URL>
sso_region = <Your-SSO-Region>
sso_account_id = <ID Number>
sso_role_name = <PermissionSetRoleName>
region = <default-aws-region>
output = json

[profile <ProfileName-Num2>]
sso_start_url = <Your-SSO-Portal-URL>
sso_region = <Your-SSO-Region>
sso_account_id = <ID Number>
sso_role_name = <PermissionSetRoleName>
region = <default-aws-region>
output = json
```

#### Command to Login

```base
aws sso login --profile <ProfileName-Num1>
```

* This command opens your browser for authentication and caches the necessary credentials for subsequent script runs.
