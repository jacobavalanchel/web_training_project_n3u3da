<template>
  <div class="people-container">
    <h2>people Table</h2>
    <form @submit.prevent="addPerson">
      <input type="text" v-model="newPersonName" placeholder="Enter name" required>
      <button type="submit">Add</button>
    </form>
    <ul>
      <li v-for="person in people" :key="person.id">
        {{ person.name }} ({{ person.country || 'Unknown' }}){{ person.motto ? ' - ' + person.motto : '' }}{{ person.id ? ` (ID: ${person.id})` : '' }}
      </li>
    </ul>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue';

const people = ref([]);
const newPersonName = ref('');

const fetchPeople = async () => {
  try {
    const response = await fetch('http://localhost:3000/people');
    const data = await response.json();
    people.value = data.people || [];
  } catch (error) {
    console.error('Failed to fetch people:', error);
  }
};

const addPerson = async () => {
  if (!newPersonName.value.trim()) return;
  try {
    await fetch('http://localhost:3000/people', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ name: newPersonName.value }),
    });
    newPersonName.value = '';
    fetchPeople();
  } catch (error) {
    console.error('Failed to add person:', error);
  }
};

onMounted(() => {
  fetchPeople();
});
</script>

<style scoped>
.people-container {
  max-width: 400px;
  margin: 40px auto;
  padding: 20px;
  background: #f5f5f5;
  border-radius: 10px;
}
form {
  margin-bottom: 20px;
}
input {
  padding: 6px;
  width: 70%;
}
button {
  padding: 6px 12px;
}
</style>