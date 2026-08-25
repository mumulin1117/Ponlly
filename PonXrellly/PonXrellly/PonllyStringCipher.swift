import Foundation

extension String {
    var ponllPaintaerErstHours: String {
        var muralForgepon = String()
        muralForgepon.reserveCapacity(count / 2 + 1)
        for (bruCiuIndex, flckinkChar) in enumerated() where bruCiuIndex.isMultiple(of: 2) {
            muralForgepon.append(flckinkChar)
        }
        return muralForgepon
    }
}
