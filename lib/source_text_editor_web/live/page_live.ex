defmodule SourceTextEditorWeb.PageLive do
  use SourceTextEditorWeb, :live_view

  @spec mount(any, any, Phoenix.LiveView.Socket.t()) :: {:ok, any}
  def mount(_params, _session, socket) do
    {:ok, assign(socket, line_height: 2, font: "Times New Roman", content: "", edit: true)}
  end

  def handle_event("styling", state, socket) do
    IO.inspect(state)
    changes = []
    changes = if line_height = Map.get(state, "line-height"), do: Keyword.put(changes, :line_height, line_height), else: changes
    changes = if content     = Map.get(state, "content"),     do: Keyword.put(changes, :content, content),         else: changes
    {:noreply, assign(socket, changes)}
  end

  def handle_event("font", %{"value" => font}, socket) do
    IO.inspect(font)
    {:noreply, assign(socket, font: font)}
  end

  def handle_event("display", %{"value" => edit}, socket) do
    IO.inspect(edit == "true")
    {:noreply, assign(socket, edit: if(edit == "true", do: false, else: true))}
  end
end
