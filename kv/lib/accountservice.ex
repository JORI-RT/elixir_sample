defmodule DDDExample.AccountService do

  alias DDDExample.Account, as: Account
  import IfOk

  def transfer(from, to, amount) do
    Account.debit(from, amount)
    |> if_ok(fn acc -> {:ok, {acc, Account.credit(to, amount)}} end)
    |> if_ok(fn {acc, t} -> {:ok, {acc, elem(t, 1)}} end)
  end

end