'use client'
import { authClient } from "@/lib/auth-client";
export default function SignOut() {
  const signOut = async () => {
    await authClient.signOut()
  }
  return (
    <div>
      <button onClick={signOut}>
        Sign Out
      </button>
    </div>
  )
}
