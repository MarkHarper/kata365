defmodule Kata365.PageController do
  use Kata365.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
