# SendAfterExample

[SendAfterExample.Worker](lib/send_after_example/worker.ex) demonstrates a GenServer that leverages `GenServer.handle_continue/2` and `Process.send_after/4` to "do work" on an interval.
