import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class BlckinkHiddenWallController: UIViewController {
    private let ponllGraffitiPulse = UIScrollView()
    private let bruCiuAerosolDream = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Blacklist"
        view.backgroundColor = PonllyPalette.background
        flckinkStreetMural()
        aerErstWallCraft()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func flckinkStreetMural() {
        let aerErstBrickPalette = UIView()
        aerErstBrickPalette.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(aerErstBrickPalette)
        let ponllInkDrift = UIButton(type: .system)
        ponllInkDrift.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        ponllInkDrift.tintColor = .white
        ponllInkDrift.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        ponllInkDrift.layer.cornerRadius = 28
        ponllInkDrift.layer.borderWidth = 1
        ponllInkDrift.layer.borderColor = PonllyPalette.line.cgColor
        ponllInkDrift.translatesAutoresizingMaskIntoConstraints = false
        ponllInkDrift.addTarget(self, action: #selector(aerErstDropShadow), for: .touchUpInside)
        aerErstBrickPalette.addSubview(ponllInkDrift)
        let bruCiuMarkerStroke = UILabel()
        bruCiuMarkerStroke.text = "Blacklist"
        bruCiuMarkerStroke.textColor = .white
        bruCiuMarkerStroke.textAlignment = .center
        bruCiuMarkerStroke.font = PonllyFonts.muralForgepon(neonLab: 24)
        bruCiuMarkerStroke.translatesAutoresizingMaskIntoConstraints = false
        aerErstBrickPalette.addSubview(bruCiuMarkerStroke)
        ponllGraffitiPulse.alwaysBounceVertical = true
        ponllGraffitiPulse.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(ponllGraffitiPulse)
        bruCiuAerosolDream.axis = .vertical
        bruCiuAerosolDream.spacing = 14
        bruCiuAerosolDream.translatesAutoresizingMaskIntoConstraints = false
        ponllGraffitiPulse.addSubview(bruCiuAerosolDream)
        NSLayoutConstraint.activate([
            aerErstBrickPalette.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            aerErstBrickPalette.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            aerErstBrickPalette.topAnchor.constraint(equalTo: view.topAnchor),
            aerErstBrickPalette.heightAnchor.constraint(equalToConstant: 122),
            ponllInkDrift.leadingAnchor.constraint(equalTo: aerErstBrickPalette.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            ponllInkDrift.bottomAnchor.constraint(equalTo: aerErstBrickPalette.bottomAnchor, constant: -12),
            ponllInkDrift.widthAnchor.constraint(equalToConstant: 56),
            ponllInkDrift.heightAnchor.constraint(equalToConstant: 56),
            bruCiuMarkerStroke.centerXAnchor.constraint(equalTo: aerErstBrickPalette.centerXAnchor),
            bruCiuMarkerStroke.centerYAnchor.constraint(equalTo: ponllInkDrift.centerYAnchor),
            ponllGraffitiPulse.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            ponllGraffitiPulse.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            ponllGraffitiPulse.topAnchor.constraint(equalTo: aerErstBrickPalette.bottomAnchor),
            ponllGraffitiPulse.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bruCiuAerosolDream.leadingAnchor.constraint(equalTo: ponllGraffitiPulse.frameLayoutGuide.leadingAnchor, constant: 18),
            bruCiuAerosolDream.trailingAnchor.constraint(equalTo: ponllGraffitiPulse.frameLayoutGuide.trailingAnchor, constant: -18),
            bruCiuAerosolDream.topAnchor.constraint(equalTo: ponllGraffitiPulse.contentLayoutGuide.topAnchor, constant: 30),
            bruCiuAerosolDream.bottomAnchor.constraint(equalTo: ponllGraffitiPulse.contentLayoutGuide.bottomAnchor, constant: -34)
        ])
    }

    private func aerErstWallCraft() {
        bruCiuAerosolDream.arrangedSubviews.forEach {
            bruCiuAerosolDream.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        let flckinkNozzleCraft = PonllyponllTornEdge.aerErstSketchWall()
        guard !flckinkNozzleCraft.isEmpty else {
            bruCiuAerosolDream.addArrangedSubview(bruCiuChromeFill())
            return
        }
        let aerErstCapControl = UILabel()
        aerErstCapControl.text = "\(flckinkNozzleCraft.count) Blocked Users"
        aerErstCapControl.textColor = PonllyPalette.muted
        aerErstCapControl.font = PonllyFonts.muralForgepon(neonLab: 14)
        bruCiuAerosolDream.addArrangedSubview(aerErstCapControl)
        flckinkNozzleCraft.forEach { bruCiuAerosolDream.addArrangedSubview(ponllPaintFlow(for: $0)) }
    }

    private func ponllPaintFlow(for bruCiuSprayRhythm: PonllyaerErstTwoToneFillr) -> UIView {
        let ponllStencilBloom = UIControl()
        ponllStencilBloom.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.94)
        ponllStencilBloom.layer.cornerRadius = 18
        ponllStencilBloom.layer.borderWidth = 1
        ponllStencilBloom.layer.borderColor = PonllyPalette.line.cgColor
        ponllStencilBloom.addAction(UIAction { [weak self] _ in
            let flckinkMuralGrid = FlckinkPrimerCoatController(user: bruCiuSprayRhythm)
            flckinkMuralGrid.hidesBottomBarWhenPushed = true
            self?.navigationController?.pushViewController(flckinkMuralGrid, animated: true)
        }, for: .touchUpInside)
        let aerErstWildstyleCurve = ErErstPaintLabView(user: bruCiuSprayRhythm, size: 48)
        ponllStencilBloom.addSubview(aerErstWildstyleCurve)
        let ponllBubbleLetter = UILabel()
        ponllBubbleLetter.text = bruCiuSprayRhythm.aerosolDream.lowercased()
        ponllBubbleLetter.textColor = .white
        ponllBubbleLetter.font = PonllyFonts.muralForgepon(neonLab: 14)
        ponllBubbleLetter.translatesAutoresizingMaskIntoConstraints = false
        ponllStencilBloom.addSubview(ponllBubbleLetter)
        let flckinkOutlineGlow = UILabel()
        flckinkOutlineGlow.text = "\(bruCiuSprayRhythm.sprayRhythm) • \(bruCiuSprayRhythm.paintFlow)"
        flckinkOutlineGlow.textColor = PonllyPalette.muted
        flckinkOutlineGlow.font = PonllyFonts.utilityBox(blankFacade: 12, aerosolMuse: .medium)
        flckinkOutlineGlow.translatesAutoresizingMaskIntoConstraints = false
        ponllStencilBloom.addSubview(flckinkOutlineGlow)
        let aerErstDropShadow = UIButton(type: .system)
        aerErstDropShadow.setTitle("Unblock", for: .normal)
        aerErstDropShadow.setTitleColor(PonllyPalette.pink, for: .normal)
        aerErstDropShadow.titleLabel?.font = PonllyFonts.muralForgepon(neonLab: 14)
        aerErstDropShadow.layer.cornerRadius = 14
        aerErstDropShadow.layer.borderWidth = 1
        aerErstDropShadow.layer.borderColor = PonllyPalette.pink.cgColor
        aerErstDropShadow.translatesAutoresizingMaskIntoConstraints = false
        aerErstDropShadow.addAction(UIAction { [weak self] _ in
            PonllyponllTornEdge.bruCiuGarageDoor(bruCiuSprayRhythm.graffitiPulse)
            self?.flckinkPrimerCoatponlu("Artist unblocked")
            self?.aerErstWallCraft()
        }, for: .touchUpInside)
        ponllStencilBloom.addSubview(aerErstDropShadow)

        NSLayoutConstraint.activate([
            ponllStencilBloom.heightAnchor.constraint(equalToConstant: 90),
            aerErstWildstyleCurve.leadingAnchor.constraint(equalTo: ponllStencilBloom.leadingAnchor, constant: 16),
            aerErstWildstyleCurve.centerYAnchor.constraint(equalTo: ponllStencilBloom.centerYAnchor),
            ponllBubbleLetter.leadingAnchor.constraint(equalTo: aerErstWildstyleCurve.trailingAnchor, constant: 14),
            ponllBubbleLetter.topAnchor.constraint(equalTo: ponllStencilBloom.topAnchor, constant: 20),
            ponllBubbleLetter.trailingAnchor.constraint(lessThanOrEqualTo: aerErstDropShadow.leadingAnchor, constant: -12),
            flckinkOutlineGlow.leadingAnchor.constraint(equalTo: ponllBubbleLetter.leadingAnchor),
            flckinkOutlineGlow.topAnchor.constraint(equalTo: ponllBubbleLetter.bottomAnchor, constant: 6),
            flckinkOutlineGlow.trailingAnchor.constraint(equalTo: ponllBubbleLetter.trailingAnchor),
            aerErstDropShadow.trailingAnchor.constraint(equalTo: ponllStencilBloom.trailingAnchor, constant: -16),
            aerErstDropShadow.centerYAnchor.constraint(equalTo: ponllStencilBloom.centerYAnchor),
            aerErstDropShadow.widthAnchor.constraint(equalToConstant: 98),
            aerErstDropShadow.heightAnchor.constraint(equalToConstant: 40)
        ])
        return ponllStencilBloom
    }

    private func bruCiuChromeFill() -> UIView {
        let ponllPaintMist = UIStackView()
        ponllPaintMist.axis = .vertical
        ponllPaintMist.alignment = .center
        ponllPaintMist.spacing = 18
        ponllPaintMist.layoutMargins = UIEdgeInsets(top: 190, left: 24, bottom: 24, right: 24)
        ponllPaintMist.isLayoutMarginsRelativeArrangement = true
        let bruCiuColorSplash = UIView()
        bruCiuColorSplash.backgroundColor = PonllyPalette.pink.withAlphaComponent(0.16)
        bruCiuColorSplash.layer.cornerRadius = 64
        bruCiuColorSplash.layer.borderWidth = 2
        bruCiuColorSplash.layer.borderColor = PonllyPalette.pink.cgColor
        bruCiuColorSplash.widthAnchor.constraint(equalToConstant: 128).isActive = true
        bruCiuColorSplash.heightAnchor.constraint(equalToConstant: 128).isActive = true
        let flckinkNeonDrip = UIImageView(image: UIImage(systemName: "shield.checkered"))
        flckinkNeonDrip.tintColor = PonllyPalette.pink
        flckinkNeonDrip.translatesAutoresizingMaskIntoConstraints = false
        bruCiuColorSplash.addSubview(flckinkNeonDrip)
        NSLayoutConstraint.activate([
            flckinkNeonDrip.centerXAnchor.constraint(equalTo: bruCiuColorSplash.centerXAnchor),
            flckinkNeonDrip.centerYAnchor.constraint(equalTo: bruCiuColorSplash.centerYAnchor),
            flckinkNeonDrip.widthAnchor.constraint(equalToConstant: 42),
            flckinkNeonDrip.heightAnchor.constraint(equalToConstant: 42)
        ])
        let aerErstConcreteMuse = UILabel()
        aerErstConcreteMuse.text = "No Blocked Users"
        aerErstConcreteMuse.textColor = .white
        aerErstConcreteMuse.font = PonllyFonts.muralForgepon(neonLab: 24)
        let ponllAlleyCanvas = UILabel()
        ponllAlleyCanvas.text = "Your blacklist is empty. Users you block will appear here."
        ponllAlleyCanvas.textColor = PonllyPalette.muted
        ponllAlleyCanvas.font = PonllyFonts.utilityBox(blankFacade: 14, aerosolMuse: .regular)
        ponllAlleyCanvas.textAlignment = .center
        ponllAlleyCanvas.numberOfLines = 0
        [bruCiuColorSplash, aerErstConcreteMuse, ponllAlleyCanvas].forEach(ponllPaintMist.addArrangedSubview)
        return ponllPaintMist
    }

    @objc private func aerErstDropShadow() {
        navigationController?.popViewController(animated: true)
    }
}
