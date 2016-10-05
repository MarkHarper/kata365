defmodule Kata365.VisitorsChannel do
  use Kata365.Web, :channel

  def join("visitors", _params, socket) do
    send(self, :after_join)
    {:ok, socket}
  end

  def handle_info(:after_join, socket) do
    push(socket, "init", Kata365.Visitors.state())
    {:ok, _} = Kata365.Visitors.add()
    {:noreply, socket}
  end
  def handle_info(%{event: event}, socket) when event in ["add", "remove"] do
    push(socket, event, %{})
    {:noreply, socket}
  end

  def terminate(_, _) do
    {:ok, _} = Kata365.Visitors.remove()
    :ok
  end
end