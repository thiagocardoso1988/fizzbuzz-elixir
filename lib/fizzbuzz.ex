defmodule Fizzbuzz do
  def build(filename) do
    filename
    |> File.read()
    |>handle_file_read()
  end

  def handle_file_read({:ok, result}) do
    list = String.split(result, ",")
    Enum.map(list, fn number -> String.to_integer(number) end)
  end
  def handle_file_read({:error, reason}), do: reason
end
