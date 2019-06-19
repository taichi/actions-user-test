workflow "Sample" {
  resolves = ["taichi/actions-test"]
  on = "push"
}

action "taichi/actions-test" {
  uses = "taichi/actions-test@master"
}
