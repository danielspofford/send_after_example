defmodule SendAfterExample.Worker do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use GenServer
  require Logger

  def start_link([]) do
    GenServer.start_link(__MODULE__, [])
  end

  def init([]) do
    state = %{potatoes: true}
    {:ok, state, {:continue, "could be anything"}}
  end

  def handle_continue("could be anything", state) do
    do_work()
    {:noreply, state}
  end

  def handle_info(:do_work, state) do
    do_work()
    {:noreply, state}
  end

  defp do_work() do
    Logger.info("This is so much work!")
    Process.send_after(self(), :do_work, 1_000)
  end
end
