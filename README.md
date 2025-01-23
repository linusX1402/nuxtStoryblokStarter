
# Storyblok quick starter project

Welcome to this sample project for Nuxt!
This project serves as a quick starter for integrating Storyblok, a headless CMS, into your web development projects.

For starting, you can access to the `StoryblockBurhanTekin` folder.
In the folder you have some files like:

- `nuxt.config.js`: the configuration with Storyblok API;
- `pages/index.vue`: the initialization of the Storyblok Bridge.

# Startup and Config

clone git repository with `ssh key`

````
git clone git@github.com:linusX1402/nuxtStarter.git
````
````
npm i
````
start the project
````
npm run dev
````
## Setup Token in .env File
create a .env File in the root directory containing
````
STORYBLOK_ACCESS_TOKEN = <yourToken>
````
add this to your nuxt.config.ts
````
import dotenv from 'dotenv'

dotenv.config()

export default {
...
        accessToken: 'process.env.STORYBLOK_ACCESS_TOKEN',
        apiOptions: {
          region: '' // Set 'US" if your space is created in US region (EU default)
        }
...
}
````