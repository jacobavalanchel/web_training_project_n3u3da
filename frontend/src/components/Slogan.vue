<template>
  <div class="slogan-container">
    <h2>Daily Motivation</h2>
    <div id="sloganResult">{{ slogan }}</div>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue';

const slogan = ref('Click Match to get your inspirational slogan!');

const fetchSlogan = async () => {
  try {
    const response = await fetch('http://localhost:3000/slogans');
    const data = await response.json();
    slogan.value = data.slogan;
  } catch (error) {
    console.error('Slogan fetch failed:', error);
    slogan.value = 'Unable to load slogan. Make sure the backend server is running.';
  }
};

// Expose the fetchSlogan function so it can be called from the parent
defineExpose({ fetchSlogan });
</script>

<style scoped>
.slogan-container {
  text-align: center;
  margin-top: 30px;
  padding: 20px;
  background-color: #f5f5f5;
  border-radius: 10px;
  max-width: 600px;
  margin-left: auto;
  margin-right: auto;
}
#sloganResult {
  font-size: 20px;
  font-style: italic;
  color: #333;
  margin-top: 10px;
}
</style>