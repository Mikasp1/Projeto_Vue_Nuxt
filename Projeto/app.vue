<template>
  <div>
    <header>
      <h1>Lista de tarefas</h1>
      <nav>
        <NuxtLink to="/">Início</NuxtLink>
        <NuxtLink to="/sobre">Sobre o projeto</NuxtLink>
      </nav>
    </header>

    <main>
      <NuxtPage />
    </main>
  </div>
</template>

<style>
* { box-sizing: border-box; }
body {
  margin: 0;
  font-family: Arial, sans-serif;
  background: #f3f5f7;
  color: #222;
}
header {
  background: #176b5b;
  color: white;
  padding: 20px;
  text-align: center;
}
header h1 { margin: 0 0 12px; }
nav { display: flex; justify-content: center; gap: 20px; }
nav a { color: white; text-decoration: none; }
nav a.router-link-active { font-weight: bold; text-decoration: underline; }
main { max-width: 700px; margin: 30px auto; padding: 0 16px; }
</style>
