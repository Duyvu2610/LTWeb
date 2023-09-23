/** @type {import('tailwindcss').Config} */
module.exports = {
	content: ["./src/**/*.{html,js,jsp}"],
	theme: {
		extend: {
			colors: {
				'hover': '#F4F5F6',
				'primary': '#316BFF'
			},
			backgroundImage: {
				'banner': "url('../images/airplane-background.svg')",
			}
		}
	}
}
