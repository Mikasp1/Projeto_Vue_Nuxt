<script setup>
import { ref, computed } from 'vue'

const novaTarefa = ref('')
const tarefas = ref([
  { id: 1, texto: 'Primeira tarefa', concluida: false },
  { id: 2, texto: 'Segunda tarefa', concluida: true }
])

const pendentes = computed(() =>
  tarefas.value.filter(tarefa => !tarefa.concluida).length
)

function adicionarTarefa() {
  const texto = novaTarefa.value.trim()
  if (!texto) return

  tarefas.value.push({
    id: Date.now(),
    texto,
    concluida: false
  })
  novaTarefa.value = ''
}

function removerTarefa(id) {
  tarefas.value = tarefas.value.filter(tarefa => tarefa.id !== id)
}
</script>

<template>
  <section class="painel">
    <h2>Minhas tarefas</h2>
    <p>Você tem {{ pendentes }} tarefa(s) pendente(s).</p>

    <form @submit.prevent="adicionarTarefa">
      <input v-model="novaTarefa" placeholder="Digite uma tarefa" />
      <button type="submit">Adicionar</button>
    </form>

    <ul>
      <TarefaItem
        v-for="tarefa in tarefas"
        :key="tarefa.id"
        :tarefa="tarefa"
        @remover="removerTarefa"
      />
    </ul>
  </section>
</template>

<style scoped>
.painel {
  background: white;
  padding: 24px;
  border-radius: 10px;
  box-shadow: 0 2px 8px #00000012;
}
form { display: flex; gap: 8px; margin: 20px 0; }
input {
  flex: 1;
  min-width: 0;
  padding: 11px;
  border: 1px solid #bbb;
  border-radius: 5px;
}
button {
  padding: 10px 14px;
  border: 0;
  border-radius: 5px;
  background: #176b5b;
  color: white;
  cursor: pointer;
}
ul { list-style: none; padding: 0; }
</style>
