workflow "Sample" {
  on = "push"
  resolves = ["taichi/actions-test"]
}

action "taichi/actions-test" {
  uses = "taichi/actions-test@master"
}

workflow "Update" {
  on = "schedule(0 0 * * WED)"
  resolves = ["package-update"]
}

action "package-update" {
  uses = "taichi/actions-package-update@master"
  args = "-u"
  env  = {
    AUTHOR_NAME = "taichi"
    AUTHOR_EMAIL = "ryushi@gmail.com"
  }
  secrets = ["GITHUB_TOKEN"]
}

