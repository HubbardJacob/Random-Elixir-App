defmodule BadappWeb.TradingLive do
  use BadappWeb, :live_view



  def mount(_params, _, socket) do
    attrs = %{:balance => 5000, :month => 1}
    {:ok, assign(socket, attrs)}
  end

  def render(assigns) do
    ~L"""
    <h1>Month <%= @month %> Balance: <%= @balance %></h1>
    <button phx-click="increment-month">+</button>
    """
  end

  def handle_event("increment-month", _, socket) do
    balance = socket.assigns.balance
    new_bal = balance + balance * 0.086 |> Float.round(2)
    new_month = socket.assigns.month + 1
    attrs = %{:balance => new_bal, :month => new_month}
    {:noreply, assign(socket, attrs)}
  end


end
