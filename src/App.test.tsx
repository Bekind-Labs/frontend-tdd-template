import { render, screen } from "@testing-library/react";
import App from "./App.tsx";

describe("App", () => {
	test("タイトルを表示する。", () => {
		render(<App />);

		expect(screen.getByText("TODO")).toBeInTheDocument();
	});
});
