### 🛠️🚀 Automações para AWS

> As automações disponíveis nesse Repositório utilizam o AWS CLI **(AWS Command Line Interface)** configurado juntamente com Credenciais do **AWS SSO (AWS Identity Center)**.
> Etapas de Configuração:

1.  **Instalação do AWS CLI:**
    * Garanta que a Última versão disponível do AWS CLI esteja Instalada e Funcionando em seu Ambiente: [AWS CLI](https://aws.amazon.com/cli/).
2.  **Configure o AWS SSO:**
    * Para configurar uma Credencial Válida do SSO, utilize o Guia Oficial da AWS: [Configure the AWS CLI for AWS SSO](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-sso.html).
3.  **Configure um Repositório Local:**
    * Será necessário copiar todas as automações desejadas deste repositório para um diretório local em seu ambiente.
4.  **Definição das Contas:**
    * Crie um Arquivo chamado `contas` no diretório local de seu ambiente.
    * Atualize este Arquivo com o **Nome das Contas** que você pretende executar as automações.
    * Exemplo de Preenchimento do Arquivo Contas:

#### Arquivo: `Contas`

```text
<ProfileName-Num1>
<ProfileName-Num2>
<ProfileName-Num3>
<ProfileName-Num4>
<ProfileName-Num5>
```

5.  **Autenticação ( Configuração do Credentials do SSO ):**
    * Seu Ambiente de Instalação do CLI deve conter o diretório: ~/.aws/config
    * Edite o Arquivo `Config` informando no Campo Profile o **Nome das Contas** utilizado no Arquivo **Contas**.
    * Exemplo de Preenchimento do Arquivo Config:
  
#### Arquivo: `~/.aws/config`

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

#### Comando para Executar Login

> Após concluir a configuração dos Arquivos: **Contas e Config**, você deve validar o Setup executando um Login na AWS via CLI.
> Para isso Basta executar o comando: aws sso login`. Este comando abrirá seu navegador para Autenticação e armazenará em Cache uma Credencial Temporária.
> Esta Credencial será utilizada para executar as automações.

```base
aws sso login --profile <ProfileName-Num1>
```
