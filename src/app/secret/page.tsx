import { auth } from "@/server/auth"
import { headers } from "next/headers"

export default async function Secret() {
  const session = await auth.api.getSession({
    headers: await headers()
  })

  return (
    <div>
      <h1>Secret</h1>
      <p>{session?.user?.email}</p>
    </div>
  )
}
