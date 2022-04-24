defmodule BalanceTest do
  use ExUnit.Case
  doctest DDDExample.Account

  alias DDDExample.Account, as: Account
  alias DDDExample.Balance, as: Balance

  test "open account" do
    account = %Account{no: "1", name: "takaki"}
    assert account.no == "1"
    assert account.balance.amount == 0
  end

  test "credit" do
    {result, account} = %Account{
                          no: "1",
                          balance: %Balance{
                            amount: 300
                          }
                        }
                        |> Account.credit(100)

    assert account.balance.amount == 400
    assert result == :ok
  end

  test "debit" do
    {result, account} = %Account{
                          no: "1",
                          balance: %Balance{
                            amount: 300
                          }
                        }
                        |> Account.debit(100)

    assert account.balance.amount == 200
    assert result == :ok
  end
end
