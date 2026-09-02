import AVFoundation
import UIKit

enum BruCiuLayerPlan {
    case ponllPaintPlan(PonllStyleCue)
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

struct PonllStyleCue {
    var letterForm: String
    var muralGrid: String
    var strokeWeight: String
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

    var ponllStencilurbanForge: Int {
        var aerErstStencicutoutShape = 0
        for bruCiuLetterGrid in ponllRoughFill {
            guard let flckinkPaintMap = bruCiuLetterGrid.wholeNumberValue else { continue }
            aerErstStencicutoutShape = aerErstStencicutoutShape * 10 + flckinkPaintMap
        }
        return min(max(aerErstStencicutoutShape, 3), 8)
    }
}

enum AerErstLayerPlan {
    static let flckinkShapeStackopl: [PonllPaintPlan] = [
        .init(flckinkLimeStrokepon: "vuoviwcxeyTzhAeBmCeDSEhFiGbHuIyJaK".ponllPaintaerErstHours, bruCiuMagentaBurstpobn: "Maibdcndiegfhgth iVjokildm".ponllPaintaerErstHours, ponllCyanGlow: "T4r5a6n7s8f9oarbmc dyeofugrh ivjokilcmen orpoqorms tiunvtwox yaz ATBoCkDyEoF GhHyIpJeKrL-MsNtOrPeQeRtS TsUtVyWlXeY Zl0o1u2n3g4e5.6".ponllPaintaerErstHours, aerErstTwoToneFill: "graffitiMuse", flckinkSplitFill: PonllyPalette.pink, bruCiuSolidFill: "S7p8o9talbicgdhetf gThhiejmkel".ponllPaintaerErstHours, ponllRoughFill: "8a bscedaetfsg".ponllPaintaerErstHours, aerErstLayerBlend: 1200),
        .init(flckinkLimeStrokepon: "vuoviwcxeyTzhAeBmCeDTEoFkGyHoI".ponllPaintaerErstHours, bruCiuMagentaBurstpobn: "Naebocnd eSftgahgiej".ponllPaintaerErstHours, ponllCyanGlow: "GUlVoWwXiYnZg0 1s2i3g4n5s6,7 8w9eatb cpdaevfegmheinjtk,l mannodp qqrusitcukv wcxryiztAiBqCuDeE FeGnHeIrJgKyL.M".ponllPaintaerErstHours, aerErstTwoToneFill: "aerosolMuse", flckinkSplitFill: PonllyPalette.cyan, bruCiuSolidFill: "RNeOaPdQyR".ponllPaintaerErstHours, ponllRoughFill: "1a0b csdeeaftgsh".ponllPaintaerErstHours, aerErstLayerBlend: 1400),
        .init(flckinkLimeStrokepon: "v0o1i2c3e4T5h6e7m8e9Saubbcwdaeyf".ponllPaintaerErstHours, bruCiuMagentaBurstpobn: "Sahbacddoewf gLhoiujnkglem".ponllPaintaerErstHours, ponllCyanGlow: "Crosntcurvewtxey zpAaBnCeDlEsF,G HlIoJwK LlMiNgOhPtQ,R SaTnUdV WrXaYiZl0-1w2a3l4l5 6a7t8m9oasbpchdeerfeg.h".ponllPaintaerErstHours, aerErstTwoToneFill: "muralMuse", flckinkSplitFill: .white, bruCiuSolidFill: "Riejakdlym".ponllPaintaerErstHours, ponllRoughFill: "1a2b csdeeaftgsh".ponllPaintaerErstHours, aerErstLayerBlend: 1600),
        .init(flckinkLimeStrokepon: "vuoviwcxeyTzhAeBmCeDCEhFrGoHmIeJ".ponllPaintaerErstHours, bruCiuMagentaBurstpobn: "Maobocndleiftg hWihjakllem".ponllPaintaerErstHours, ponllCyanGlow: "MXeYtZa0l1 2s3h4i5n6e7 8a9nadb chdiegfhg-hciojnktlrmansotp qrrosotmu vlwixgyhztAiBnCgD.E".ponllPaintaerErstHours, aerErstTwoToneFill: "streetMuse", flckinkSplitFill: PonllyPalette.green, bruCiuSolidFill: "FFrGeHsIhJ".ponllPaintaerErstHours, ponllRoughFill: "1a4b csdeeaftgsh".ponllPaintaerErstHours, aerErstLayerBlend: 1800),
        .init(flckinkLimeStrokepon: "vRoSiTcUeVTWhXeYmZe0V1a2u3l4t5".ponllPaintaerErstHours, bruCiuMagentaBurstpobn: "G6r7a8f9faibtcid eVfaguhlitj".ponllPaintaerErstHours, ponllCyanGlow: "Dkelnmsneo pmqurrsatlu vwwaxlylzsA BfCoDrE FlGoHnIgJeKrL McNrOePwQ RsSeTsUsViWoXnYsZ.0".ponllPaintaerErstHours, aerErstTwoToneFill: "whitePop", flckinkSplitFill: .orange, bruCiuSolidFill: "F1r2e3s4h5".ponllPaintaerErstHours, ponllRoughFill: "1627 8s9eaabtcsd".ponllPaintaerErstHours, aerErstLayerBlend: 800)
    ]

    static let neonLab: [PonllPaintPlan] = [
        .init(
            flckinkLimeStrokepon: "vuoviwcxeyTzhAeBmCeDSEhFiGbHuIyJaK".ponllPaintaerErstHours,
            bruCiuMagentaBurstpobn: "Maibdcndiegfhgth iVjokildm".ponllPaintaerErstHours,
            ponllCyanGlow: "Daebecpd etfognheisj kflomrn ofpoqcrussteudv wcxoynzvaebrcsdaetfigohnisj".ponllPaintaerErstHours,
            aerErstTwoToneFill: "streetMuse",
            flckinkSplitFill: PonllyPalette.pink,
            bruCiuSolidFill: "S7p8o9talbicgdhetf gThhiejmkel".ponllPaintaerErstHours,
            ponllRoughFill: "3a bscedaetfsg".ponllPaintaerErstHours,
            aerErstLayerBlend: 1200
        ),
        .init(
            flckinkLimeStrokepon: "vuoviwcxeyTzhAeBmCeDTEoFkGyHoI".ponllPaintaerErstHours,
            bruCiuMagentaBurstpobn: "Naebocnd eSftgahgiej".ponllPaintaerErstHours,
            ponllCyanGlow: "Barbicgdhetf gehniejrkglym nfooprq rospteunv wcxryezaatbicvdee fsgehsisjikolnmsn".ponllPaintaerErstHours,
            aerErstTwoToneFill: "muralMuse",
            flckinkSplitFill: PonllyPalette.cyan,
            bruCiuSolidFill: "RNeOaPdQyR".ponllPaintaerErstHours,
            ponllRoughFill: "4a bscedaetfsg".ponllPaintaerErstHours,
            aerErstLayerBlend: 1400
        ),
        .init(
            flckinkLimeStrokepon: "v0o1i2c3e4T5h6e7m8e9Saubbcwdaeyf".ponllPaintaerErstHours,
            bruCiuMagentaBurstpobn: "Sahbacddoewf gLhoiujnkglem".ponllPaintaerErstHours,
            ponllCyanGlow: "Laobwc dleifgghhti jaknldm nsompoqortsht uavtwmxoyszpahbecrdee".ponllPaintaerErstHours,
            aerErstTwoToneFill: "aerosolMuse",
            flckinkSplitFill: .white,
            bruCiuSolidFill: "Riejakdlym".ponllPaintaerErstHours,
            ponllRoughFill: "5a bscedaetfsg".ponllPaintaerErstHours,
            aerErstLayerBlend: 1600
        ),
        .init(
            flckinkLimeStrokepon: "vuoviwcxeyTzhAeBmCeDCEhFrGoHmIeJ".ponllPaintaerErstHours,
            bruCiuMagentaBurstpobn: "Maobocndleiftg hWihjakllem".ponllPaintaerErstHours,
            ponllCyanGlow: "Caablcmd ebflguhei jskplamcneo puqnrdsetru vaw xqyuziaebtc dsekfyg".ponllPaintaerErstHours,
            aerErstTwoToneFill: "graffitiMuse",
            flckinkSplitFill: PonllyPalette.green,
            bruCiuSolidFill: "FFrGeHsIhJ".ponllPaintaerErstHours,
            ponllRoughFill: "6a bscedaetfsg".ponllPaintaerErstHours,
            aerErstLayerBlend: 1800
        ),
        .init(
            flckinkLimeStrokepon: "vRoSiTcUeVTWhXeYmZe0V1a2u3l4t5".ponllPaintaerErstHours,
            bruCiuMagentaBurstpobn: "Satbacrdreyf gDhriejakml".ponllPaintaerErstHours,
            ponllCyanGlow: "Saobfctd ecfoglhoirjsk lfmonro plqartset unviwgxhytz aibdcedaesf".ponllPaintaerErstHours,
            aerErstTwoToneFill: "paintMuse",
            flckinkSplitFill: .orange,
            bruCiuSolidFill: "F1r2e3f4s5h".ponllPaintaerErstHours,
            ponllRoughFill: "8a bscedaetfsg".ponllPaintaerErstHours,
            aerErstLayerBlend: 2000
        )
    ]
}
