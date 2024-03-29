workflow "Sample" {
  on = "push"
  resolves = ["taichi/actions-test"]
}

action "taichi/actions-test" {
  uses = "taichi/actions-test@master"
}

workflow "Update" {
  on = "schedule(0 0 * * 3)"
  resolves = ["package-update"]
}

action "package-update" {
  uses = "taichi/actions-package-update@master"
  args = "-u --packageFile package.json"
  env  = {
    AUTHOR_NAME = "taichi"
    AUTHOR_EMAIL = "ryushi@gmail.com"
    LOG_LEVEL = "debug"
    EXECUTE = "true"
  }
  secrets = ["GITHUB_TOKEN"]
}

