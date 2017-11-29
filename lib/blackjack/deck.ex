defmodule Blackjack.Deck do
    @type t :: [card]
    @type card :: %{suit: suit, rank: rank}
    @type suit :: :spades | :hearts | :diamonds | :clubs
    @type rank :: 2..10 | :jack | :queen | :king | :ace
  
    # Create constant, list comprehention
    @cards (
      for suit <- [:spades, :hearts, :diamonds, :clubs],
          rank <- [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace],
        do: %{suit: suit, rank: rank}
    )
    
    def my_card, do: @cards

    def make_shoe(decks), do: Enum.reduce 1..decks, [], fn(i,l) ->  Blackjack.Deck.my_card ++ l end

    def shuffled(shoe), do: Enum.shuffle(shoe)

    # def myf(n), do: Enum.reduce 1..n, [], fn(i,l) -> i end
    # Blackjack.Deck.make_shoe(1) |> Blackjack.Deck.shuffled
end