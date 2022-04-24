defmodule AccountServic3Test do
  use ExUnit.Case
#  use Timex
  alias DDDExample.AccountService, as: AccountService
  alias DDDExample.Account, as: Account
  alias DDDExample.Balance, as: Balance

  test "greets the world" do
    # arrange
    from = %Account{no: "a1", name: "john", balance: %Balance{amount: 100}}
    to = %Account{no: "a2", name: "jane", balance: %Balance{amount: 100}}
    expected_from = %Account{no: "a1", name: "john", balance: %Balance{amount: 70}}
    expected_to = %Account{no: "a2", name: "jane", balance: %Balance{amount: 130}}
    # act
    ret = AccountService.transfer(from, to, 30)
    # assert
    assert elem(ret, 0) == :ok
    assert elem(ret, 1) |> elem(0)== expected_from
    assert elem(ret, 1) |> elem(1)== expected_to
  end
end
