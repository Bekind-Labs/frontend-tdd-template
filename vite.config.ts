import react from "@vitejs/plugin-react";
import { defineConfig } from "vitest/config";

const BASE_URL = process.env.BASE_URL || "http://localhost:8080/";

// https://vite.dev/config/
export default defineConfig({
	plugins: [react()],
	test: {
		globals: true,
		environment: "jsdom",
		setupFiles: ["./vitest.setup.ts"],
	},
	server: {
		proxy: {
			"/api/todos": {
				target: BASE_URL,
				changeOrigin: true,
			},
		},
	},
});
