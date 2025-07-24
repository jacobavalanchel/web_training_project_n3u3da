<script setup>
import { ref } from 'vue';
import UserProfile from './components/UserProfile.vue';
import DogProfile from './components/DogProfile.vue';
import Slogan from './components/Slogan.vue';
import People from './components/People.vue';
import ParentGender from './components/ParentGender.vue';

const sloganRef = ref(null);
const userProfileRef = ref(null);
const dogProfileRef = ref(null);

const handleMatch = () => {
  if (sloganRef.value) {
    sloganRef.value.fetchSlogan();
  }
  if (userProfileRef.value) {
    userProfileRef.value.fetchUser();
  }
  if (dogProfileRef.value) {
    dogProfileRef.value.fetchDogImage();
  }
};
</script>

<template>
  <h1 class="top-title">Who will you have your weekend with?</h1>
  <div class="row-container">
    <UserProfile ref="userProfileRef" />
    <h1 class="row-title">love matching</h1>
    <DogProfile ref="dogProfileRef" />
  </div>
  <button @click="handleMatch" class="fetch-btn">Match!!!</button>
  
  <ParentGender />

  <Slogan ref="sloganRef" />

  <People />
</template>

<style scoped>
.top-title {
  margin-top: 30px;
  font-size: 2.2em;
  text-align: center;
  font-weight: bold;
  background-color: #f5f5f5;
  border-radius: 10px;
  padding: 10px;
  max-width: 600px;
  margin-left: auto;
  margin-right: auto;
}
.row-container {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 40px;
  margin-top: 40px;
  background-color: #f5f5f5;
  border-radius: 10px;
  padding: 20px;
}
.fetch-btn {
  display: block;
  margin: 10px auto;
  padding: 8px 16px;
  font-size: 16px;
}
.row-title {
  margin: 0;
  font-size: 2em;
  text-align: center;
}
</style>
