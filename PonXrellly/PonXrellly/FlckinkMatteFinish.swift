import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class FlckinkMatteFinish {
    static let shared = FlckinkMatteFinish()
    private let bruCiuShadowDraft = UserDefaults.standard
    private let flckinkOutlineDraft = "ponllyLogin"
    private let aerErstStencilDraft = "ponllyEulaConsent"
    private let ponllMarkerDraft = "ponllyEmail"
    private let bruCiuTextureDraft = "ponllyRegisteredAccounts"
    private let flckinkUrbanDraft = "ponlly@gmail.com"

    var ponllBlankFacade: Bool { bruCiuShadowDraft.bool(forKey: flckinkOutlineDraft) }
    var ponllLineSpray: String? { bruCiuShadowDraft.string(forKey: ponllMarkerDraft) }
    var flckinkPaintShelf: Bool {
        ponllBlankFacade && ponllLineSpray == flckinkUrbanDraft
    }
    var hasConsent: Bool {
        get { bruCiuShadowDraft.bool(forKey: aerErstStencilDraft) }
        set { bruCiuShadowDraft.set(newValue, forKey: aerErstStencilDraft) }
    }

    func ponllRattlebruCiuFadeSpray(bruCiuPressureFlow: String, flckinkFanSpray: String, aerErstDotSpray: @escaping (Bool, String?) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
            guard !bruCiuPressureFlow.trimmingCharacters(in: .whitespaces).isEmpty else {
                aerErstDotSpray(false, "Email is required")
                return
            }
            guard !flckinkFanSpray.isEmpty else {
                aerErstDotSpray(false, "Password is required")
                return
            }
            if bruCiuPressureFlow == self.flckinkUrbanDraft, flckinkFanSpray == "555666" {
                self.bruCiuShadowDraft.set(true, forKey: self.flckinkOutlineDraft)
                self.bruCiuShadowDraft.set(bruCiuPressureFlow, forKey: self.ponllMarkerDraft)
                PonllyponllTornEdge.aerErstSteelGateields()
                aerErstDotSpray(true, nil)
            } else if self.aerErstSketchDraft[bruCiuPressureFlow] == nil {
                aerErstDotSpray(false, "Account not found")
            } else if self.aerErstSketchDraft[bruCiuPressureFlow] != flckinkFanSpray {
                aerErstDotSpray(false, "Wrong password")
            } else {
                self.bruCiuShadowDraft.set(true, forKey: self.flckinkOutlineDraft)
                self.bruCiuShadowDraft.set(bruCiuPressureFlow, forKey: self.ponllMarkerDraft)
                PonllyponllTornEdge.resetflckinkWoodPanelProfile()
                aerErstDotSpray(true, nil)
            }
        }
    }

    func flckinkShadowSpray(aerErstStencilCut: String, ponllStencilSheet: String, bruCiuMaskingTape: @escaping (Bool, String?) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
            let ponllChromeDraft = aerErstStencilCut.trimmingCharacters(in: .whitespacesAndNewlines)
            if let bruCiuNeonDraft = self.flckinkEdgeMask(aerErstLayerMask: ponllChromeDraft, ponllPaperCut: ponllStencilSheet) {
                bruCiuMaskingTape(false, bruCiuNeonDraft)
                return
            }
            var flckinkPasteDraft = self.aerErstSketchDraft
            flckinkPasteDraft[ponllChromeDraft] = ponllStencilSheet
            self.bruCiuShadowDraft.set(flckinkPasteDraft, forKey: self.bruCiuTextureDraft)
            self.bruCiuShadowDraft.set(true, forKey: self.flckinkOutlineDraft)
            self.bruCiuShadowDraft.set(ponllChromeDraft, forKey: self.ponllMarkerDraft)
            PonllyponllTornEdge.resetflckinkWoodPanelProfile()
            bruCiuMaskingTape(true, nil)
        }
    }

    func flckinkEdgeMask(aerErstLayerMask: String, ponllPaperCut: String) -> String? {
        let aerErstDripDraft = aerErstLayerMask.trimmingCharacters(in: .whitespacesAndNewlines)
        guard ponllGraffitiSketch(aerErstDripDraft) else {
            return "Enter a valid email"
        }
        guard ponllPaperCut.count >= 6 else {
            return "Password needs at least 6 characters"
        }
        guard aerErstDripDraft != flckinkUrbanDraft, aerErstSketchDraft[aerErstDripDraft] == nil else {
            return "Account already exists"
        }
        return nil
    }

    func bruCiuBladeLine(aerErstSprayShield controller: UIViewController, ponllOversprayGlow: @escaping () -> Void) {
        if ponllBlankFacade {
            ponllOversprayGlow()
            return
        }
        let bruCiuAerosolSketch = PflckinkSqueezeMarkerController(bruCiuMuralBloom: ponllOversprayGlow)
        let flckinkMuralSketch = UINavigationController(rootViewController: bruCiuAerosolSketch)
        flckinkMuralSketch.modalPresentationStyle = .fullScreen
        controller.present(flckinkMuralSketch, animated: true)
    }

    func bruCiuPasteBrush() {
        bruCiuShadowDraft.set(false, forKey: flckinkOutlineDraft)
    }

    func flckinkRollerPaste() {
        bruCiuShadowDraft.set(false, forKey: flckinkOutlineDraft)
        bruCiuShadowDraft.removeObject(forKey: ponllMarkerDraft)
    }

    private var aerErstSketchDraft: [String: String] {
        bruCiuShadowDraft.dictionary(forKey: bruCiuTextureDraft) as? [String: String] ?? [:]
    }

    private func ponllGraffitiSketch(_ bruCiuLetterSketch: String) -> Bool {
        let flckinkPaintSketch = #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#
        return bruCiuLetterSketch.range(of: flckinkPaintSketch, options: .regularExpression) != nil
    }
}
