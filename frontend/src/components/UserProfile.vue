<template>
  <div class="profile-card">
    <img :src="imageUrl" alt="User Profile Image" class="circle-img" />
    <h2 class="name">{{ name }}</h2>
    <p class="email">{{ email }}</p>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue';

const imageUrl = ref('');
const name = ref('');
const email = ref('');

const fetchUser = async () => {
  try {
    const response = await fetch('https://randomuser.me/api/');
    const data = await response.json();
    const user = data.results[0];
    imageUrl.value = user.picture.large;
    name.value = `${user.name.first} ${user.name.last}`;
    email.value = user.email;
  } catch (error) {
    console.error('Failed to fetch user:', error);
  }
};

onMounted(() => {
  fetchUser();
});

defineExpose({ fetchUser });
</script>

<style scoped>
.profile-card {
  text-align: center;
}
.circle-img {
  width: 150px;
  height: 150px;
  border-radius: 50%;
  object-fit: cover;
  border: 2px solid #ccc;
}
.name {
    font-size: 1.5rem;
    font-weight: bold;
    margin-bottom: 0.5rem;
}
.email {
    color: #0073b1;
    font-size: 1rem;
    margin-bottom: 1.2rem;
    display: block;
}
</style>