export default defineNuxtConfig({
  css: ['@/assets/css/roboto.css'],
  modules: [
    [
      '@storyblok/nuxt',
      {
        //ToDo: Replace with your own token
        accessToken: '<yourToken>',
        apiOptions: {
          region: '' // Set 'US" if your space is created in US region (EU default)
        }
      },
    ],
    '@nuxtjs/tailwindcss',
  ]
})
