struct Product {
  let name: String 
  let price: Double
}

enum DiscountType {
  case percentage(value: Double)
  case flatRate(amount: Double)
}

func finalValueCalculate(product: Product, discountT: DiscountType) -> Double {
      let priceOriginal = product.price 
      var priceFinal = priceOriginal

      switch discountT {
      case .percentage(let percentValue):
            let descount = (priceFinal / 100) * percentValue
            priceFinal = priceOriginal - descount
      case .flatRate(let rateValue):
           priceFinal = priceFinal - rateValue       
      }

      return max(0, priceFinal)
}

let tv = Product(name: "Tv 4k samsumg 2025", price: 2500.0)
let discountData = DiscountType.percentage(value: 50)
let finalValue = finalValueCalculate(product: tv, discountT: discountData)


print(finalValue)