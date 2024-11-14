# Terraform AWS RDS Infrastructure 

# EN-US 🇬🇧

This project uses Terraform to create a 

- Terraform version= ">=1.6.0"
- AWS Provider version= "~>5.0"

## Architecture

The architecture consists of:

- A 

![Infrastructure](assets/vpc-infrastructure.png)

![Infrastructure-Console-Example](assets/infra_console_example.png)

## Usage

To use this project, follow these steps:

1. Clone the repository.
2. Create a `terraform.tfvars` file with your desired configuration.
3. Configure your GitHub AWS credentials: This project utilizes a GitHub Actions workflow that automates the Terraform lifecycle, including init, fmt, validate, apply, and destroy.

```env:
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
    AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
    TF_VAR_aws_key_pub: ${{ secrets.TF_VAR_aws_key_pub }}
```
Note: To disable the automatic destruction of your cloud resources, comment out the following line in the workflow file `1-push-deploy-infra.yml`:

```
terraform destroy -auto-approve
```

4. Push your branch: Once you've configured everything, push your branch and monitor the process through GitHub Actions.

## Configuration

You can customize the configuration by modifying the `terraform.tfvars` file. Here are the available variables:

```hcl

```

## Outputs

The following outputs will be displayed after running `terraform apply`:

- 

## References

- [Terraform AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- 

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.


# PT-BR 🇧🇷

Este projeto utiliza Terraform para criar uma infraestrutura de 

- Terraform version= ">=1.6.0"
- AWS Provider version= "~>5.0"

## Arquitetura

A arquitetura consiste em:

- 

![Infrastructure](assets/vpc-infrastructure.png)

![Infrastructure-Console-Example](assets/infra_console_example.png)

## Uso

Para utilizar este projeto, siga os seguintes passos:

1. Clone o repositório.
2. Crie um arquivo `terraform.tfvars` com a configuração desejada.
3. Configure suas credenciais AWS no GitHub: Este projeto utiliza um fluxo de trabalho do GitHub Actions que automatiza o ciclo de vida do Terraform, incluindo `init`, `fmt`, `validate`, `apply` e `destroy`.

```env:
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
    AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
    TF_VAR_aws_key_pub: ${{ secrets.TF_VAR_aws_key_pub }}
```

[//]: # (CRIAR METODO VIA DECLARAÇÃO DE LINK NO MODULO)


Observação: Para desativar a destruição automática dos seus recursos na nuvem, comente a seguinte linha no arquivo de fluxo de trabalho `1-push-deploy-infra.yml`:


```
terraform destroy -auto-approve
```

4. Envie sua branch: Depois de configurar tudo, envie sua branch e monitore o processo através do GitHub Actions.
Configuração
Você pode personalizar a configuração modificando o arquivo terraform.tfvars. Aqui estão as variáveis disponíveis:

```hcl
```

## Saídas

As seguintes saídas serão exibidas após executar `terraform apply`:

- 

## Referências

- [Terraform AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

## Contribuindo

Pull requests são bem-vindos. Para mudanças significativas, por favor, abra uma issue primeiro para discutir o que você gostaria de alterar.

Por favor, certifique-se de atualizar os testes conforme necessário.
