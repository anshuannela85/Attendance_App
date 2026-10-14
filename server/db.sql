/// attendance

CREATE TABLE attendance (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL, -- Links to your users table
    punch_in_time TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    punch_out_time TIMESTAMP WITH TIME ZONE,
    date DATE DEFAULT CURRENT_DATE
);

CREATE TABLE "users" (
	"user_id" serial PRIMARY KEY,
	"email" varchar(200) NOT NULL CONSTRAINT "users_email_key" UNIQUE,
	"password" varchar(200),
	"user_name" varchar(100),
	"created_at" timestamp DEFAULT now(),
	"employee_type" text,
	"manager_id" text
);
CREATE UNIQUE INDEX "users_email_key" ON "users" ("email");
CREATE UNIQUE INDEX "users_pkey" ON "users" ("user_id");