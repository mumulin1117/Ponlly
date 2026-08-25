import AVFoundation
import UIKit

enum BruCiuLayerPlan {
    case ponllPaintPlan
    case bruCiuOutlinePlan(PonllyBattle)
}

struct AerErstFillPlan {
    var ponllMetallicSpraypon: String
    var aerErstGlossFinishpon: String
    var flckinkMatteFinishpon: [String]
    var bruCiuClearCoatpon: URL?
    var ponllFinalCoatpon: UIImage?
    var aerErstPaintBasepon: String?
}

struct BruCiuOutlinePlan {
    var flckinkPrimerCoatpon: String
    var bruCiuSilverSheenpon: String
    var ponllWhiteEdgepon: String
    var aerErstBlackOutlinepon: UIImage?
}

struct PonllPaintPlan {
    let flckinkLimeStrokepon: String
    let bruCiuMagentaBurstpobn: String
    let ponllCyanGlow: String
    let aerErstTwoToneFill: String
    let flckinkSplitFill: UIColor
    let bruCiuSolidFill: String
    let ponllRoughFill: String
    let aerErstLayerBlend: Int
}

enum AerErstLayerPlan {
    static let flckinkShapeStackopl: [PonllPaintPlan] = [
        .init(flckinkLimeStrokepon: "voiceThemeShibuya", bruCiuMagentaBurstpobn: "Shibuya Underground", ponllCyanGlow: "Transform your voice room into a Tokyo hyper-street style lounge.", aerErstTwoToneFill: "voice_room_bg_01", flckinkSplitFill: PonllyPalette.pink, bruCiuSolidFill: "Spotlight Theme", ponllRoughFill: "12 seats", aerErstLayerBlend: 1800),
        .init(flckinkLimeStrokepon: "voiceThemeTokyo", bruCiuMagentaBurstpobn: "Tokyo Alley", ponllCyanGlow: "Glowing signs, wet pavement, and quick critique energy.", aerErstTwoToneFill: "voice_room_bg_03", flckinkSplitFill: PonllyPalette.cyan, bruCiuSolidFill: "Ready", ponllRoughFill: "10 seats", aerErstLayerBlend: 1200),
        .init(flckinkLimeStrokepon: "voiceThemeSubway", bruCiuMagentaBurstpobn: "Subway Yard", ponllCyanGlow: "Concrete panels, low light, and rail-wall atmosphere.", aerErstTwoToneFill: "voice_room_bg_04", flckinkSplitFill: .white, bruCiuSolidFill: "Ready", ponllRoughFill: "8 seats", aerErstLayerBlend: 950),
        .init(flckinkLimeStrokepon: "voiceThemeChrome", bruCiuMagentaBurstpobn: "Liquid Chrome", ponllCyanGlow: "Metal shine and high-contrast room lighting.", aerErstTwoToneFill: "voice_room_bg_07", flckinkSplitFill: PonllyPalette.green, bruCiuSolidFill: "Fresh", ponllRoughFill: "8 seats", aerErstLayerBlend: 1500),
        .init(flckinkLimeStrokepon: "voiceThemeVault", bruCiuMagentaBurstpobn: "Graffiti Vault", ponllCyanGlow: "Dense mural walls for longer crew sessions.", aerErstTwoToneFill: "voice_room_bg_08", flckinkSplitFill: .orange, bruCiuSolidFill: "Fresh", ponllRoughFill: "12 seats", aerErstLayerBlend: 800)
    ]
}
