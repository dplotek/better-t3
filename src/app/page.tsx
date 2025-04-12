import { HydrateClient } from "@/trpc/server";
import { auth } from "@/server/auth";
import { headers } from "next/headers";
import Link from "next/link";
import SignOut from "./_components/sign-out";

export default async function Home() {
	const session = await auth.api.getSession({
		headers: await headers(),
	})

	const isSignedIn = !!session?.user;

	return (
		<HydrateClient>
			<main className="text-center">
				<div className="mb-4">
					<h1 className="text-2xl font-bold">
						{isSignedIn ? (
							<p>You are signed in, click the link below to see the secret page</p>
						) : (
							<p>Hello! to see the secret page, you need to sign in</p>
						)}
					</h1>
				</div>
				{isSignedIn ? (
					<div>
						<Link href="/secret">Secret</Link>
						<SignOut />
					</div>
				) : (
					<Link href="/sign-in">Sign In</Link>
				)}
			</main>
		</HydrateClient>
	);
}
