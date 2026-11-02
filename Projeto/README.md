# Projeto Vue + Nuxt

## O que tem no projeto

- Uma pagina inicial com lista de tarefas.
- Um componente para mostrar cada tarefa.
- Reatividade com `ref` e `computed`.
- Comunicação entre componente e pagina com `props` e `emits`.

## Como executar no Windows

1. Instale o Node.js (versão 20.19 ou superior): https://nodejs.org/
2. Extraia esta pasta.
3. Abra a pasta no Visual Studio Code.
4. Execute `Iniciador.bat`
5. Abra o endereço mostrado no terminal, normalmente http://localhost:3000.

A primeira instalação precisa de internet. Depois, as dependências ficam salvas na pasta `node_modules`.

## Estrutura

Projeto_Vue_Nuxt_Simples/
├── app/
│   ├── components/
│   │   └── TarefaItem.vue
│   └── pages/
│       ├── index.vue
│       └── sobre.vue
├── app.vue
├── nuxt.config.ts
├── package.json
├── INICIAR_NO_WINDOWS.bat
└── README.md

- `ref`: cria dados reativos.
- `computed`: calcula automaticamente quantas tarefas estão pendentes.
- `v-model`: conecta o campo de texto e a caixa de conclusão aos dados.
- `props`: envia os dados da tarefa para o componente.
- `emits`: envia o evento de exclusão do componente para a pagina.
