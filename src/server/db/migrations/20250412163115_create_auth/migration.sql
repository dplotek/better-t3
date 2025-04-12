-- CreateTable
CREATE TABLE "better_t3_user" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "emailVerified" BOOLEAN NOT NULL,
    "image" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "better_t3_user_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "better_t3_session" (
    "id" TEXT NOT NULL,
    "expiresAt" TIMESTAMP(3) NOT NULL,
    "token" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "ipAddress" TEXT,
    "userAgent" TEXT,
    "userId" TEXT NOT NULL,

    CONSTRAINT "better_t3_session_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "better_t3_account" (
    "id" TEXT NOT NULL,
    "accountId" TEXT NOT NULL,
    "providerId" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "accessToken" TEXT,
    "refreshToken" TEXT,
    "idToken" TEXT,
    "accessTokenExpiresAt" TIMESTAMP(3),
    "refreshTokenExpiresAt" TIMESTAMP(3),
    "scope" TEXT,
    "password" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "better_t3_account_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "better_t3_verification" (
    "id" TEXT NOT NULL,
    "identifier" TEXT NOT NULL,
    "value" TEXT NOT NULL,
    "expiresAt" TIMESTAMP(3) NOT NULL,
    "createdAt" TIMESTAMP(3),
    "updatedAt" TIMESTAMP(3),

    CONSTRAINT "better_t3_verification_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "better_t3_user_email_key" ON "better_t3_user"("email");

-- CreateIndex
CREATE UNIQUE INDEX "better_t3_session_token_key" ON "better_t3_session"("token");

-- AddForeignKey
ALTER TABLE "better_t3_session" ADD CONSTRAINT "better_t3_session_userId_fkey" FOREIGN KEY ("userId") REFERENCES "better_t3_user"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "better_t3_account" ADD CONSTRAINT "better_t3_account_userId_fkey" FOREIGN KEY ("userId") REFERENCES "better_t3_user"("id") ON DELETE CASCADE ON UPDATE CASCADE;
