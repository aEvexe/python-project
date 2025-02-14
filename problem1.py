def apply_discount_and_sort(prices: list) -> list:
    new_prices = []

    if not prices:
        return prices

    for i in prices:
        if i <= 0:
            new_prices.remove(i)
        else:
            a = i * 0.85
            new_prices.append(a)

    return sorted(new_prices, reverse=True)

prices = [100,250,75,150,300]
print(apply_discount_and_sort(prices))