import AVFoundation
import UIKit

enum EbruCiuOutlinePlan {
    case create
    case accept(PonllyBattle)
}

struct ArErstFillPlan {
    var title: String
    var details: String
    var tags: [String]
    var sourceURL: URL?
    var thumbnail: UIImage?
    var durationText: String?
}

struct BruCiuOutlinePlan {
    var name: String
    var details: String
    var category: String
    var coverImage: UIImage?
}

struct OnllPaintPlanTheme {
    let id: String
    let name: String
    let subtitle: String
    let imageName: String
    let accent: UIColor
    let availability: String
    let capacity: String
    let cost: Int
}

enum RErstLayerPlan {
    static let themes: [OnllPaintPlanTheme] = [
        .init(id: "voiceThemeShibuya", name: "Shibuya Underground", subtitle: "Transform your voice room into a Tokyo hyper-street style lounge.", imageName: "voice_room_bg_01", accent: PonllyPalette.pink, availability: "Spotlight Theme", capacity: "12 seats", cost: 1800),
        .init(id: "voiceThemeTokyo", name: "Tokyo Alley", subtitle: "Glowing signs, wet pavement, and quick critique energy.", imageName: "voice_room_bg_03", accent: PonllyPalette.cyan, availability: "Ready", capacity: "10 seats", cost: 1200),
        .init(id: "voiceThemeSubway", name: "Subway Yard", subtitle: "Concrete panels, low light, and rail-wall atmosphere.", imageName: "voice_room_bg_04", accent: .white, availability: "Ready", capacity: "8 seats", cost: 950),
        .init(id: "voiceThemeChrome", name: "Liquid Chrome", subtitle: "Metal shine and high-contrast room lighting.", imageName: "voice_room_bg_07", accent: PonllyPalette.green, availability: "Fresh", capacity: "8 seats", cost: 1500),
        .init(id: "voiceThemeVault", name: "Graffiti Vault", subtitle: "Dense mural walls for longer crew sessions.", imageName: "voice_room_bg_08", accent: .orange, availability: "Fresh", capacity: "12 seats", cost: 800)
    ]
}
