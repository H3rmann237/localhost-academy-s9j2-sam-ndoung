BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Comment" (
	"id"	INTEGER NOT NULL,
	"user_id"	INTEGER NOT NULL,
	"post_id"	INTEGER NOT NULL,
	"content"	TEXT NOT NULL,
	"created_at"	date NOT NULL,
	PRIMARY KEY("id"),
	FOREIGN KEY("post_id") REFERENCES "post"("id"),
	FOREIGN KEY("user_id") REFERENCES "user"("id")
);
CREATE TABLE IF NOT EXISTS "Post" (
	"id"	INTEGER NOT NULL,
	"user_id"	INTEGER NOT NULL,
	"title"	TEXT NOT NULL,
	"content"	TEXT NOT NULL,
	"created_at"	date NOT NULL,
	PRIMARY KEY("id"),
	FOREIGN KEY("user_id") REFERENCES "user"("id")
);
CREATE TABLE IF NOT EXISTS "User" (
	"id"	INTEGER NOT NULL,
	"username"	TEXT NOT NULL,
	"email"	TEXT NOT NULL UNIQUE,
	"created_at"	date NOT NULL DEFAULT (CURRENT_DATE),
	PRIMARY KEY("id")
);
COMMIT;
