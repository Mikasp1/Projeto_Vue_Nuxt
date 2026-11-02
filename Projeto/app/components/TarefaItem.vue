<script setup>
defineProps({
  tarefa: {
    type: Object,
    required: true
  }
})

defineEmits(['remover'])
</script>

<template>
  <li>
    <label :class="{ concluida: tarefa.concluida }">
      <input type="checkbox" v-model="tarefa.concluida" />
      {{ tarefa.texto }}
    </label>
    <button @click="$emit('remover', tarefa.id)">Excluir</button>
  </li>
</template>

<style scoped>
li {
  display: flex;
  justify-content: space-between;
  align-items: center;
  gap: 12px;
  padding: 12px 0;
  border-bottom: 1px solid #eee;
}
label { display: flex; align-items: center; gap: 8px; }
.concluida { text-decoration: line-through; color: #777; }
button {
  background: #b33b3b;
  color: white;
  border: 0;
  padding: 7px 10px;
  border-radius: 5px;
  cursor: pointer;
}
</style>
