CREATE TABLE `schema_migrations`(`filename` varchar(255) NOT NULL PRIMARY KEY);
CREATE TABLE `posts`(
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `title` varchar(255) NOT NULL,
  `published_at` timestamp NOT NULL
);
INSERT INTO schema_migrations (filename) VALUES
('20260220160819_create_posts.rb');
