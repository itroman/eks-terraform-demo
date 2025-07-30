resource "aws_secretsmanager_secret" "production_sidekiq" {
  name = "production/sidekiq"
}

resource "aws_secretsmanager_secret" "production_website" {
  name = "production/website"
}
