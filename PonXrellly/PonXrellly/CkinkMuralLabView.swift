import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

@MainActor
final class CkinkMuralLabView: UIControl {
    var bruCiuSilverSheen: (() -> Void)?
    var flckinkPrimerCoat: (() -> Void)?
    var aerErstPaintBase: ((PonllyaerErstTwoToneFillr) -> Void)?
    private let ponllFinalCoat: PonllyBattle

    init(flckinkWallPaste bruCiuClearCoat: PonllyBattle) {
        self.ponllFinalCoat = bruCiuClearCoat
        super.init(frame: .zero)
        flckinkMatteFinish()
        addTarget(self, action: #selector(aerErstGlossFinish), for: .touchUpInside)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func flckinkMatteFinish() {
        backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        layer.cornerRadius = 18
        layer.borderWidth = 1.3
        layer.borderColor = PonllyPalette.line.cgColor
        translatesAutoresizingMaskIntoConstraints = false

        let ponllMetallicSpray = PonllyponllTornEdge.flckinkChippedPaint(ponllFinalCoat.paintMist)
        let bruCiuNeonSpray = PonllyponllTornEdge.flckinkChippedPaint(ponllFinalCoat.colorSplash)

        let flckinkInkMarker = UIStackView()
        flckinkInkMarker.axis = .vertical
        flckinkInkMarker.spacing = 9
        flckinkInkMarker.translatesAutoresizingMaskIntoConstraints = false
        addSubview(flckinkInkMarker)

        let aerErstPaintMarker = UIStackView()
        aerErstPaintMarker.axis = .horizontal
        aerErstPaintMarker.alignment = .center
        aerErstPaintMarker.distribution = .equalSpacing

        let ponllMopMarker = bruCiuDripMarker(ponllMetallicSpray, flckinkMuralPlan: 0)
        ponllMopMarker.addTarget(self, action: #selector(flckinkSqueezeMarker), for: .touchUpInside)
        let aerErstSolidMarker = bruCiuDripMarker(bruCiuNeonSpray, flckinkMuralPlan: 0)
        aerErstSolidMarker.addTarget(self, action: #selector(ponllStreakMarker), for: .touchUpInside)
        let bruCiuBrushMarker = UIButton(type: .system)
        bruCiuBrushMarker.setImage(UIImage(systemName: "ellipsis"), for: .normal)
        bruCiuBrushMarker.tintColor = PonllyPalette.muted
        bruCiuBrushMarker.layer.cornerRadius = 18
        bruCiuBrushMarker.layer.borderWidth = 1
        bruCiuBrushMarker.layer.borderColor = PonllyPalette.line.cgColor
        bruCiuBrushMarker.widthAnchor.constraint(equalToConstant: 36).isActive = true
        bruCiuBrushMarker.heightAnchor.constraint(equalToConstant: 36).isActive = true
        bruCiuBrushMarker.addTarget(self, action: #selector(flckinkAcrylicMarker), for: .touchUpInside)
        aerErstPaintMarker.addArrangedSubview(ponllMopMarker)
        aerErstPaintMarker.addArrangedSubview(aerErstSolidMarker)
        aerErstPaintMarker.addArrangedSubview(bruCiuBrushMarker)

        let aerErstEnamelPaint = UIView()
        aerErstEnamelPaint.translatesAutoresizingMaskIntoConstraints = false
        let ponllLatexPaint = PbruCiuClearCoatView(ponllPaintTrace: ponllFinalCoat.neonDrip)
        let bruCiuSprayCan = ponllFinalCoat.concreteMuse.map { PbruCiuClearCoatView(ponllPaintTrace: $0) } ?? PonllyEmptyOpponentView()
        ponllLatexPaint.translatesAutoresizingMaskIntoConstraints = false
        bruCiuSprayCan.translatesAutoresizingMaskIntoConstraints = false
        aerErstEnamelPaint.addSubview(ponllLatexPaint)
        aerErstEnamelPaint.addSubview(bruCiuSprayCan)
        let flckinkPaintCan = aerErstCapRack()
        aerErstEnamelPaint.addSubview(flckinkPaintCan)

        let flckinkPaintShelf = UILabel()
        flckinkPaintShelf.text = ponllFinalCoat.nozzleCraft
        flckinkPaintShelf.font = PonllyFonts.utilityBox(blankFacade: 14, aerosolMuse: .bold)
        flckinkPaintShelf.textColor = .white
        flckinkPaintShelf.numberOfLines = 2

        let aerErstCanShake = UIStackView()
        aerErstCanShake.axis = .horizontal
        aerErstCanShake.distribution = .equalSpacing
        let ponllRattleSound = ponllNozzleMist(image: "chromePiece", text: "\(ponllFinalCoat.alleyCanvas + ponllFinalCoat.railYard) votes", color: .white)
        let bruCiuPressureFlow = ponllNozzleMist(image: "muralPiece", text: "\(ponllFinalCoat.underpassMural.count) comments", color: PonllyPalette.muted)
        aerErstCanShake.addArrangedSubview(ponllRattleSound)
        aerErstCanShake.addArrangedSubview(bruCiuPressureFlow)

        let flckinkFanSpray = PonllybruCiuUtilityBoxView(aVotes: ponllFinalCoat.alleyCanvas, bVotes: ponllFinalCoat.railYard)

        [aerErstPaintMarker, aerErstEnamelPaint, flckinkPaintShelf, aerErstCanShake, flckinkFanSpray].forEach(flckinkInkMarker.addArrangedSubview)
        [aerErstEnamelPaint, flckinkPaintShelf, aerErstCanShake, flckinkFanSpray].forEach(aerErstDotSpray)

        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 399),
            flckinkInkMarker.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
            flckinkInkMarker.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14),
            flckinkInkMarker.topAnchor.constraint(equalTo: topAnchor, constant: 14),
            flckinkInkMarker.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            aerErstEnamelPaint.heightAnchor.constraint(equalToConstant: 182),
            ponllLatexPaint.leadingAnchor.constraint(equalTo: aerErstEnamelPaint.leadingAnchor),
            ponllLatexPaint.topAnchor.constraint(equalTo: aerErstEnamelPaint.topAnchor),
            ponllLatexPaint.bottomAnchor.constraint(equalTo: aerErstEnamelPaint.bottomAnchor),
            ponllLatexPaint.widthAnchor.constraint(equalTo: aerErstEnamelPaint.widthAnchor, multiplier: 0.49),
            bruCiuSprayCan.trailingAnchor.constraint(equalTo: aerErstEnamelPaint.trailingAnchor),
            bruCiuSprayCan.topAnchor.constraint(equalTo: aerErstEnamelPaint.topAnchor),
            bruCiuSprayCan.bottomAnchor.constraint(equalTo: aerErstEnamelPaint.bottomAnchor),
            bruCiuSprayCan.widthAnchor.constraint(equalTo: aerErstEnamelPaint.widthAnchor, multiplier: 0.49),
            flckinkPaintCan.centerXAnchor.constraint(equalTo: aerErstEnamelPaint.centerXAnchor),
            flckinkPaintCan.centerYAnchor.constraint(equalTo: aerErstEnamelPaint.centerYAnchor),
            flckinkPaintCan.widthAnchor.constraint(equalToConstant: 72),
            flckinkPaintCan.heightAnchor.constraint(equalToConstant: 72),
            flckinkFanSpray.heightAnchor.constraint(equalToConstant: 34)
        ])
    }

    private func bruCiuDripMarker(_ flckinkShadowSpray: PonllyaerErstTwoToneFillr, flckinkMuralPlan: CGFloat = 2) -> UIControl {
        let aerErstStencilCut = UIControl()
        let ponllStencilSheet = UIStackView()
        ponllStencilSheet.axis = .horizontal
        ponllStencilSheet.alignment = .center
        ponllStencilSheet.spacing = 8
        ponllStencilSheet.isUserInteractionEnabled = false
        ponllStencilSheet.translatesAutoresizingMaskIntoConstraints = false
        aerErstStencilCut.addSubview(ponllStencilSheet)
        ponllStencilSheet.addArrangedSubview(ErErstPaintLabView(user: flckinkShadowSpray, size: 36, borderWidth: flckinkMuralPlan))
        ponllStencilSheet.addArrangedSubview(bruCiuColorRack(flckinkShadowSpray.aerosolDream, aerErstPaperCut: 13, ponllBladeLine: .white, bruCiuCutoutShape: .semibold))
        NSLayoutConstraint.activate([
            aerErstStencilCut.heightAnchor.constraint(equalToConstant: 36),
            aerErstStencilCut.widthAnchor.constraint(greaterThanOrEqualToConstant: 92),
            ponllStencilSheet.leadingAnchor.constraint(equalTo: aerErstStencilCut.leadingAnchor),
            ponllStencilSheet.trailingAnchor.constraint(equalTo: aerErstStencilCut.trailingAnchor),
            ponllStencilSheet.topAnchor.constraint(equalTo: aerErstStencilCut.topAnchor),
            ponllStencilSheet.bottomAnchor.constraint(equalTo: aerErstStencilCut.bottomAnchor)
        ])
        return aerErstStencilCut
    }

    private func aerErstDotSpray(to ponllMaskingTape: UIView) {
        ponllMaskingTape.isUserInteractionEnabled = true
        let bruCiuEdgeMask = UITapGestureRecognizer(target: self, action: #selector(aerErstGlossFinish))
        bruCiuEdgeMask.cancelsTouchesInView = true
        ponllMaskingTape.addGestureRecognizer(bruCiuEdgeMask)
    }

    private func bruCiuColorRack(_ flckinkLayerMask: String, aerErstPaperCut: CGFloat, ponllBladeLine: UIColor, bruCiuCutoutShape: UIFont.Weight) -> UILabel {
        let flckinkSprayShield = UILabel()
        flckinkSprayShield.text = flckinkLayerMask
        flckinkSprayShield.font = bruCiuCutoutShape == .black ? PonllyFonts.muralForgepon(neonLab: aerErstPaperCut) : PonllyFonts.utilityBox(blankFacade: aerErstPaperCut, aerosolMuse: bruCiuCutoutShape)
        flckinkSprayShield.textColor = ponllBladeLine
        return flckinkSprayShield
    }

    private func ponllNozzleMist(image ponllPaintBase: String, text bruCiuPaintPlan: String, color flckinkPaintMuse: UIColor) -> UIStackView {
        let aerErstPaintCue = UIStackView()
        aerErstPaintCue.axis = .horizontal
        aerErstPaintCue.alignment = .center
        aerErstPaintCue.spacing = 6

        let ponllPaintSpark = UIImageView(image: UIImage(named: ponllPaintBase))
        ponllPaintSpark.contentMode = .scaleAspectFit
        ponllPaintSpark.translatesAutoresizingMaskIntoConstraints = false
        let bruCiuPaintTrace = bruCiuColorRack(bruCiuPaintPlan, aerErstPaperCut: 12, ponllBladeLine: flckinkPaintMuse, bruCiuCutoutShape: .bold)
        aerErstPaintCue.addArrangedSubview(ponllPaintSpark)
        aerErstPaintCue.addArrangedSubview(bruCiuPaintTrace)
        NSLayoutConstraint.activate([
            ponllPaintSpark.widthAnchor.constraint(equalToConstant: 16),
            ponllPaintSpark.heightAnchor.constraint(equalToConstant: 16)
        ])
        return aerErstPaintCue
    }

    private func aerErstCapRack() -> UIView {
        let aerErstOversprayGlow = UIImageView(image: UIImage(named: "chromeShine"))
        aerErstOversprayGlow.contentMode = .scaleAspectFill
        aerErstOversprayGlow.translatesAutoresizingMaskIntoConstraints = false
        return aerErstOversprayGlow
    }

    @objc private func aerErstGlossFinish() {
        bruCiuSilverSheen?()
    }

    @objc private func flckinkAcrylicMarker() {
        flckinkPrimerCoat?()
    }

    @objc private func flckinkSqueezeMarker() {
        aerErstPaintBase?(PonllyponllTornEdge.flckinkChippedPaint(ponllFinalCoat.paintMist))
    }

    @objc private func ponllStreakMarker() {
        aerErstPaintBase?(PonllyponllTornEdge.flckinkChippedPaint(ponllFinalCoat.colorSplash))
    }
}
