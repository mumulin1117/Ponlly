import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class ErErstPaintLabView: UIView {
    init(user ponllLayerMap: PonllyaerErstTwoToneFillr, size bruCiuCanMap: CGFloat = 40) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: bruCiuCanMap).isActive = true
        heightAnchor.constraint(equalToConstant: bruCiuCanMap).isActive = true
        layer.cornerRadius = bruCiuCanMap / 2
        clipsToBounds = true
        layer.borderWidth = 2
        layer.borderColor = ponllLayerMap.inkDrift[1].cgColor
        let flckinkCapMap = PonllyponllCyanGlowView(bruCiuDripMarker: ponllLayerMap.inkDrift)
        flckinkCapMap.translatesAutoresizingMaskIntoConstraints = false
        addSubview(flckinkCapMap)
        let aerErstStrokeMap = UIImageView(image: PonllyponllTornEdge.bruCiuUtilityBox(flckinkTrafficBarrier: ponllLayerMap))
        aerErstStrokeMap.contentMode = .scaleAspectFill
        aerErstStrokeMap.translatesAutoresizingMaskIntoConstraints = false
        aerErstStrokeMap.isHidden = aerErstStrokeMap.image == nil
        addSubview(aerErstStrokeMap)
        let ponllMuralPlan = UILabel()
        ponllMuralPlan.text = String(ponllLayerMap.aerosolDream.prefix(1)).uppercased()
        ponllMuralPlan.isHidden = aerErstStrokeMap.image != nil
        ponllMuralPlan.font = PonllyFonts.muralForgepon(neonLab: bruCiuCanMap * 0.38)
        ponllMuralPlan.textColor = .white
        ponllMuralPlan.textAlignment = .center
        ponllMuralPlan.translatesAutoresizingMaskIntoConstraints = false
        addSubview(ponllMuralPlan)
        NSLayoutConstraint.activate([
            flckinkCapMap.leadingAnchor.constraint(equalTo: leadingAnchor),
            flckinkCapMap.trailingAnchor.constraint(equalTo: trailingAnchor),
            flckinkCapMap.topAnchor.constraint(equalTo: topAnchor),
            flckinkCapMap.bottomAnchor.constraint(equalTo: bottomAnchor),
            aerErstStrokeMap.leadingAnchor.constraint(equalTo: leadingAnchor),
            aerErstStrokeMap.trailingAnchor.constraint(equalTo: trailingAnchor),
            aerErstStrokeMap.topAnchor.constraint(equalTo: topAnchor),
            aerErstStrokeMap.bottomAnchor.constraint(equalTo: bottomAnchor),
            ponllMuralPlan.leadingAnchor.constraint(equalTo: leadingAnchor),
            ponllMuralPlan.trailingAnchor.constraint(equalTo: trailingAnchor),
            ponllMuralPlan.topAnchor.constraint(equalTo: topAnchor),
            ponllMuralPlan.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
