import UIKit
import StoreKit

struct PonllyCoinPackage {
    let productId: String
    let coins: Int
    let fallbackPrice: String
    let bonus: String?
}

enum PonllyCoinStoreCatalog {
    static let packages: [PonllyCoinPackage] = [
        .init(productId: "dtwplhleglzbyuwv", coins: 50, fallbackPrice: "$0.99", bonus: nil),
        .init(productId: "kejrefezvtblmhpz", coins: 350, fallbackPrice: "$1.99", bonus: "+10%"),
        .init(productId: "gzpyowmxuqcppzjw", coins: 725, fallbackPrice: "$4.99", bonus: "+15%"),
        .init(productId: "ergehryjryrhthjrtjfc", coins: 1050, fallbackPrice: "$6.99", bonus: "+20%"),
        .init(productId: "ftwaitwezvxxkaeu", coins: 1550, fallbackPrice: "$9.99", bonus: "+25%"),
        .init(productId: "etyhkvkebquaqqzz", coins: 3150, fallbackPrice: "$19.99", bonus: "+30%"),
        .init(productId: "frawtxprivibfvrz", coins: 6300, fallbackPrice: "$49.99", bonus: "+35%"),
        .init(productId: "vcbkojuzznekgnys", coins: 12750, fallbackPrice: "$99.99", bonus: "+50%")
    ]
}
