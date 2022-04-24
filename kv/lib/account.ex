defmodule DDDExample.Account do

  alias DDDExample.Balance, as: Balance

  defstruct no: "", name: "", dateOfOpening: nil, balance: %Balance{}

  def debit(account, amount) do
    if (account.balance.amount < amount) do
      {:error, "Insufficient balance in account"}
    else
      {:ok, %{account | balance: %{account.balance | amount: account.balance.amount - amount}}}
    end
  end

  def credit(account, amount) do
    {:ok, %{account | balance: %{account.balance | amount: account.balance.amount + amount}}}
  end
end