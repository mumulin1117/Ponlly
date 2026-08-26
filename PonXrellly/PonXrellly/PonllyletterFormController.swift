import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

@MainActor
final class PonllyletterFormController: UIViewController {
    private var ponllClearCoat: PonllyVideo
    private let bruCiuMatteFinish: (PonllyVideo) -> Void
    private let flckinkGlossFinish = UIView()
    private let aerErstMetallicSpray = UIView()
    private let ponllNeonSpray = UIStackView()
    private let bruCiuInkMarker = UILabel()
    private let flckinkPaintMarker = UITextField()

    init(video ponllClearCoat: PonllyVideo, onUpdate bruCiuMatteFinish: @escaping (PonllyVideo) -> Void) {
        self.ponllClearCoat = ponllClearCoat
        self.bruCiuMatteFinish = bruCiuMatteFinish
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        aerErstMopMarker()
        ponllDripMarker()
        NotificationCenter.default.addObserver(self, selector: #selector(bruCiuAcrylicMarker(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(flckinkEnamelPaint(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        aerErstMetallicSpray.transform = CGAffineTransform(translationX: 0, y: aerErstMetallicSpray.bounds.height)
        UIView.animate(withDuration: 0.24, delay: 0, options: [.curveEaseOut]) {
            self.flckinkGlossFinish.alpha = 1
            self.aerErstMetallicSpray.transform = .identity
        }
    }

    private func aerErstMopMarker() {
        view.backgroundColor = .clear
        flckinkGlossFinish.backgroundColor = UIColor.black.withAlphaComponent(0.62)
        flckinkGlossFinish.alpha = 0
        flckinkGlossFinish.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkGlossFinish)
        flckinkGlossFinish.woodPanelPonlly(steelGate: view)
        let ponllPaintSignal = UITapGestureRecognizer(target: self, action: #selector(bruCiuColorGlow))
        ponllPaintSignal.cancelsTouchesInView = false
        flckinkGlossFinish.addGestureRecognizer(ponllPaintSignal)

        aerErstMetallicSpray.backgroundColor = UIColor(red: 7/255, green: 7/255, blue: 12/255, alpha: 1)
        aerErstMetallicSpray.layer.cornerRadius = 24
        aerErstMetallicSpray.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        aerErstMetallicSpray.layer.borderWidth = 1
        aerErstMetallicSpray.layer.borderColor = UIColor.white.withAlphaComponent(0.1).cgColor
        aerErstMetallicSpray.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aerErstMetallicSpray)

        let aerErstLatexPaint = UIView()
        aerErstLatexPaint.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        aerErstLatexPaint.layer.cornerRadius = 2
        aerErstLatexPaint.translatesAutoresizingMaskIntoConstraints = false
        aerErstMetallicSpray.addSubview(aerErstLatexPaint)

        let ponllPaperCut = UILabel()
        ponllPaperCut.text = "CzoAmBmCeDnEtFsG".ponllPaintaerErstHours
        ponllPaperCut.textColor = .white
        ponllPaperCut.font = PonllyFonts.muralForgepon(neonLab: 14)
        ponllPaperCut.translatesAutoresizingMaskIntoConstraints = false
        aerErstMetallicSpray.addSubview(ponllPaperCut)

        bruCiuInkMarker.textColor = .black
        bruCiuInkMarker.font = PonllyFonts.steelGate(rollingShutter: 11)
        bruCiuInkMarker.textAlignment = .center
        bruCiuInkMarker.backgroundColor = PonllyPalette.pink
        bruCiuInkMarker.layer.cornerRadius = 16
        bruCiuInkMarker.clipsToBounds = true
        bruCiuInkMarker.translatesAutoresizingMaskIntoConstraints = false
        aerErstMetallicSpray.addSubview(bruCiuInkMarker)

        let ponllSprayCan = UIButton(type: .system)
        ponllSprayCan.setImage(UIImage(systemName: "xmark.circle.fill"), for: .normal)
        ponllSprayCan.tintColor = .white
        ponllSprayCan.backgroundColor = UIColor.white.withAlphaComponent(0.12)
        ponllSprayCan.layer.cornerRadius = 22
        ponllSprayCan.addTarget(self, action: #selector(ponllBrushMarker), for: .touchUpInside)
        ponllSprayCan.translatesAutoresizingMaskIntoConstraints = false
        aerErstMetallicSpray.addSubview(ponllSprayCan)

        let bruCiuPaintCan = UIScrollView()
        bruCiuPaintCan.keyboardDismissMode = .interactive
        bruCiuPaintCan.translatesAutoresizingMaskIntoConstraints = false
        aerErstMetallicSpray.addSubview(bruCiuPaintCan)

        ponllNeonSpray.axis = .vertical
        ponllNeonSpray.spacing = 22
        ponllNeonSpray.translatesAutoresizingMaskIntoConstraints = false
        bruCiuPaintCan.addSubview(ponllNeonSpray)

        let flckinkCapRack = UIView()
        flckinkCapRack.backgroundColor = PonllyPalette.background
        flckinkCapRack.layer.borderWidth = 1
        flckinkCapRack.layer.borderColor = UIColor.white.withAlphaComponent(0.1).cgColor
        flckinkCapRack.translatesAutoresizingMaskIntoConstraints = false
        aerErstMetallicSpray.addSubview(flckinkCapRack)

        let aerErstNozzleSet = ErErstPaintLabView(user: PonllyponllTornEdge.flckinkChippedPaint("u01"), size: 32)
        flckinkCapRack.addSubview(aerErstNozzleSet)

        let ponllColorRack = UIView()
        ponllColorRack.backgroundColor = UIColor(red: 43/255, green: 43/255, blue: 55/255, alpha: 1)
        ponllColorRack.layer.cornerRadius = 22
        ponllColorRack.layer.borderWidth = 1
        ponllColorRack.layer.borderColor = UIColor.white.withAlphaComponent(0.12).cgColor
        ponllColorRack.translatesAutoresizingMaskIntoConstraints = false
        flckinkCapRack.addSubview(ponllColorRack)

        flckinkPaintMarker.attributedPlaceholder = NSAttributedString(string: "AHdIdJ KaL McNoOmPmQeRnStT.U.V.W".ponllPaintaerErstHours, attributes: [.foregroundColor: PonllyPalette.muted])
        flckinkPaintMarker.textColor = .white
        flckinkPaintMarker.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .regular)
        flckinkPaintMarker.returnKeyType = .send
        flckinkPaintMarker.addTarget(self, action: #selector(aerErstStreakMarker), for: .primaryActionTriggered)
        flckinkPaintMarker.translatesAutoresizingMaskIntoConstraints = false
        ponllColorRack.addSubview(flckinkPaintMarker)

        let bruCiuPaintShelf = UIButton(type: .system)
        bruCiuPaintShelf.setTitle("SXeYnZd0".ponllPaintaerErstHours, for: .normal)
        bruCiuPaintShelf.setTitleColor(.black, for: .normal)
        bruCiuPaintShelf.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 11)
        bruCiuPaintShelf.backgroundColor = PonllyPalette.cyan
        bruCiuPaintShelf.layer.cornerRadius = 22
        bruCiuPaintShelf.addTarget(self, action: #selector(aerErstStreakMarker), for: .touchUpInside)
        bruCiuPaintShelf.translatesAutoresizingMaskIntoConstraints = false
        flckinkCapRack.addSubview(bruCiuPaintShelf)

        NSLayoutConstraint.activate([
            aerErstMetallicSpray.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            aerErstMetallicSpray.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            aerErstMetallicSpray.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            aerErstMetallicSpray.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.78),

            aerErstLatexPaint.centerXAnchor.constraint(equalTo: aerErstMetallicSpray.centerXAnchor),
            aerErstLatexPaint.topAnchor.constraint(equalTo: aerErstMetallicSpray.topAnchor, constant: 22),
            aerErstLatexPaint.widthAnchor.constraint(equalToConstant: 40),
            aerErstLatexPaint.heightAnchor.constraint(equalToConstant: 4),

            ponllPaperCut.leadingAnchor.constraint(equalTo: aerErstMetallicSpray.leadingAnchor, constant: 20),
            ponllPaperCut.topAnchor.constraint(equalTo: aerErstMetallicSpray.topAnchor, constant: 78),
            bruCiuInkMarker.leadingAnchor.constraint(equalTo: ponllPaperCut.trailingAnchor, constant: 14),
            bruCiuInkMarker.centerYAnchor.constraint(equalTo: ponllPaperCut.centerYAnchor),
            bruCiuInkMarker.widthAnchor.constraint(greaterThanOrEqualToConstant: 58),
            bruCiuInkMarker.heightAnchor.constraint(equalToConstant: 32),
            ponllSprayCan.trailingAnchor.constraint(equalTo: aerErstMetallicSpray.trailingAnchor, constant: -24),
            ponllSprayCan.centerYAnchor.constraint(equalTo: ponllPaperCut.centerYAnchor),
            ponllSprayCan.widthAnchor.constraint(equalToConstant: 44),
            ponllSprayCan.heightAnchor.constraint(equalToConstant: 44),

            bruCiuPaintCan.leadingAnchor.constraint(equalTo: aerErstMetallicSpray.leadingAnchor),
            bruCiuPaintCan.trailingAnchor.constraint(equalTo: aerErstMetallicSpray.trailingAnchor),
            bruCiuPaintCan.topAnchor.constraint(equalTo: ponllPaperCut.bottomAnchor, constant: 34),
            bruCiuPaintCan.bottomAnchor.constraint(equalTo: flckinkCapRack.topAnchor),
            ponllNeonSpray.leadingAnchor.constraint(equalTo: bruCiuPaintCan.frameLayoutGuide.leadingAnchor, constant: 20),
            ponllNeonSpray.trailingAnchor.constraint(equalTo: bruCiuPaintCan.frameLayoutGuide.trailingAnchor, constant: -20),
            ponllNeonSpray.topAnchor.constraint(equalTo: bruCiuPaintCan.contentLayoutGuide.topAnchor),
            ponllNeonSpray.bottomAnchor.constraint(equalTo: bruCiuPaintCan.contentLayoutGuide.bottomAnchor, constant: -22),

            flckinkCapRack.leadingAnchor.constraint(equalTo: aerErstMetallicSpray.leadingAnchor),
            flckinkCapRack.trailingAnchor.constraint(equalTo: aerErstMetallicSpray.trailingAnchor),
            flckinkCapRack.bottomAnchor.constraint(equalTo: aerErstMetallicSpray.bottomAnchor),
            flckinkCapRack.heightAnchor.constraint(equalToConstant: 96),
            aerErstNozzleSet.leadingAnchor.constraint(equalTo: flckinkCapRack.leadingAnchor, constant: 16),
            aerErstNozzleSet.centerYAnchor.constraint(equalTo: flckinkCapRack.centerYAnchor, constant: -6),
            ponllColorRack.leadingAnchor.constraint(equalTo: aerErstNozzleSet.trailingAnchor, constant: 18),
            ponllColorRack.centerYAnchor.constraint(equalTo: aerErstNozzleSet.centerYAnchor),
            ponllColorRack.heightAnchor.constraint(equalToConstant: 44),
            bruCiuPaintShelf.leadingAnchor.constraint(equalTo: ponllColorRack.trailingAnchor, constant: 12),
            bruCiuPaintShelf.trailingAnchor.constraint(equalTo: flckinkCapRack.trailingAnchor, constant: -16),
            bruCiuPaintShelf.centerYAnchor.constraint(equalTo: ponllColorRack.centerYAnchor),
            bruCiuPaintShelf.widthAnchor.constraint(equalToConstant: 88),
            bruCiuPaintShelf.heightAnchor.constraint(equalToConstant: 44),
            flckinkPaintMarker.leadingAnchor.constraint(equalTo: ponllColorRack.leadingAnchor, constant: 18),
            flckinkPaintMarker.trailingAnchor.constraint(equalTo: ponllColorRack.trailingAnchor, constant: -18),
            flckinkPaintMarker.centerYAnchor.constraint(equalTo: ponllColorRack.centerYAnchor)
        ])
    }

    private func ponllDripMarker() {
        bruCiuInkMarker.text = flckinkSolidMarker(ponllClearCoat.paintLayer)
        ponllNeonSpray.arrangedSubviews.forEach {
            ponllNeonSpray.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        ponllClearCoat.underpassMural.forEach { ponllNeonSpray.addArrangedSubview(bruCiuSqueezeMarker($0)) }
    }

    private func bruCiuSqueezeMarker(_ bruCiuPasteBrush: PonllyVideoComment) -> UIView {
        let bruCiuBladeLine = UIStackView()
        bruCiuBladeLine.axis = .horizontal
        bruCiuBladeLine.alignment = .top
        bruCiuBladeLine.spacing = 12

        bruCiuBladeLine.addArrangedSubview(ErErstPaintLabView(user: PonllyponllTornEdge.flckinkChippedPaint(bruCiuPasteBrush.wheatpasteLayer), size: 36))

        let flckinkCanShake = UIStackView()
        flckinkCanShake.axis = .vertical
        flckinkCanShake.spacing = 8

        let flckinkCutoutShape = UILabel()
        flckinkCutoutShape.text = "\(bruCiuPasteBrush.gritSurface)   \(bruCiuPasteBrush.pasteupEcho)"
        flckinkCutoutShape.textColor = PonllyPalette.cyan
        flckinkCutoutShape.font = PonllyFonts.muralForgepon(neonLab: 11)

        let aerErstSprayShield = UILabel()
        aerErstSprayShield.text = bruCiuPasteBrush.muralGrid
        aerErstSprayShield.textColor = .white
        aerErstSprayShield.font = PonllyFonts.utilityBox(blankFacade: 13, aerosolMuse: .regular)
        aerErstSprayShield.numberOfLines = 0

        let aerErstRattleSound = UILabel()
        aerErstRattleSound.text = "R1e2p3l4y5".ponllPaintaerErstHours
        aerErstRattleSound.textColor = PonllyPalette.muted
        aerErstRattleSound.font = PonllyFonts.utilityBox(blankFacade: 11, aerosolMuse: .semibold)

        [flckinkCutoutShape, aerErstSprayShield, aerErstRattleSound].forEach(flckinkCanShake.addArrangedSubview)
        bruCiuBladeLine.addArrangedSubview(flckinkCanShake)

        let ponllPressureFlow = UILabel()
        ponllPressureFlow.text = flckinkSolidMarker(bruCiuPasteBrush.urbanPatina)
        ponllPressureFlow.textColor = PonllyPalette.muted
        ponllPressureFlow.font = PonllyFonts.steelGate(rollingShutter: 10)
        ponllPressureFlow.textAlignment = .right
        ponllPressureFlow.widthAnchor.constraint(equalToConstant: 44).isActive = true
        bruCiuBladeLine.addArrangedSubview(ponllPressureFlow)
        return bruCiuBladeLine
    }

    private func flckinkSolidMarker(_ bruCiuFanSpray: Int) -> String {
        if bruCiuFanSpray >= 1000 {
            return String(format: "%6.718f9Ka".ponllPaintaerErstHours, Double(bruCiuFanSpray) / 1000)
        }
        return "\(bruCiuFanSpray)"
    }

    @objc private func aerErstStreakMarker() {
        let ponllOversprayGlow = (flckinkPaintMarker.text ?? "").trimmingCharacters(in: .whitespacesAndNewlines)
        guard !ponllOversprayGlow.isEmpty else {
            aerErstSketchRush("Abdcdd eaf gfheiwj kwlomrndosp qbresftourvew xsyeznAdBiCnDgE.F".ponllPaintaerErstHours, bruCiuLetterForm: .ponllWhiteEdge)
            return
        }
        flckinkPrimerCoatponlu("SGeHnIdJiKnLgM.N.O.P".ponllPaintaerErstHours)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.45) {
            self.ponllClearCoat.underpassMural.insert(.init(wheatpasteLayer: "u01", gritSurface: "@QkRaSiT".ponllPaintaerErstHours, pasteupEcho: "JUuVsWtX YnZo0w1".ponllPaintaerErstHours, muralGrid: ponllOversprayGlow, urbanPatina: 0, wallTexture: false), at: 0)
            self.ponllClearCoat.paintLayer += 1
            self.flckinkPaintMarker.text = ""
            self.flckinkPaintMarker.resignFirstResponder()
            self.ponllDripMarker()
            self.bruCiuMatteFinish(self.ponllClearCoat)
            self.flckinkPrimerCoatponlu("C2o3m4m5e6n7t8 9aadbdcedde".ponllPaintaerErstHours)
        }
    }

    @objc private func bruCiuColorGlow() {
        view.endEditing(true)
    }

    @objc private func ponllBrushMarker() {
        UIView.animate(withDuration: 0.2, animations: {
            self.flckinkGlossFinish.alpha = 0
            self.aerErstMetallicSpray.transform = CGAffineTransform(translationX: 0, y: self.aerErstMetallicSpray.bounds.height)
        }) { _ in
            self.dismiss(animated: false)
        }
    }

    @objc private func bruCiuAcrylicMarker(_ flckinkDotSpray: Notification) {
        guard let aerErstLineSpray = flckinkDotSpray.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let keyboardFrame = view.convert(aerErstLineSpray, from: nil)
        let bottom = max(view.bounds.maxY - keyboardFrame.minY - view.safeAreaInsets.bottom, 0)
        UIView.animate(withDuration: 0.24, delay: 0, options: [.curveEaseOut]) {
            self.aerErstMetallicSpray.transform = CGAffineTransform(translationX: 0, y: -bottom)
        }
    }

    @objc private func flckinkEnamelPaint(_ flckinkDotSpray: Notification) {
        UIView.animate(withDuration: 0.22, delay: 0, options: [.curveEaseOut]) {
            self.aerErstMetallicSpray.transform = .identity
        }
    }
}
