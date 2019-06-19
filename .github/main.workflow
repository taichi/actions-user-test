workflow "Sample" {
  resolves = ["taichi/actions-test"]
  on = "schedule(5 * * * *)"
}

action "taichi/actions-test" {
  uses = "taichi/actions-test@master"
}
