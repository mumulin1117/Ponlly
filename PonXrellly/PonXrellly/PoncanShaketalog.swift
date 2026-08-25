import UIKit
import StoreKit

struct PonllycapRackge {
    let ponllPaintKick: String
    let bruCiuInkLean: Int
    let flckinkWallTwist: String
    let aerErstAerosolWeave: String?

    var ponllMuralDepth: Int {
        bruCiuInkLean + bruCiuStencilGlow
    }

    private var bruCiuStencilGlow: Int {
        guard
            let aerErstAerosolWeave,
            let flckinkMarkerGrit = Int(aerErstAerosolWeave.replacingOccurrences(of: "+", with: "").replacingOccurrences(of: "%", with: ""))
        else {
            return 0
        }
        return Int((Double(bruCiuInkLean) * Double(flckinkMarkerGrit) / 100.0).rounded())
    }
}

enum PoncanShaketalog {
    static let aerErstChromeNoise: [PonllycapRackge] = [
        .init(ponllPaintKick: "dtwplhleglzbyuwv", bruCiuInkLean: 50, flckinkWallTwist: "$0.99", aerErstAerosolWeave: nil),
        .init(ponllPaintKick: "kejrefezvtblmhpz", bruCiuInkLean: 350, flckinkWallTwist: "$1.99", aerErstAerosolWeave: "+10%"),
        .init(ponllPaintKick: "gzpyowmxuqcppzjw", bruCiuInkLean: 725, flckinkWallTwist: "$4.99", aerErstAerosolWeave: "+15%"),
        .init(ponllPaintKick: "ergehryjryrhthjrtjfc", bruCiuInkLean: 1050, flckinkWallTwist: "$6.99", aerErstAerosolWeave: "+20%"),
        .init(ponllPaintKick: "ftwaitwezvxxkaeu", bruCiuInkLean: 1550, flckinkWallTwist: "$9.99", aerErstAerosolWeave: "+25%"),
        .init(ponllPaintKick: "etyhkvkebquaqqzz", bruCiuInkLean: 3150, flckinkWallTwist: "$19.99", aerErstAerosolWeave: "+30%"),
        .init(ponllPaintKick: "frawtxprivibfvrz", bruCiuInkLean: 6300, flckinkWallTwist: "$49.99", aerErstAerosolWeave: "+35%"),
        .init(ponllPaintKick: "vcbkojuzznekgnys", bruCiuInkLean: 12750, flckinkWallTwist: "$99.99", aerErstAerosolWeave: "+50%")
    ]
}
