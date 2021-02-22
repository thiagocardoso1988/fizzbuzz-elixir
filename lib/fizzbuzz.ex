defmodule Fizzbuzz do
  def build(filename) do
    file = File.read(filename)
    handle_file_read(file)
  end

  def handle_file_read({:ok, result}), do: result
  def handle_file_read({:error, reason}), do: reason
end
