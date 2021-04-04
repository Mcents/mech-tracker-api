defmodule MechTrackerApiWeb.PageController do
  use MechTrackerApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
