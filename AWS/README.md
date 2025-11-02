### 🛠️🚀 Automations for AWS

> The automations available in this Repository use the **AWS Command Line Interface (CLI)** configured with **AWS Identity Center (SSO)** credentials.
> Configuration Steps:

1. **AWS CLI Installation:** Ensure that the latest available version of the AWS CLI is Installed and Operational in your environment: [AWS CLI](https://aws.amazon.com/cli/).
2. **Configure AWS SSO:** To set up a Valid SSO Credential, use the Official AWS Guide: [Configure the AWS CLI for AWS SSO](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-sso.html).
3. **Local Repository Setup:** You will need to copy the desired automations from this repository into a local directory in your environment.
4. **Account Definition:** Create a File named `accounts` in your local environment's directory.
5. **Update the File:** Update this File with the **Account Names** where you intend to run the automations. Example of the `accounts` File:

#### File: `accounts`

```text
<ProfileName-Num1>
<ProfileName-Num2>
<ProfileName-Num3>
<ProfileName-Num4>
```

5. **Authentication (SSO Credentials Configuration):**
    * Your CLI Installation Environment must contain the directory: `~/.aws/config`
    * Edit the Config File, with the **Account Name** used in the **accounts** file into the Profile Field.
    * Example of the Config File:
  
#### File: `~/.aws/config`

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

[profile <ProfileName-Num3>]
sso_start_url = <Your-SSO-Portal-URL>
sso_region = <Your-SSO-Region>
sso_account_id = <ID Number>
sso_role_name = <PermissionSetRoleName>
region = <default-aws-region>
output = json

[profile <ProfileName-Num4>]
sso_start_url = <Your-SSO-Portal-URL>
sso_region = <Your-SSO-Region>
sso_account_id = <ID Number>
sso_role_name = <PermissionSetRoleName>
region = <default-aws-region>
output = json
```

#### Command to Execute Login

> After concluding the configuration of the **accounts** and **config** files, you must validate the setup by performing an AWS Login via CLI.
> To do this, simply run the command: `aws sso login`. This command will open your browser for Authentication and store a Temporary Credential in Cache.
> This Credential will be used to execute the automations.

```base
aws sso login --profile <ProfileName-Num1>
```
