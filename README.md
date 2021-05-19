# Dispatch Order

Esse serviço gerencia a comunicação da raspberry com a máquina de interação do usuário (Cardápio), criando um cronjob para verificar, a cada 5 segundos, se um pedido fora realizado. Caso um pedido tenha sido feito, o script de comando da máquina é executado e o pedido começará a ser produzido.

## Configuração

Para iniciar/configurar este cronjob em alguma sistema Linux, basta utilizar o comando:

```bash
$ bash start_cronjob.sh
```

O script será deletado após isso por padrão, para evitar que se configure dois ou mais cronjobs simultaneos desnecessariamente;
Caso necessite, no entanto, há um script backup (basta remover o ".bak" do final deste arquivo).
