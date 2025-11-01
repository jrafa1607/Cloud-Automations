# Cloud Scripts 🤖

> Collection of **Shell Script** codes for automating complex tasks spanning multiple AWS accounts and different regions. Designed for **efficiency** and **simplified management** of distributed resources across your Landing Zone.

---

## ✨ Key Automations
* **Resource Cleanup:** Scripts for identifying and terminating orphaned resources (e.g., EBS volumes, old snapshots).
* **Security Audits:** Tools to check configuration compliance across all defined accounts (e.g., S3 Public Access Block checks).
* **Operational Sync:** Scripts for syncing configurations or data across designated regions/accounts.

---

## 🛠️ Prerequisites (AWS)

These scripts rely on the AWS Command Line Interface (CLI) configured with **AWS SSO** credentials.

### 🚀 Setup Steps

1.  **Install AWS CLI:**
    * Ensure the latest version of the [AWS CLI is installed and operational](https://aws.amazon.com/cli/).
2.  **Configure AWS SSO:**
    * Follow the official guide to [Configure the AWS CLI for AWS SSO](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-sso.html).
3.  **Local Repository Setup:**
    * Copy all necessary scripts from this repository to your local environment.
4.  **Define Target Accounts:**
    * Copy the template file named `Accounts` to your environment.
    * Populate this file with the **AWS Profile Names** (which match your SSO configuration names) that you intend to target, like so:

#### File: `Accounts`

```text
<ProfileName-Num1>
<ProfileName-Num2>
<ProfileName-Num3>
