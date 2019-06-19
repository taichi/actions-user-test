workflow "Sample" {
  on = "schedule(* * * * *)"
  resolves = ["taichi/actions-test"]
}

action "taichi/actions-test" {
  uses = "taichi/actions-test@master"
}
