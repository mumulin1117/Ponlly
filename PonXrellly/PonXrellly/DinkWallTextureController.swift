import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class DinkWallTextureController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate, UITextViewDelegate {
    private let bruCiuRippedCorner = UIScrollView()
    private let flckinkPasteWrinkle = UIButton(type: .system)
    private let aerErstAdhesiveLayer = UIImageView()
    private let ponllWallPeel = UIView()
    private let bruCiuPaintPeel = UILabel()
    private let flckinkChippedPaint = UIButton(type: .system)
    private let aerErstCrackedWall = UITextField()
    private let ponllBrickCrack = UITextView()
    private let bruCiuCementRough = PonllyNeonButton("Publish Video")
    private let flckinkFreightPanel = UIStackView()
    private var flckinkPlasterDust = AerErstFillPlan(ponllMetallicSpraypon: "", aerErstGlossFinishpon: "", flckinkMatteFinishpon: ["#StreetArt", "#Graffiti", "#Wildstyle"], bruCiuClearCoatpon: nil, ponllFinalCoatpon: nil, aerErstPaintBasepon: nil)
    private let aerErstRustStreak = "Tell The Story Behind This Piece..."

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Publish Video"
        view.backgroundColor = PonllyPalette.background
        ponllMetalPanel()
        bruCiuGarageDoor()
        flckinkShutterPanel()
        NotificationCenter.default.addObserver(self, selector: #selector(aerErstFreightPanel(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(ponllAlleyDoor(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func ponllMetalPanel() {
        bruCiuRippedCorner.keyboardDismissMode = .onDrag
        bruCiuRippedCorner.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bruCiuRippedCorner)
        let bruCiuSidewalkEdge = UIStackView()
        bruCiuSidewalkEdge.axis = .vertical
        bruCiuSidewalkEdge.spacing = 22
        bruCiuSidewalkEdge.translatesAutoresizingMaskIntoConstraints = false
        bruCiuRippedCorner.addSubview(bruCiuSidewalkEdge)

        let flckinkCurbLine = UIView()
        flckinkCurbLine.translatesAutoresizingMaskIntoConstraints = false
        flckinkPasteWrinkle.backgroundColor = PonllyPalette.panel
        flckinkPasteWrinkle.layer.cornerRadius = 24
        flckinkPasteWrinkle.layer.borderWidth = 1
        flckinkPasteWrinkle.layer.borderColor = PonllyPalette.line.cgColor
        flckinkPasteWrinkle.clipsToBounds = true
        flckinkPasteWrinkle.translatesAutoresizingMaskIntoConstraints = false
        flckinkPasteWrinkle.addTarget(self, action: #selector(aerErstDrainCover), for: .touchUpInside)
        flckinkCurbLine.addSubview(flckinkPasteWrinkle)
        aerErstAdhesiveLayer.contentMode = .scaleAspectFill
        aerErstAdhesiveLayer.clipsToBounds = true
        aerErstAdhesiveLayer.translatesAutoresizingMaskIntoConstraints = false
        flckinkPasteWrinkle.addSubview(aerErstAdhesiveLayer)
        let ponllPipeShadow = UILabel()
        ponllPipeShadow.text = "+"
        ponllPipeShadow.textColor = PonllyPalette.cyan
        ponllPipeShadow.textAlignment = .center
        ponllPipeShadow.font = UIFont.systemFont(ofSize: 66, weight: .light)
        ponllPipeShadow.tag = 1207
        ponllPipeShadow.translatesAutoresizingMaskIntoConstraints = false
        flckinkPasteWrinkle.addSubview(ponllPipeShadow)
        ponllWallPeel.backgroundColor = UIColor.black.withAlphaComponent(0.35)
        ponllWallPeel.layer.cornerRadius = 42
        ponllWallPeel.layer.borderWidth = 3
        ponllWallPeel.layer.borderColor = PonllyPalette.cyan.cgColor
        ponllWallPeel.translatesAutoresizingMaskIntoConstraints = false
        flckinkPasteWrinkle.addSubview(ponllWallPeel)
        let bruCiuFireEscape = UIImageView(image: UIImage(systemName: "play.fill"))
        bruCiuFireEscape.tintColor = .white
        bruCiuFireEscape.contentMode = .scaleAspectFit
        bruCiuFireEscape.translatesAutoresizingMaskIntoConstraints = false
        ponllWallPeel.addSubview(bruCiuFireEscape)
        bruCiuPaintPeel.textColor = PonllyPalette.cyan
        bruCiuPaintPeel.backgroundColor = UIColor.black.withAlphaComponent(0.55)
        bruCiuPaintPeel.textAlignment = .center
        bruCiuPaintPeel.font = PonllyFonts.steelGate(rollingShutter: 12)
        bruCiuPaintPeel.layer.cornerRadius = 10
        bruCiuPaintPeel.clipsToBounds = true
        bruCiuPaintPeel.translatesAutoresizingMaskIntoConstraints = false
        flckinkPasteWrinkle.addSubview(bruCiuPaintPeel)
        flckinkChippedPaint.setTitle("↻  Replace Video", for: .normal)
        flckinkChippedPaint.setTitleColor(PonllyPalette.cyan, for: .normal)
        flckinkChippedPaint.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 12)
        flckinkChippedPaint.translatesAutoresizingMaskIntoConstraints = false
        flckinkChippedPaint.addTarget(self, action: #selector(aerErstDrainCover), for: .touchUpInside)
        flckinkCurbLine.addSubview(flckinkChippedPaint)

        ponllRoofLine()
        bruCiuWarehouseWall()
        bruCiuSidewalkEdge.addArrangedSubview(flckinkCurbLine)
        bruCiuSidewalkEdge.addArrangedSubview(flckinkTunnelWall(ponllBridgePillar: "Video Title", bruCiuUnderpassBeam: aerErstCrackedWall))
        bruCiuSidewalkEdge.addArrangedSubview(flckinkTunnelWall(ponllBridgePillar: "Video Description", bruCiuUnderpassBeam: ponllBrickCrack))
        bruCiuSidewalkEdge.addArrangedSubview(aerErstConcreteColumn())
        let ponllBrickFacade = UIView()
        ponllBrickFacade.translatesAutoresizingMaskIntoConstraints = false
        ponllBrickFacade.heightAnchor.constraint(greaterThanOrEqualToConstant: 118).isActive = true
        bruCiuSidewalkEdge.addArrangedSubview(ponllBrickFacade)
        bruCiuCementRough.addTarget(self, action: #selector(bruCiuPaintedFence), for: .touchUpInside)
        view.addSubview(bruCiuCementRough)

        NSLayoutConstraint.activate([
            bruCiuRippedCorner.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bruCiuRippedCorner.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bruCiuRippedCorner.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            bruCiuRippedCorner.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bruCiuSidewalkEdge.leadingAnchor.constraint(equalTo: bruCiuRippedCorner.frameLayoutGuide.leadingAnchor, constant: 22),
            bruCiuSidewalkEdge.trailingAnchor.constraint(equalTo: bruCiuRippedCorner.frameLayoutGuide.trailingAnchor, constant: -22),
            bruCiuSidewalkEdge.topAnchor.constraint(equalTo: bruCiuRippedCorner.contentLayoutGuide.topAnchor, constant: 24),
            bruCiuSidewalkEdge.bottomAnchor.constraint(equalTo: bruCiuRippedCorner.contentLayoutGuide.bottomAnchor, constant: -120),
            flckinkCurbLine.heightAnchor.constraint(equalToConstant: 308),
            flckinkPasteWrinkle.leadingAnchor.constraint(equalTo: flckinkCurbLine.leadingAnchor),
            flckinkPasteWrinkle.trailingAnchor.constraint(equalTo: flckinkCurbLine.trailingAnchor),
            flckinkPasteWrinkle.topAnchor.constraint(equalTo: flckinkCurbLine.topAnchor),
            flckinkPasteWrinkle.heightAnchor.constraint(equalToConstant: 230),
            aerErstAdhesiveLayer.leadingAnchor.constraint(equalTo: flckinkPasteWrinkle.leadingAnchor),
            aerErstAdhesiveLayer.trailingAnchor.constraint(equalTo: flckinkPasteWrinkle.trailingAnchor),
            aerErstAdhesiveLayer.topAnchor.constraint(equalTo: flckinkPasteWrinkle.topAnchor),
            aerErstAdhesiveLayer.bottomAnchor.constraint(equalTo: flckinkPasteWrinkle.bottomAnchor),
            ponllPipeShadow.centerXAnchor.constraint(equalTo: flckinkPasteWrinkle.centerXAnchor),
            ponllPipeShadow.centerYAnchor.constraint(equalTo: flckinkPasteWrinkle.centerYAnchor),
            ponllWallPeel.centerXAnchor.constraint(equalTo: flckinkPasteWrinkle.centerXAnchor),
            ponllWallPeel.centerYAnchor.constraint(equalTo: flckinkPasteWrinkle.centerYAnchor),
            ponllWallPeel.widthAnchor.constraint(equalToConstant: 84),
            ponllWallPeel.heightAnchor.constraint(equalToConstant: 84),
            bruCiuFireEscape.centerXAnchor.constraint(equalTo: ponllWallPeel.centerXAnchor, constant: 2),
            bruCiuFireEscape.centerYAnchor.constraint(equalTo: ponllWallPeel.centerYAnchor),
            bruCiuFireEscape.widthAnchor.constraint(equalToConstant: 28),
            bruCiuFireEscape.heightAnchor.constraint(equalToConstant: 28),
            bruCiuPaintPeel.trailingAnchor.constraint(equalTo: flckinkPasteWrinkle.trailingAnchor, constant: -18),
            bruCiuPaintPeel.bottomAnchor.constraint(equalTo: flckinkPasteWrinkle.bottomAnchor, constant: -18),
            bruCiuPaintPeel.widthAnchor.constraint(greaterThanOrEqualToConstant: 76),
            bruCiuPaintPeel.heightAnchor.constraint(equalToConstant: 36),
            flckinkChippedPaint.centerXAnchor.constraint(equalTo: flckinkCurbLine.centerXAnchor),
            flckinkChippedPaint.topAnchor.constraint(equalTo: flckinkPasteWrinkle.bottomAnchor, constant: 18),
            aerErstCrackedWall.heightAnchor.constraint(equalToConstant: 58),
            ponllBrickCrack.heightAnchor.constraint(equalToConstant: 116),
            bruCiuCementRough.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 22),
            bruCiuCementRough.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -22),
            bruCiuCementRough.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -26),
            bruCiuCementRough.heightAnchor.constraint(equalToConstant: 58)
        ])
    }

    private func ponllRoofLine() {
        aerErstCrackedWall.placeholder = "Name Your Video..."
        aerErstCrackedWall.textColor = .white
        aerErstCrackedWall.font = PonllyFonts.utilityBox(blankFacade: 16, aerosolMuse: .medium)
        aerErstCrackedWall.backgroundColor = PonllyPalette.panel
        aerErstCrackedWall.layer.cornerRadius = 18
        aerErstCrackedWall.layer.borderWidth = 1
        aerErstCrackedWall.layer.borderColor = PonllyPalette.line.cgColor
        aerErstCrackedWall.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 1))
        aerErstCrackedWall.leftViewMode = .always
        aerErstCrackedWall.delegate = self
        aerErstCrackedWall.addTarget(self, action: #selector(aerErstSteelGate), for: .editingChanged)
    }

    private func bruCiuWarehouseWall() {
        ponllBrickCrack.text = aerErstRustStreak
        ponllBrickCrack.textColor = PonllyPalette.muted
        ponllBrickCrack.font = PonllyFonts.utilityBox(blankFacade: 16, aerosolMuse: .medium)
        ponllBrickCrack.backgroundColor = PonllyPalette.panel
        ponllBrickCrack.layer.cornerRadius = 18
        ponllBrickCrack.layer.borderWidth = 1
        ponllBrickCrack.layer.borderColor = PonllyPalette.line.cgColor
        ponllBrickCrack.textContainerInset = UIEdgeInsets(top: 18, left: 14, bottom: 18, right: 14)
        ponllBrickCrack.delegate = self
    }

    private func flckinkTunnelWall(ponllBridgePillar: String, bruCiuUnderpassBeam: UIView) -> UIStackView {
        let flckinkConcreteColumn = UIStackView()
        flckinkConcreteColumn.axis = .vertical
        flckinkConcreteColumn.spacing = 10
        let aerErstBrickFacade = UILabel()
        aerErstBrickFacade.text = ponllBridgePillar
        aerErstBrickFacade.textColor = PonllyPalette.muted
        aerErstBrickFacade.font = PonllyFonts.muralForgepon(neonLab: 14)
        flckinkConcreteColumn.addArrangedSubview(aerErstBrickFacade)
        flckinkConcreteColumn.addArrangedSubview(bruCiuUnderpassBeam)
        return flckinkConcreteColumn
    }

    private func aerErstConcreteColumn() -> UIStackView {
        let ponllWoodPanel = UIStackView()
        ponllWoodPanel.axis = .vertical
        ponllWoodPanel.spacing = 12
        let bruCiuSteelGate = UILabel()
        bruCiuSteelGate.text = "Hashtags"
        bruCiuSteelGate.textColor = PonllyPalette.muted
        bruCiuSteelGate.font = PonllyFonts.muralForgepon(neonLab: 14)
        ponllWoodPanel.addArrangedSubview(bruCiuSteelGate)
        flckinkFreightPanel.axis = .vertical
        flckinkFreightPanel.spacing = 10
        ponllWoodPanel.addArrangedSubview(flckinkFreightPanel)
        bruCiuRefreshTags()
        let ponllTrafficBarrier = UIButton(type: .system)
        ponllTrafficBarrier.setTitle("+ Add Tag", for: .normal)
        ponllTrafficBarrier.setTitleColor(PonllyPalette.pink, for: .normal)
        ponllTrafficBarrier.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 14)
        ponllTrafficBarrier.layer.cornerRadius = 14
        ponllTrafficBarrier.layer.borderWidth = 1
        ponllTrafficBarrier.layer.borderColor = PonllyPalette.pink.cgColor
        ponllTrafficBarrier.heightAnchor.constraint(equalToConstant: 48).isActive = true
        ponllTrafficBarrier.widthAnchor.constraint(equalToConstant: 154).isActive = true
        ponllTrafficBarrier.addTarget(self, action: #selector(bruCiuSignBack), for: .touchUpInside)
        ponllWoodPanel.addArrangedSubview(ponllTrafficBarrier)
        return ponllWoodPanel
    }

    private func aerErstUtilityBox(_ ponllBlankFacade: String) -> UILabel {
        let bruCiuNightWall = UILabel()
        bruCiuNightWall.text = ponllBlankFacade
        bruCiuNightWall.textColor = PonllyPalette.cyan
        bruCiuNightWall.textAlignment = .center
        bruCiuNightWall.font = PonllyFonts.steelGate(rollingShutter: 14)
        bruCiuNightWall.backgroundColor = PonllyPalette.panel
        bruCiuNightWall.layer.cornerRadius = 12
        bruCiuNightWall.layer.borderWidth = 1
        bruCiuNightWall.layer.borderColor = PonllyPalette.line.cgColor
        bruCiuNightWall.clipsToBounds = true
        bruCiuNightWall.heightAnchor.constraint(equalToConstant: 46).isActive = true
        bruCiuNightWall.widthAnchor.constraint(greaterThanOrEqualToConstant: 96).isActive = true
        return bruCiuNightWall
    }

    private func bruCiuGarageDoor() {
        aerErstAdhesiveLayer.image = flckinkPlasterDust.ponllFinalCoatpon
        let flckinkDawnWall = flckinkPlasterDust.bruCiuClearCoatpon != nil
        aerErstAdhesiveLayer.isHidden = !flckinkDawnWall
        ponllWallPeel.isHidden = !flckinkDawnWall
        bruCiuPaintPeel.isHidden = !flckinkDawnWall
        bruCiuPaintPeel.text = flckinkPlasterDust.aerErstPaintBasepon
        flckinkChippedPaint.setTitle(flckinkDawnWall ? "↻  Replace Video" : "+  Upload Video", for: .normal)
        flckinkPasteWrinkle.viewWithTag(1207)?.isHidden = flckinkDawnWall
    }

    private func flckinkShutterPanel() {
        bruCiuCementRough.isEnabled = true
        bruCiuCementRough.alpha = 1
        bruCiuCementRough.setTitleColor(.black, for: .normal)
    }

    @objc private func aerErstDrainCover() {
        let bruCiuShadowWall = UIImagePickerController()
        bruCiuShadowWall.sourceType = .photoLibrary
        bruCiuShadowWall.mediaTypes = ["public.movie"]
        bruCiuShadowWall.videoQuality = .typeHigh
        bruCiuShadowWall.delegate = self
        present(bruCiuShadowWall, animated: true)
    }

    func imagePickerController(_ flckinkHiddenWall: UIImagePickerController, didFinishPickingMediaWithInfo aerErstLegalWall: [UIImagePickerController.InfoKey: Any]) {
        if let bruCiuPracticeWall = aerErstLegalWall[.mediaURL] as? URL {
            flckinkPlasterDust.bruCiuClearCoatpon = bruCiuPracticeWall
            flckinkPlasterDust.ponllFinalCoatpon = ponllStudioWall(bruCiuCanvasWall: bruCiuPracticeWall)
            flckinkPlasterDust.aerErstPaintBasepon = flckinkSketchWall(bruCiuCanvasWall: bruCiuPracticeWall)
        }
        bruCiuGarageDoor()
        flckinkShutterPanel()
        flckinkHiddenWall.dismiss(animated: true)
    }

    func imagePickerControllerDidCancel(_ aerErstMuralWall: UIImagePickerController) {
        aerErstMuralWall.dismiss(animated: true)
    }

    private func ponllStudioWall(bruCiuCanvasWall: URL) -> UIImage? {
        let flckinkLetterWall = AVURLAsset(url: bruCiuCanvasWall)
        let aerErstColorWall = AVAssetImageGenerator(asset: flckinkLetterWall)
        aerErstColorWall.appliesPreferredTrackTransform = true
        if let ponllTextureWall = try? aerErstColorWall.copyCGImage(at: CMTime(seconds: 0.5, preferredTimescale: 600), actualTime: nil) {
            return UIImage(cgImage: ponllTextureWall)
        }
        return UIImage(named: "graffiti_challenge_wall_05")
    }

    private func flckinkSketchWall(bruCiuCanvasWall: URL) -> String {
        let bruCiuPaintMap = Int(CMTimeGetSeconds(AVURLAsset(url: bruCiuCanvasWall).duration))
        guard bruCiuPaintMap > 0 else { return "0:00" }
        return String(format: "%d:%02d", bruCiuPaintMap / 60, bruCiuPaintMap % 60)
    }

    @objc private func aerErstSteelGate() {
        flckinkPlasterDust.ponllMetallicSpraypon = aerErstCrackedWall.text ?? ""
        flckinkShutterPanel()
    }

    @objc private func bruCiuSignBack() {
        view.endEditing(true)
        guard flckinkPlasterDust.flckinkMatteFinishpon.count < 5 else {
            flckinkPrimerCoatponlu("Please keep up to five tags")
            return
        }
        let ponllSheet = UIAlertController(title: "Add Tag", message: "Add a short graffiti tag for this video.", preferredStyle: .alert)
        ponllSheet.addTextField { flckinkField in
            flckinkField.placeholder = "#ChromeLetters"
            flckinkField.textColor = .label
            flckinkField.autocapitalizationType = .words
            flckinkField.returnKeyType = .done
        }
        ponllSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        ponllSheet.addAction(UIAlertAction(title: "Add", style: .default) { [weak self, weak ponllSheet] _ in
            guard let self else { return }
            let bruCiuRawTag = ponllSheet?.textFields?.first?.text ?? ""
            guard let aerErstTag = self.aerErstNormalizedTag(bruCiuRawTag) else {
                self.flckinkPrimerCoatponlu("Please enter a tag")
                return
            }
            guard !self.flckinkPlasterDust.flckinkMatteFinishpon.contains(where: { $0.caseInsensitiveCompare(aerErstTag) == .orderedSame }) else {
                self.flckinkPrimerCoatponlu("Tag already added")
                return
            }
            self.flckinkPlasterDust.flckinkMatteFinishpon.append(aerErstTag)
            self.bruCiuRefreshTags()
            self.flckinkPrimerCoatponlu("Tag added")
        })
        present(ponllSheet, animated: true)
    }

    @objc private func bruCiuPaintedFence() {
        view.endEditing(true)
        flckinkPlasterDust.ponllMetallicSpraypon = aerErstCrackedWall.text?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
        flckinkPlasterDust.aerErstGlossFinishpon = ponllDescriptionText()
        guard flckinkPlasterDust.bruCiuClearCoatpon != nil else {
            flckinkPrimerCoatponlu("Please choose a video")
            return
        }
        guard !flckinkPlasterDust.ponllMetallicSpraypon.isEmpty else {
            flckinkPrimerCoatponlu("Please add a video title")
            return
        }
        guard !flckinkPlasterDust.aerErstGlossFinishpon.isEmpty else {
            flckinkPrimerCoatponlu("Please add a video description")
            return
        }
        bruCiuCementRough.isEnabled = false
        flckinkPrimerCoatponlu("Publishing video...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
            self.bruCiuCementRough.isEnabled = true
            self.flckinkPrimerCoatponlu("Video published")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.navigationController?.popToRootViewController(animated: true)
            }
        }
    }

    func textViewDidBeginEditing(_ flckinkWallMap: UITextView) {
        if flckinkWallMap.text == aerErstRustStreak {
            flckinkWallMap.text = ""
            flckinkWallMap.textColor = .white
        }
    }

    func textViewDidEndEditing(_ aerErstStyleMap: UITextView) {
        if aerErstStyleMap.text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            aerErstStyleMap.text = aerErstRustStreak
            aerErstStyleMap.textColor = PonllyPalette.muted
        }
        flckinkPlasterDust.aerErstGlossFinishpon = ponllDescriptionText()
    }

    func textViewDidChange(_ flckinkWallMap: UITextView) {
        flckinkPlasterDust.aerErstGlossFinishpon = ponllDescriptionText()
    }

    private func ponllDescriptionText() -> String {
        let bruCiuText = ponllBrickCrack.text.trimmingCharacters(in: .whitespacesAndNewlines)
        return bruCiuText == aerErstRustStreak ? "" : bruCiuText
    }

    private func aerErstNormalizedTag(_ ponllRawTag: String) -> String? {
        let bruCiuTag = ponllRawTag
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .replacingOccurrences(of: "#", with: "")
            .components(separatedBy: .whitespacesAndNewlines)
            .joined()
        guard !bruCiuTag.isEmpty else { return nil }
        return "#\(String(bruCiuTag.prefix(22)))"
    }

    private func bruCiuRefreshTags() {
        flckinkFreightPanel.arrangedSubviews.forEach { bruCiuView in
            flckinkFreightPanel.removeArrangedSubview(bruCiuView)
            bruCiuView.removeFromSuperview()
        }
        for ponllIndex in stride(from: 0, to: flckinkPlasterDust.flckinkMatteFinishpon.count, by: 2) {
            let aerErstRow = UIStackView()
            aerErstRow.axis = .horizontal
            aerErstRow.spacing = 10
            aerErstRow.distribution = .fillEqually
            for bruCiuOffset in 0..<2 {
                let flckinkTagIndex = ponllIndex + bruCiuOffset
                if flckinkTagIndex < flckinkPlasterDust.flckinkMatteFinishpon.count {
                    aerErstRow.addArrangedSubview(aerErstUtilityBox(flckinkPlasterDust.flckinkMatteFinishpon[flckinkTagIndex]))
                } else {
                    aerErstRow.addArrangedSubview(UIView())
                }
            }
            flckinkFreightPanel.addArrangedSubview(aerErstRow)
        }
    }

    @objc private func aerErstFreightPanel(_ ponllColorMap: Notification) {
        guard let bruCiuLineMap = ponllColorMap.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let flckinkShapeMap = max(bruCiuLineMap.height - view.safeAreaInsets.bottom, 0) + 90
        bruCiuRippedCorner.contentInset.bottom = flckinkShapeMap
        bruCiuRippedCorner.verticalScrollIndicatorInsets.bottom = flckinkShapeMap
    }

    @objc private func ponllAlleyDoor(_ aerErstDripMap: Notification) {
        bruCiuRippedCorner.contentInset.bottom = 120
        bruCiuRippedCorner.verticalScrollIndicatorInsets.bottom = 0
    }
}
