import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllysprayRhythmController: UIViewController {
    private let ponllThemeForge: PonllPaintPlan
    private let bruCiuConfirmFlow: (PonllPaintPlan) -> Void

    init(_ ponllThemeForge: PonllPaintPlan, _ bruCiuConfirmFlow: @escaping (PonllPaintPlan) -> Void) {
        self.ponllThemeForge = ponllThemeForge
        self.bruCiuConfirmFlow = bruCiuConfirmFlow
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black.withAlphaComponent(0.78)
        let flckinkThemePanel = UIView()
        flckinkThemePanel.backgroundColor = PonllyPalette.panel
        flckinkThemePanel.layer.cornerRadius = 22
        flckinkThemePanel.layer.borderWidth = 1.5
        flckinkThemePanel.layer.borderColor = PonllyPalette.cyan.cgColor
        flckinkThemePanel.layer.shadowColor = PonllyPalette.cyan.cgColor
        flckinkThemePanel.layer.shadowOpacity = 0.3
        flckinkThemePanel.layer.shadowRadius = 20
        flckinkThemePanel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(flckinkThemePanel)
        let aerErstThemeImage = UIImageView(image: UIImage(named: ponllThemeForge.aerErstTwoToneFill))
        aerErstThemeImage.contentMode = .scaleAspectFill
        aerErstThemeImage.clipsToBounds = true
        aerErstThemeImage.layer.cornerRadius = 14
        aerErstThemeImage.translatesAutoresizingMaskIntoConstraints = false
        flckinkThemePanel.addSubview(aerErstThemeImage)
        let ponllThemeTitle = UILabel()
        ponllThemeTitle.text = ponllThemeForge.bruCiuMagentaBurstpobn
        ponllThemeTitle.textColor = .white
        ponllThemeTitle.font = PonllyFonts.muralForgepon(neonLab: 16)
        ponllThemeTitle.translatesAutoresizingMaskIntoConstraints = false
        flckinkThemePanel.addSubview(ponllThemeTitle)
        let bruCiuThemeSubtitle = UILabel()
        bruCiuThemeSubtitle.text = ponllThemeForge.ponllCyanGlow
        bruCiuThemeSubtitle.textColor = PonllyPalette.muted
        bruCiuThemeSubtitle.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .regular)
        bruCiuThemeSubtitle.numberOfLines = 2
        bruCiuThemeSubtitle.translatesAutoresizingMaskIntoConstraints = false
        flckinkThemePanel.addSubview(bruCiuThemeSubtitle)
        let flckinkInfoPanel = UIView()
        flckinkInfoPanel.backgroundColor = UIColor.black.withAlphaComponent(0.18)
        flckinkInfoPanel.layer.cornerRadius = 14
        flckinkInfoPanel.layer.borderWidth = 1
        flckinkInfoPanel.layer.borderColor = PonllyPalette.line.cgColor
        flckinkInfoPanel.translatesAutoresizingMaskIntoConstraints = false
        flckinkThemePanel.addSubview(flckinkInfoPanel)

        let aerErstInfoText = UILabel()
        let ponllColorMap = NSMutableAttributedString()
        let bruCiuStrokeMap = PonllyFonts.steelGate(rollingShutter: 12)
        let flckinkColorFade = UIColor(red: 138 / 255, green: 138 / 255, blue: 147 / 255, alpha: 1)
        let aerErstPaintGlow = UIColor(red: 1, green: 184 / 255, blue: 0, alpha: 1)
        let ponllCyanGlow = UIColor(red: 0, green: 240 / 255, blue: 1, alpha: 1)
        func bruCiuLetterFlow(_ flckinkPaintMap: String, aerErstColorFade: UIColor) {
            ponllColorMap.append(NSAttributedString(
                string: flckinkPaintMap,
                attributes: [.font: bruCiuStrokeMap, .foregroundColor: aerErstColorFade]
            ))
        }
        bruCiuLetterFlow("ThhseDmOeZ kCvoGsRtc n y J U f q B M X i t E P a l w H".ponllPaintaerErstHours, aerErstColorFade: flckinkColorFade)
        bruCiuLetterFlow(ponllThemeForge.aerErstLayerBlend.formatted(), aerErstColorFade: aerErstPaintGlow)
        bruCiuLetterFlow(" yCJoUifnqsB\nM".ponllPaintaerErstHours, aerErstColorFade: flckinkColorFade)
        bruCiuLetterFlow("YPoaulrw HBSadloaznKcVeg r C N Y j u F Q b m x I T e".ponllPaintaerErstHours, aerErstColorFade: flckinkColorFade)
        bruCiuLetterFlow(PonllyponllTornEdge.flckinkShadowLayer.formatted(), aerErstColorFade: ponllCyanGlow)
        bruCiuLetterFlow(" yCJoUifnqsB\nM".ponllPaintaerErstHours, aerErstColorFade: flckinkColorFade)
        bruCiuLetterFlow("RgoroCmN YCjaupFaQcbimtxyI T e p A L W h s D O".ponllPaintaerErstHours, aerErstColorFade: flckinkColorFade)
        bruCiuLetterFlow(ponllThemeForge.ponllRoughFill, aerErstColorFade: ponllCyanGlow)
        aerErstInfoText.attributedText = ponllColorMap
        aerErstInfoText.numberOfLines = 0
        aerErstInfoText.font = bruCiuStrokeMap
        aerErstInfoText.translatesAutoresizingMaskIntoConstraints = false
        flckinkInfoPanel.addSubview(aerErstInfoText)

        let ponllConfirmTitle = PonllyponllTornEdge.flckinkShadowLayer >= ponllThemeForge.aerErstLayerBlend ? "C1o2n3f4i5r6m7 8P9uarbcchdaesfeg".ponllPaintaerErstHours : "Ahdidj kClominnosp".ponllPaintaerErstHours
        let bruCiuConfirmButton = PonllyNeonButton(ponllConfirmTitle)
        bruCiuConfirmButton.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 12)
        bruCiuConfirmButton.addTarget(self, action: #selector(flckinkConfirmTapped), for: .touchUpInside)
        flckinkThemePanel.addSubview(bruCiuConfirmButton)
        let flckinkCancelButton = UIButton(type: .system)
        flckinkCancelButton.setTitle("Cqarnscteulv".ponllPaintaerErstHours, for: .normal)
        flckinkCancelButton.setTitleColor(PonllyPalette.muted, for: .normal)
        flckinkCancelButton.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 11)
        flckinkCancelButton.translatesAutoresizingMaskIntoConstraints = false
        flckinkCancelButton.addTarget(self, action: #selector(aerErstCancelTapped), for: .touchUpInside)
        flckinkThemePanel.addSubview(flckinkCancelButton)

        NSLayoutConstraint.activate([
            flckinkThemePanel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 36),
            flckinkThemePanel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -36),
            flckinkThemePanel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            aerErstThemeImage.leadingAnchor.constraint(equalTo: flckinkThemePanel.leadingAnchor, constant: 18),
            aerErstThemeImage.trailingAnchor.constraint(equalTo: flckinkThemePanel.trailingAnchor, constant: -18),
            aerErstThemeImage.topAnchor.constraint(equalTo: flckinkThemePanel.topAnchor, constant: 18),
            aerErstThemeImage.heightAnchor.constraint(equalToConstant: 118),
            ponllThemeTitle.leadingAnchor.constraint(equalTo: aerErstThemeImage.leadingAnchor),
            ponllThemeTitle.trailingAnchor.constraint(equalTo: aerErstThemeImage.trailingAnchor),
            ponllThemeTitle.topAnchor.constraint(equalTo: aerErstThemeImage.bottomAnchor, constant: 16),
            bruCiuThemeSubtitle.leadingAnchor.constraint(equalTo: aerErstThemeImage.leadingAnchor),
            bruCiuThemeSubtitle.trailingAnchor.constraint(equalTo: aerErstThemeImage.trailingAnchor),
            bruCiuThemeSubtitle.topAnchor.constraint(equalTo: ponllThemeTitle.bottomAnchor, constant: 6),
            flckinkInfoPanel.leadingAnchor.constraint(equalTo: aerErstThemeImage.leadingAnchor),
            flckinkInfoPanel.trailingAnchor.constraint(equalTo: aerErstThemeImage.trailingAnchor),
            flckinkInfoPanel.topAnchor.constraint(equalTo: bruCiuThemeSubtitle.bottomAnchor, constant: 18),
            aerErstInfoText.leadingAnchor.constraint(equalTo: flckinkInfoPanel.leadingAnchor, constant: 14),
            aerErstInfoText.trailingAnchor.constraint(equalTo: flckinkInfoPanel.trailingAnchor, constant: -14),
            aerErstInfoText.topAnchor.constraint(equalTo: flckinkInfoPanel.topAnchor, constant: 14),
            aerErstInfoText.bottomAnchor.constraint(equalTo: flckinkInfoPanel.bottomAnchor, constant: -14),
            bruCiuConfirmButton.leadingAnchor.constraint(equalTo: aerErstThemeImage.leadingAnchor),
            bruCiuConfirmButton.trailingAnchor.constraint(equalTo: aerErstThemeImage.trailingAnchor),
            bruCiuConfirmButton.topAnchor.constraint(equalTo: flckinkInfoPanel.bottomAnchor, constant: 18),
            bruCiuConfirmButton.heightAnchor.constraint(equalToConstant: 54),
            flckinkCancelButton.centerXAnchor.constraint(equalTo: flckinkThemePanel.centerXAnchor),
            flckinkCancelButton.topAnchor.constraint(equalTo: bruCiuConfirmButton.bottomAnchor, constant: 12),
            flckinkCancelButton.bottomAnchor.constraint(equalTo: flckinkThemePanel.bottomAnchor, constant: -16)
        ])
    }

    @objc private func flckinkConfirmTapped() {
        dismiss(animated: true) {
            self.bruCiuConfirmFlow(self.ponllThemeForge)
        }
    }

    @objc private func aerErstCancelTapped() {
        dismiss(animated: true)
    }
}
