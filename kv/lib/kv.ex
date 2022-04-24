defmodule KV do
  @moduledoc """
  Documentation for `KV`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> KV.hello()
      :world

  """
  def hello do
    :world
  end

  @doc """

  # 複数のテスト結果を一度に得る場合

      iex> KV.multiple(1)
      2
      iex> KV.multiple(3)
      6

  """
  def multiple(num) do
    num * 2
  end

end
