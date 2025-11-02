### 🛠️🚀 Automações para AWS

> As automações disponíveis nesse Repositório utilizam o AWS CLI **(AWS Command Line Interface)** configurado juntamente com Credenciais do **AWS SSO (AWS Identity Center)**.
> Etapas de Configuração (Setup):

1.  **Instalação do AWS CLI:**
    * Garanta que a Última versão disponível do AWS CLI esteja Instalada e Funcionando em seu Ambiente: [AWS CLI](https://aws.amazon.com/cli/).
2.  **Configure o AWS SSO:**
    * Para configurar uma Credencial Válida do SSO, utilize o Guia Oficial da AWS: [Configure the AWS CLI for AWS SSO](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-sso.html).
3.  **Configure um Repositório Local:**
    * Será necessário copiar todas as automações desejadas deste repositório para um diretório local em seu ambiente.
4.  **Definição das Contas:**
    * Faça uma cópia do Arquivo chamado `contas` para o diretório local de seu ambiente.
    * Atualize este Arquivo com o **Nome das Contas** que você pretende executar as automações. Este nome deverá ser configurado posteriormente no Arquivo Credentials do AWS CLI.
  
    * Exemplo de Preenchimento do Arquivo Contas:

#### Arquivo: `Contas`

```text
<ProfileName-Num1>
<ProfileName-Num2>
<ProfileName-Num3>
<ProfileName-Num4>
<ProfileName-Num5>
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
