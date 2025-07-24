<template>
  <img :src="imageUrl" alt="Dog Profile Image" class="circle-img" />
</template>

<script setup>
import { ref, onMounted } from 'vue';

const imageUrl = ref('');

const fetchDogImage = async () => {
  try {
    const response = await fetch('https://dog.ceo/api/breeds/image/random');
    const data = await response.json();
    imageUrl.value = data.message;
  } catch (error) {
    console.error('Failed to fetch dog image:', error);
  }
};

onMounted(() => {
  fetchDogImage();
});

defineExpose({ fetchDogImage });
</script>

<style scoped>
.circle-img {
  width: 150px;
  height: 150px;
  border-radius: 50%;
  object-fit: cover;
  border: 2px solid #ccc;
}
</style>