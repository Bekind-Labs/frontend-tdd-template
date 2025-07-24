import { render, screen, waitFor, within } from "@testing-library/react";
import { userEvent } from "@testing-library/user-event";
import { beforeEach, expect } from "vitest";
import App from "./App.tsx";

describe("App", () => {
	test("タイトルを表示する。", () => {
		render(<App />);

		expect(screen.getByText("TODO")).toBeInTheDocument();
	});
});
