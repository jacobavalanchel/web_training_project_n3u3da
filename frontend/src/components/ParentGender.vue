<template>
  <div class="gender-row">
    <span class="gender-label">Select your parent:</span>
    <label>
      <input type="radio" name="parent" value="mother" v-model="selectedParent"> Mother
    </label>
    <label>
      <input type="radio" name="parent" value="father" v-model="selectedParent"> Father
    </label>
    <button @click="showGender">Show Gender</button>
    <div v-if="gender">{{ gender }}</div>
  </div>
</template>

<script setup>
import { ref } from 'vue';

const selectedParent = ref('mother');
const gender = ref('');

const showGender = async () => {
  try {
    const response = await fetch(`http://localhost:3000/parent-gender?parent=${selectedParent.value}`);
    const data = await response.json();
    gender.value = data.gender;
  } catch (error) {
    console.error('Failed to fetch gender:', error);
  }
};
</script>

<style scoped>
.gender-row {
  margin-top: 30px;
  text-align: center;
  background-color: #f5f5f5;
  border-radius: 10px;
  padding: 20px;
  max-width: 400px;
  margin-left: auto;
  margin-right: auto;
}
.gender-label {
  font-size: 1.1em;
  margin-right: 10px;
}
</style>