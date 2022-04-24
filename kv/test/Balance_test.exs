defmodule BalanceTest do
  use ExUnit.Case
  doctest DDDExample.Balance

  alias DDDExample.Balance, as: Balance

  test "greets the world" do
    balance = %Balance{}
    assert balance.amount == 0
  end
end
