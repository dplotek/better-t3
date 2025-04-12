import "@/styles/globals.css";

import type { Metadata } from "next";
import { Geist } from "next/font/google";

import { TRPCReactProvider } from "@/trpc/react";

export const metadata: Metadata = {
	title: "Better t3 app",
	description: "improved version of create-t3-app",
	icons: [{ rel: "icon", url: "/favicon.ico" }],
};

const geist = Geist({
	subsets: ["latin"],
	variable: "--font-geist-sans",
});

export default function RootLayout({
	children,
}: Readonly<{ children: React.ReactNode }>) {
	return (
		<html lang="en" className={`${geist.variable}`}>
			<body className="flex min-h-screen flex-col items-center justify-center bg-gradient-to-b from-[#090979] to-[#020024] text-white">
				<TRPCReactProvider>{children}</TRPCReactProvider>
			</body>
		</html>
	);
}
