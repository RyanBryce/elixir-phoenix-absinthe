defmodule Cards do
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", ];
    suits = ["Spades", "Clubs", "Hearts", "Dimonds"]
    # list comprehension is technically a JS .map
    cards = for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
 
  end

  def shuffle(deck) do
    Enum.shuffle deck
  end
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
end
