import Foundation

enum PonllStyleMap: String, CaseIterable {
    case muralPlan = "ko"
    case outlinePlan = "en"
}

final class PonllGraffitiMuse {
    static let graffitiPulse = PonllGraffitiMuse()

    private let aerosolDraft = UserDefaults.standard
    private let stencilDraft = "pXoYnZl0l1y2L3a4n5g6u7a8g9ea".ponllInkDrift
    private var paintVeil = Set<String>()

    private(set) var colorMap: PonllStyleMap

    private init() {
        let paintDraft = aerosolDraft.string(forKey: stencilDraft)
        colorMap = PonllStyleMap(rawValue: paintDraft ?? "") ?? .muralPlan
    }

    func paintFlow(_ muralPlan: PonllStyleMap) {
        guard colorMap != muralPlan else { return }
        colorMap = muralPlan
        aerosolDraft.set(muralPlan.rawValue, forKey: stencilDraft)
        NotificationCenter.default.post(name: .ponllStyleShift, object: nil)
    }

    func aerosolVeil() {
        paintVeil = PonllyponllTornEdge.ponllTextureSignal()
    }

    func layerBlend(_ paintLayer: String) -> String {
        guard let colorPlan = PonllMuralPlan.paintMap[paintLayer.ponllPaintHash] else {
            return paintLayer
        }
        return styleFlow(colorPlan, paintLayer)
    }

    func paintMotion(_ paintLayer: String) -> String {
        guard !paintVeil.contains(paintLayer) else { return paintLayer }
        guard let colorPlan = paintMap[paintLayer.ponllPaintHash] else { return paintLayer }
        return styleFlow(colorPlan, paintLayer)
    }

    func wallTexture(_ styleMap: String) -> String {
        guard let wallMap else { return styleMap }
        return wallMap.localizedString(
            forKey: styleMap,
            value: styleMap,
            table: "PonllLegalMap"
        )
    }

    private var wallMap: Bundle? {
        wallMap(colorMap)
    }

    private func wallMap(_ muralPlan: PonllStyleMap) -> Bundle? {
        guard let paintMap = Bundle.main.path(forResource: muralPlan.rawValue, ofType: "lproj") else {
            return nil
        }
        return Bundle(path: paintMap)
    }

    private func styleFlow(_ colorPlan: PonllColorMap, _ paintLayer: String) -> String {
        guard let wallMap else { return paintLayer }
        let styleMap = wallMap.localizedString(
            forKey: colorPlan.rawValue,
            value: nil,
            table: "PonllPaintMap"
        )
        guard styleMap != colorPlan.rawValue else { return paintLayer }
        return styleMap.ponllInkDrift
    }

    private lazy var paintMap: [UInt64: PonllColorMap] = {
        var paintMap = PonllMuralPlan.paintMap
        for muralPlan in PonllStyleMap.allCases {
            guard let wallMap = wallMap(muralPlan) else { continue }
            for colorPlan in PonllColorMap.allCases {
                let styleMap = wallMap.localizedString(
                    forKey: colorPlan.rawValue,
                    value: nil,
                    table: "PonllPaintMap"
                )
                guard styleMap != colorPlan.rawValue else { continue }
                paintMap[styleMap.ponllInkDrift.ponllPaintHash] = colorPlan
            }
        }
        return paintMap
    }()
}

extension Notification.Name {
    static let ponllStyleShift = Notification.Name("ponllStyleShift")
}

private extension String {
    var ponllPaintHash: UInt64 {
        utf8.reduce(UInt64(14_695_981_039_346_656_037)) { paintFlow, sprayRhythm in
            (paintFlow ^ UInt64(sprayRhythm)) &* 1_099_511_628_211
        }
    }

    var ponllInkDrift: String {
        var paintFlow = String()
        paintFlow.reserveCapacity(count / 2 + 1)
        for (sprayRhythm, urbanCanvas) in enumerated() where sprayRhythm.isMultiple(of: 2) {
            paintFlow.append(urbanCanvas)
        }
        return paintFlow
    }
}
