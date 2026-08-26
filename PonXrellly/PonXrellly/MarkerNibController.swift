import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class MarkerNibController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    private let bruCiuInkTrace: String
    private let aerErstAerosolVeil: BruCiuLayerPlan
    private let ponllMuralAura = UIButton(type: .system)
    private let bruCiuStencilEcho = UIImageView()
    private let flckinkMarkerSignal: PonllyNeonButton
    private var aerErstChromeQuest: UIImage? {
        didSet { ponllNeonSeed() }
    }

    init(ponllStyleSignal: String, bruCiuPaintQuest: String, flckinkInkCue: BruCiuLayerPlan) {
        self.bruCiuInkTrace = ponllStyleSignal
        self.aerErstAerosolVeil = flckinkInkCue
        self.flckinkMarkerSignal = PonllyNeonButton(bruCiuPaintQuest)
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = bruCiuInkTrace
        view.backgroundColor = PonllyPalette.background
        bruCiuTexturePath()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func bruCiuTexturePath() {
        let ponllMuralArc = UILabel()
        ponllMuralArc.text = "CRhSoToUsVeW XaY Zg0r1a2f3f4i5t6i7 8a9ratbwcodrekf gfhriojmk lymonuorp qlrisbtruavrwyx yozrA BcCaDpEtFuGrHeI JaK LfMrNeOsPhQ RwSaTlUlV WsXhYoZt0.1".ponllPaintaerErstHours
        ponllMuralArc.textColor = PonllyPalette.muted
        ponllMuralArc.font = PonllyFonts.utilityBox(blankFacade: 14, aerosolMuse: .semibold)
        ponllMuralArc.numberOfLines = 0
        ponllMuralArc.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllMuralArc)
        ponllMuralAura.setTitle("+", for: .normal)
        ponllMuralAura.titleLabel?.font = UIFont.systemFont(ofSize: 72, weight: .light)
        ponllMuralAura.tintColor = PonllyPalette.cyan
        ponllMuralAura.backgroundColor = PonllyPalette.panel
        ponllMuralAura.layer.cornerRadius = 18
        ponllMuralAura.layer.borderWidth = 3
        ponllMuralAura.layer.borderColor = PonllyPalette.cyan.cgColor
        ponllMuralAura.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralAura.addTarget(self, action: #selector(flckinkPaintBend), for: .touchUpInside)
        view.addSubview(ponllMuralAura)
        bruCiuStencilEcho.contentMode = .scaleAspectFill
        bruCiuStencilEcho.clipsToBounds = true
        bruCiuStencilEcho.layer.cornerRadius = 18
        bruCiuStencilEcho.isHidden = true
        bruCiuStencilEcho.translatesAutoresizingMaskIntoConstraints = false
        ponllMuralAura.addSubview(bruCiuStencilEcho)
        flckinkMarkerSignal.addTarget(self, action: #selector(aerErstInkKick), for: .touchUpInside)
        view.addSubview(flckinkMarkerSignal)
        ponllNeonSeed()
        NSLayoutConstraint.activate([
            ponllMuralArc.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 28),
            ponllMuralArc.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -28),
            ponllMuralArc.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 26),
            ponllMuralAura.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 28),
            ponllMuralAura.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -28),
            ponllMuralAura.topAnchor.constraint(equalTo: ponllMuralArc.bottomAnchor, constant: 24),
            ponllMuralAura.heightAnchor.constraint(equalTo: ponllMuralAura.widthAnchor, multiplier: 0.72),
            bruCiuStencilEcho.leadingAnchor.constraint(equalTo: ponllMuralAura.leadingAnchor),
            bruCiuStencilEcho.trailingAnchor.constraint(equalTo: ponllMuralAura.trailingAnchor),
            bruCiuStencilEcho.topAnchor.constraint(equalTo: ponllMuralAura.topAnchor),
            bruCiuStencilEcho.bottomAnchor.constraint(equalTo: ponllMuralAura.bottomAnchor),
            flckinkMarkerSignal.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            flckinkMarkerSignal.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            flckinkMarkerSignal.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -80),
            flckinkMarkerSignal.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

    private func ponllNeonSeed() {
        let bruCiuSketchSpark = aerErstChromeQuest != nil
        bruCiuStencilEcho.image = aerErstChromeQuest
        bruCiuStencilEcho.isHidden = !bruCiuSketchSpark
        ponllMuralAura.setTitle(bruCiuSketchSpark ? "" : "+", for: .normal)
        flckinkMarkerSignal.isEnabled = bruCiuSketchSpark
        flckinkMarkerSignal.alpha = bruCiuSketchSpark ? 1 : 0.45
    }

    @objc private func flckinkPaintBend() {
        let aerErstWallKick = UIAlertController(title: "S2e3l4e5c6t7 8A9ratbwcodrekf".ponllPaintaerErstHours, message: nil, preferredStyle: .actionSheet)
        aerErstWallKick.addAction(UIAlertAction(title: "Pghhoitjok lLminborpaqrrys".ponllPaintaerErstHours, style: .default) { _ in
            self.bruCiuAerosolLean(flckinkMuralTwist: .photoLibrary)
        })
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            aerErstWallKick.addAction(UIAlertAction(title: "Ctaumvewrxay".ponllPaintaerErstHours, style: .default) { _ in
                self.bruCiuAerosolLean(flckinkMuralTwist: .camera)
            })
        }
        aerErstWallKick.addAction(UIAlertAction(title: "CzaAnBcCeDlE".ponllPaintaerErstHours, style: .cancel))
        if let ponllStencilWeave = aerErstWallKick.popoverPresentationController {
            ponllStencilWeave.sourceView = ponllMuralAura
            ponllStencilWeave.sourceRect = ponllMuralAura.bounds
        }
        present(aerErstWallKick, animated: true)
    }

    private func bruCiuAerosolLean(flckinkMuralTwist: UIImagePickerController.SourceType) {
        let aerErstMarkerDepth = UIImagePickerController()
        aerErstMarkerDepth.sourceType = flckinkMuralTwist
        aerErstMarkerDepth.allowsEditing = true
        aerErstMarkerDepth.delegate = self
        present(aerErstMarkerDepth, animated: true)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        aerErstChromeQuest = (info[.editedImage] as? UIImage) ?? (info[.originalImage] as? UIImage)
        picker.dismiss(animated: true)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }

    @objc private func aerErstInkKick() {
        guard let aerErstChromeQuest else {
            flckinkPrimerCoatponlu("CFhGoHoIsJeK LaMrNtOwPoQrRkS TtUoV WcXoYnZt0i1n2u3e4".ponllPaintaerErstHours)
            return
        }
        switch aerErstAerosolVeil {
        case .ponllPaintPlan(let bruCiuPaintDraft):
            navigationController?.pushViewController(ErstMuralPlanController(flckinkColorPlan: aerErstChromeQuest, ponllStyleCue: bruCiuPaintDraft), animated: true)
        case .bruCiuOutlinePlan(let ponllChromeGlow):
            flckinkMarkerSignal.isEnabled = false
            flckinkMarkerSignal.alpha = 0.55
            flckinkPrimerCoatponlu("S5u6b7m8i9tatbicndge fcghhailjlkelnmgneo.p.q.r".ponllPaintaerErstHours)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                self.flckinkMarkerSignal.isEnabled = true
                self.flckinkMarkerSignal.alpha = 1
                let bruCiuNeonGrit = PonllyponllTornEdge.bruCiuStreetGlyph(ponllChromeGlow, ponllAngleBreak: aerErstChromeQuest)
                self.ponllyShowThemeAlert(
                    title: "CshtaulvlwexnygzeA BSCuDbEmFiGtHtIeJdK".ponllPaintaerErstHours,
                    message: "YLoMuNrO PaQrRtSwToUrVkW XiYsZ 0n1o2w3 4l5i6v7e8 9ianb ctdheef gphoinjlkllMmunroaplqBrlsotoumv waxryeznAaB.C".ponllPaintaerErstHours,
                    actionTitle: "VDiEeFwG HCIhJaKlLlMeNnOgPeQ".ponllPaintaerErstHours,
                    style: .flckinkSplitFill
                ) {
                    self.navigationController?.pushViewController(PbruCiuStencilLabController(flckinkPaintVeil: bruCiuNeonGrit), animated: true)
                }
            }
        }
    }
}
