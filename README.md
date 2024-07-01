# Stock Picker

This Ruby script implements a simple stock picker algorithm that finds the best days to buy and sell stocks for maximum profit, as a part of The Odin Project

## Functionality

The `stock_picker` method takes an array of stock prices, where each element represents the price of a stock on a given day. It returns an array with two elements:

1. The best day to buy (index of the buy day)
2. The best day to sell (index of the sell day)

The algorithm aims to maximize profit by finding the largest difference between a later day's price (sell) and an earlier day's price (buy).

## Usage

```ruby
result = stock_picker([17,3,6,9,15,8,6,1,10])
puts result # Output: [1, 4]
```

In this example, the best day to buy would be day 2 (price: 3) and the best day to sell would be day 5 (price: 15), yielding a maximum profit of 12.

## Note

This implementation has a time complexity of O(n²), where n is the number of days. For large datasets, more efficient algorithms might be preferred.