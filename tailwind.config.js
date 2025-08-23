/** @type {import('tailwindcss').Config} */
export default {
  content: ["./src/**/*.{astro.js,ts,jsx,tsx}"],
  theme: {
    extend: {
      fontFamily:{
        sans:["Inter", "sans-seif"],
        trippy:["Space Grotesk", "sans-serif"]
      },
      colors:{
        cosmic:"#6d28d9",
        void:"#0f0f0f",
        aura:"#14b8a6",
      }
    },
  },
  plugins: [],
}

