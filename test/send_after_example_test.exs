defmodule SendAfterExampleTest do
  use ExUnit.Case
  doctest SendAfterExample

  test "greets the world" do
    assert SendAfterExample.hello() == :world
  end
end
