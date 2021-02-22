defmodule Fizzbuzz do
  def build(filename) do
    case File.read(filename) do
      {:ok, result} -> result
      {:error, reason} -> reason
    end
  end
end
