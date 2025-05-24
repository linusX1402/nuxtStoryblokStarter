<template>
  <header class="flex justify-between items-center p-4 bg-gray-800 text-white px-10">
    <h1 class="text-2xl font-bold">My Blog</h1>
    <nav class="w-1/3">
      <ul class="flex justify-between items-center w-1/3">
        <li>
          <nuxt-link to="/" class="hover:text-[#50b0ae]">Home</nuxt-link>
        </li>
        <li>
          <nuxt-link to="/about" class="hover:text-[#50b0ae]">About</nuxt-link>
        </li>
      </ul>
    </nav>
  </header>
</template>
<script setup>
</script>