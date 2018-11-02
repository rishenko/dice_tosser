defmodule DiceTosser do
  @moduledoc """
  Documentation for DiceTosser.
  """

  @doc """
  Tokenizes dice roll equation strings.

      iex> DiceTosser.tokenize("1+2-3*4d(8/2)")
      {:ok,
            [
              {:int, 1, '1'},
              {:op, 1, '+'},
              {:int, 1, '2'},
              {:op, 1, '-'},
              {:int, 1, '3'},
              {:op, 1, '*'},
              {:int, 1, '4'},
              {:op, 1, 'd'},
              {:"(", 1, '('},
              {:int, 1, '8'},
              {:op, 1, '/'},
              {:int, 1, '2'},
              {:")", 1, ')'},
            ], 1}
  """
  def tokenize(str) do
    str |> to_charlist() |> :dice_lexer.string()
  end
end
