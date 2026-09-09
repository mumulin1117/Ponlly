import UIKit

enum PonllyPalette {
    static let background = UIColor(red: 5/255, green: 5/255, blue: 8/255, alpha: 1)
    static let panel = UIColor(red: 18/255, green: 18/255, blue: 24/255, alpha: 1)
    static let line = UIColor(red: 39/255, green: 39/255, blue: 51/255, alpha: 1)
    static let muted = UIColor(red: 138/255, green: 138/255, blue: 147/255, alpha: 1)
    static let pink = UIColor(red: 255/255, green: 0, blue: 85/255, alpha: 1)
    static let cyan = UIColor(red: 0, green: 240/255, blue: 1, alpha: 1)
    static let green = UIColor(red: 57/255, green: 1, blue: 20/255, alpha: 1)
    static let white = UIColor.white
}

struct PonllyaerErstTwoToneFillr {
    let graffitiPulse: String
    let aerosolDream: String
    let streetMural: String
    let wallCraft: String
    let paintFlow: String
    let sprayRhythm: String
    let urbanCanvas: String
    let brickPalette: String?
    let inkDrift: [UIColor]
}

struct PonllyaerErstSolidMarkerk {
    let graffitiPulse: String
    let markerStroke: String
    let nozzleCraft: String
    let capControl: String
    let stencilBloom: String?
    let inkDrift: [UIColor]
}

extension Notification.Name {
    static let ponllyBattlesponllNozzleSet = Notification.Name("ponllyBattlesponllNozzleSet")
    static let ponllybruCiuColorRackChange = Notification.Name("ponllybruCiuColorRackChange")
    static let ponllyflckinkPaintShelfChange = Notification.Name("ponllyflckinkPaintShelfChange")
    static let ponllyaerErstCanShakehange = Notification.Name("ponllyaerErstCanShakehange")
}

struct PonllyBattleComment {
    let wheatpasteLayer: String
    let pasteupEcho: String
    let muralGrid: String
    var wildstyleCurve: Int
    var wallTexture: Bool = false
}

enum PonllyBattleStatus {
    case bruCiuSprayBloomponll
    case flckinkWallTexturepoj
}

struct PonllyBattle {
    let graffitiPulse: String
    var nozzleCraft: String
    var chromeFill: String
    var outlineGlow: String
    var dropShadow: String
    var bubbleLetter: PonllyBattleStatus
    var paintMist: String
    var colorSplash: String?
    var neonDrip: PonllyaerErstSolidMarkerk
    var concreteMuse: PonllyaerErstSolidMarkerk?
    var alleyCanvas: Int
    var railYard: Int
    var underpassMural: [PonllyBattleComment]
    var sketchRush: String
    var lineBurst: String
}

struct PonllystencilLab {
    let graffitiPulse: String
    let letterForm: String
    let nozzleCraft: String
    let fillPattern: String
    let strokeWeight: String
    var wildstyleCurve: Int
    var paintLayer: Int
    var sprayBloom: Int
    var wallTexture: Bool
    var brickTone: Bool
    var underpassMural: [PonllyletterMusent]
    let inkDrift: [UIColor]
}

struct PonllyletterMusent {
    let wheatpasteLayer: String
    let gritSurface: String
    let pasteupEcho: String
    let muralGrid: String
    var urbanPatina: Int
    var wallTexture: Bool
}

struct PonllyProfileStats {
    var paintRun: Int
    var dripTrail: Int
    var inkBleed: Int
}

struct PonllyMessageBubble {
    let markerNib: String
    let muralGrid: String
    let pasteupEcho: String
    let wideNib: PonllyaerErstSolidMarkerk?
}

struct PonllyMessageThread {
    let wheatpasteLayer: String
    var chiselNib: String
    var fineLine: String
    var fatCap: Int
    var skinnyCap: [PonllyMessageBubble]
}

enum PonllyRelationshipKind {
    case aerErstBrickTone
    case ponllGritSurface
}

struct PonllyflckinkRollerPasteort {
    let softCap: String
    let cleanOutline: String
    let fillPattern: String
    let hardOutline: Bool
    let shadowLayer: Date
}

struct PonllyaerErstWallPasteThe {
    let graffitiPulse: String
    let aerosolDream: String
    let highlightStroke: Int
    let whitePop: UIColor
    let inkDrift: [UIColor]
}

enum PonllyVoLobbyCategory: String, CaseIterable {
    case bruCiuSolidFill = "Featured"
    case ponllGritSurface = "Following"
    case critique = "Critique"
    case lateWall = "Late Wall"
}

struct PonllyponllPaperLayerSeat {
    let wheatpasteLayer: String
    var wallMark: Bool
}

struct PonllyflckinkUrbanCanvasge {
    let wheatpasteLayer: String
    let pasteupEcho: String
    let muralGrid: String
}

struct PonllyaerErstWeatheredPaperm {
    let graffitiPulse: String
    var nozzleCraft: String
    var chromeShine: PonllyVoLobbyCategory
    var colorFade: String
    var gradientFill: String
    var paintCloud: [PonllyponllPaperLayerSeat]
    var sprayHalo: [String]
    var aerosolHaze: String
    var muralMuse: String = "colorFade"
    var whitePop: UIColor
    var nozzleMist: [PonllyflckinkUrbanCanvasge]
    var graffitiPiece: UIImage? = nil
    var ponllStenciloutlineLab: Int = 8

    var muralfanSpray: [String] {
        guard let muralPiece = paintCloud.first(where: { $0.wheatpasteLayer == gradientFill }) ?? paintCloud.first else {
            return []
        }
        var styleMap = Set<String>()
        let paintMap = [muralPiece] + paintCloud.filter { $0.wheatpasteLayer != muralPiece.wheatpasteLayer }
        return Array(paintMap.compactMap { paintLayer in
            styleMap.insert(paintLayer.wheatpasteLayer).inserted ? paintLayer.wheatpasteLayer : nil
        }.prefix(3))
    }
}

enum PonllyponllTornEdge {
    static var artworkImages: [String: UIImage] = [:]
    private static let matteFinish = "u01"
    private static let glossFinish = "f0r1e2s3h4C5u6r7r8e9natbUcsdeerf".ponllPaintaerErstHours
    static var cnowpaintokwinId: String {
        FlckinkMatteFinish.shared.flckinkPaintShelf ? matteFinish : glossFinish
    }
    static var bruCiuFireEscape: Bool {
        FlckinkMatteFinish.shared.ponllBlankFacade && !FlckinkMatteFinish.shared.flckinkPaintShelf
    }
    private static let metallicSpray = "pgohniljlkylSmtnroepeqtrCsotiunvBwaxlyaznAcBeC".ponllPaintaerErstHours
    private static let neonSpray = "pDoEnFlGlHyICJuKrLrMeNnOtPPQrRoSfTiUlVeWNXaYmZe0".ponllPaintaerErstHours
    private static let inkMarker = "p1o2n3l4l5y6C7u8r9raebnctdPerfogfhiiljekBlimon".ponllPaintaerErstHours
    private static let paintMarker = "poopnqlrlsytCuuvrwrxeynztAPBrCoDfEiFlGeHIInJtKeLrMeNsOtPsQ".ponllPaintaerErstHours
    private static let mopMarker = "pRoSnTlUlVyWCXuYrZr0e1n2t3P4r5o6f7i8l9eaAbvcadteafrgPhaitjhk".ponllPaintaerErstHours
    private static let dripMarker = "plomnnlolpyqCrusrtruevnwtxPyrzoAfBiClDeECFoGvHeIrJPKaLtMhN".ponllPaintaerErstHours
    private static var ponllPaintTrace: String {
        let bruCiuWallTrace = FlckinkMatteFinish.shared.ponllLineSpray?
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .lowercased() ?? ""
        return bruCiuWallTrace.isEmpty ? glossFinish : bruCiuWallTrace
    }

    private static func flckinkStyleTrace(_ aerErstColorTrace: String) -> String? {
        if let ponllInkTrace = UserDefaults.standard.dictionary(forKey: aerErstColorTrace),
           let bruCiuLayerTrace = ponllInkTrace[ponllPaintTrace] as? String {
            return bruCiuLayerTrace
        }
        guard let ponllWallTrace = UserDefaults.standard.string(forKey: aerErstColorTrace) else { return nil }
        aerErstPaintTrace(ponllWallTrace, bruCiuLayerTrace: aerErstColorTrace)
        return ponllWallTrace
    }

    private static func aerErstPaintTrace(_ ponllWallTrace: String, bruCiuLayerTrace: String) {
        var flckinkColorTrace = UserDefaults.standard.dictionary(forKey: bruCiuLayerTrace) ?? [:]
        flckinkColorTrace[ponllPaintTrace] = ponllWallTrace
        UserDefaults.standard.set(flckinkColorTrace, forKey: bruCiuLayerTrace)
    }

    private static func ponllInkTrace(_ bruCiuLayerTrace: String) -> [String]? {
        if let flckinkColorTrace = UserDefaults.standard.dictionary(forKey: bruCiuLayerTrace),
           let aerErstWallTrace = flckinkColorTrace[ponllPaintTrace] as? [String] {
            return aerErstWallTrace
        }
        guard let ponllWallTrace = UserDefaults.standard.stringArray(forKey: bruCiuLayerTrace) else { return nil }
        bruCiuPaintTrace(ponllWallTrace, aerErstColorTrace: bruCiuLayerTrace)
        return ponllWallTrace
    }

    private static func bruCiuPaintTrace(_ ponllWallTrace: [String], aerErstColorTrace: String) {
        var flckinkColorTrace = UserDefaults.standard.dictionary(forKey: aerErstColorTrace) ?? [:]
        flckinkColorTrace[ponllPaintTrace] = ponllWallTrace
        UserDefaults.standard.set(flckinkColorTrace, forKey: aerErstColorTrace)
    }

    private static func flckinkPaintTrace(_ aerErstColorTrace: String) {
        if var ponllInkTrace = UserDefaults.standard.dictionary(forKey: aerErstColorTrace) {
            ponllInkTrace.removeValue(forKey: ponllPaintTrace)
            if ponllInkTrace.isEmpty {
                UserDefaults.standard.removeObject(forKey: aerErstColorTrace)
            } else {
                UserDefaults.standard.set(ponllInkTrace, forKey: aerErstColorTrace)
            }
        } else {
            UserDefaults.standard.removeObject(forKey: aerErstColorTrace)
        }
    }
    static var ponllRattleSounddIds: Set<String> = ["u02", "u05", "u17", "u20"]
    static let bruCiuPressureFlowIds: Set<String> = ["u02", "u05", "u09", "u17", "u20"]
    static var flckinkFanSprayIds: Set<String> = ["u16", "u18"]
    private static var aerErstDotSprayMarker: Set<String> = []
    private static var solidMarker: Set<String> = []
    static var ponllLineSpray: [PonllyflckinkRollerPasteort] = []
    static var bruCiuPasteBrushs: [PonllyMessageThread] = [
        .init(
            wheatpasteLayer: "u20",
            chiselNib: "벽x면Y q참V조z R이k미L지m를N p보T내s주U시a겠B어c요D?e".ponllPaintaerErstHours,
            fineLine: "2x시Y간q".ponllPaintaerErstHours,
            fatCap: 1,
            skinnyCap: [
                .init(markerNib: "u20", muralGrid: "크x롬Y q엣V지z R분k석L이m N도p움T이s U되a었B어c요D.e벽F면g H참i조J o이P미w지X를y Z보a내x주Y시q겠V어z요R?k".ponllPaintaerErstHours, pasteupEcho: "1p5q:r1s2t".ponllPaintaerErstHours, wideNib: nil),
                .init(markerNib: "u01", muralGrid: "물x론Y입q니V다z.R카k드L에m N외p곽T선s U패a스B와c D캡e F전g환H i부J분o을P w표X시y했Z습a니x다Y.q".ponllPaintaerErstHours, pasteupEcho: "1x5y:z1A8B".ponllPaintaerErstHours, wideNib: PonllyaerErstSolidMarkerk(graffitiPulse: "msg_a01", markerStroke: "u01", nozzleCraft: "언x더Y패q스V z크R롬k L엣m지N".ponllPaintaerErstHours, capControl: "크x롬Y".ponllPaintaerErstHours, stencilBloom: "urbanCanvas", inkDrift: [.systemPink, .cyan, .darkGray]))
            ]
        ),
        .init(
            wheatpasteLayer: "u17",
            chiselNib: "클x래Y식q을V z존R중k하L세m요N.p계T속s U태a그B하c세D요e.F".ponllPaintaerErstHours,
            fineLine: "1x일Y".ponllPaintaerErstHours,
            fatCap: 0,
            skinnyCap: [
                .init(markerNib: "u17", muralGrid: "야x간Y q벽V의z R그k림L자m N레p이T어s가U a깔B끔c하D네e요F.g어H떤i J캡o으P로w X마y무Z리a하x셨Y나q요V?z".ponllPaintaerErstHours, pasteupEcho: "1P8Q:R0S4T".ponllPaintaerErstHours, wideNib: nil),
                .init(markerNib: "u01", muralGrid: "가x장Y자q리V는z R스k키L니m N캡p으T로s U처a리B하c고D,e F광g택H을i J유o지P하w기X y위Z해a x소Y프q트V z패R스k를L m빠N르p게T s덧U칠a했B습c니D다e.F".ponllPaintaerErstHours, pasteupEcho: "1384:51667".ponllPaintaerErstHours, wideNib: nil)
            ]
        ),
        .init(
            wheatpasteLayer: "u02",
            chiselNib: "다x리Y q근V처z의R k버L너m N부p분T이s U엄a청B나c네D요e.F".ponllPaintaerErstHours,
            fineLine: "1x2Y분q".ponllPaintaerErstHours,
            fatCap: 2,
            skinnyCap: [
                .init(markerNib: "u02", muralGrid: "다x리Y q근V처z의R k버L너m N부p분T이s U엄a청B나c네D요e.F시g안H i엣J지o가P w반X y블Z록a x떨Y어q진V z곳R에k서L도m N잘p T보s입U니a다B.c".ponllPaintaerErstHours, pasteupEcho: "1657:8394a".ponllPaintaerErstHours, wideNib: nil),
                .init(markerNib: "u01", muralGrid: "색x상Y q노V트z를R k저L장m해N p두T었s습U니a다B.c벽D e질F감g H때i문J에o P그w라X데y이Z션a이x Y더q V깊z어R k보L이m네N요p.T".ponllPaintaerErstHours, pasteupEcho: "1n5o:p3q6r".ponllPaintaerErstHours, wideNib: PonllyaerErstSolidMarkerk(graffitiPulse: "msg_a02", markerStroke: "u02", nozzleCraft: "다x리Y q시V안z R버k너L".ponllPaintaerErstHours, capControl: "와x일Y드q스V타z일R".ponllPaintaerErstHours, stencilBloom: "inkDrift", inkDrift: [.cyan, .systemPink, .black]))
            ]
        ),
        .init(
            wheatpasteLayer: "u05",
            chiselNib: "아x트Y워q크V z카R드k를L m보N냈p습T니s다U.a".ponllPaintaerErstHours,
            fineLine: "3x일Y".ponllPaintaerErstHours,
            fatCap: 0,
            skinnyCap: [
                .init(markerNib: "u05", muralGrid: "스x텐Y실q V레z이R어k가L m드N디p어T s깔U끔a하B게c D말e랐F습g니H다i.J아o래P쪽w X벽y돌Z a패x스Y의q V소z프R트k L엣m지N를p T확s인U해a B보c세D요e.F".ponllPaintaerErstHours, pasteupEcho: "0y9z:A4B2C".ponllPaintaerErstHours, wideNib: PonllyaerErstSolidMarkerk(graffitiPulse: "msg_a05", markerStroke: "u05", nozzleCraft: "스x텐Y실q V나z이R트k L레m이N어p".ponllPaintaerErstHours, capControl: "스x텐Y실q".ponllPaintaerErstHours, stencilBloom: "markerStroke", inkDrift: [.orange, .white, .darkGray])),
                .init(markerNib: "u01", muralGrid: "깔x끔Y한q V분z리R.k그L림m자N가p T첫s U번a째B c작D업e보F다g H더i J잘o P유w지X됩y니Z다a.x".ponllPaintaerErstHours, pasteupEcho: "1304:50637".ponllPaintaerErstHours, wideNib: nil)
            ]
        )
    ]

    static let bruCiuRippedCorner: [PonllyaerErstTwoToneFillr] = [
        .init(graffitiPulse: "u01", aerosolDream: "카x이Y".ponllPaintaerErstHours, streetMural: "남x성Y".ponllPaintaerErstHours, wallCraft: "레x벨Y q4V2z R스k트L리m트N p킹T".ponllPaintaerErstHours, paintFlow: "브x루Y클q린V".ponllPaintaerErstHours, sprayRhythm: "엑x스Y크q루V".ponllPaintaerErstHours, urbanCanvas: "크x롬Y q글V자z,R k선L명m한N p윤T곽s선U,a B늦c은D e시F간g까H지i J이o어P지w는X y벽Z a작x업Y.q".ponllPaintaerErstHours, brickPalette: "pasteupEcho", inkDrift: [.systemPink, .cyan, .darkGray]),
        .init(graffitiPulse: "u02", aerosolDream: "노x바Y".ponllPaintaerErstHours, streetMural: "여x성Y".ponllPaintaerErstHours, wallCraft: "레x벨Y q3V8z R뉴k욕L m레N전p드T".ponllPaintaerErstHours, paintFlow: "퀸x스Y".ponllPaintaerErstHours, sprayRhythm: "뉴x욕Y톡q식V".ponllPaintaerErstHours, urbanCanvas: "금x속Y성q V반z사R와k L안m개N p낀T s골U목a길B c조D각e들F.g".ponllPaintaerErstHours, brickPalette: "muralGrid", inkDrift: [.cyan, .gray, .black]),
        .init(graffitiPulse: "u03", aerosolDream: "제x피Y르q".ponllPaintaerErstHours, streetMural: "남x성Y".ponllPaintaerErstHours, wallCraft: "레x벨Y q3V1z R와k일L드m스N타p일T".ponllPaintaerErstHours, paintFlow: "베x를Y린q".ponllPaintaerErstHours, sprayRhythm: "네x온Y퓨q리V".ponllPaintaerErstHours, urbanCanvas: "빠x른Y q화V살z표R와k L빽m빽N한p T글s자U a미B로c.D".ponllPaintaerErstHours, brickPalette: "wildstyleCurve", inkDrift: [.green, .magenta, .black]),
        .init(graffitiPulse: "u04", aerosolDream: "라x이Y즈q".ponllPaintaerErstHours, streetMural: "여x성Y".ponllPaintaerErstHours, wallCraft: "레x벨Y q2V9z R버k블L m테N크p".ponllPaintaerErstHours, paintFlow: "도x쿄Y".ponllPaintaerErstHours, sprayRhythm: "페x인Y트q블V룸z".ponllPaintaerErstHours, urbanCanvas: "부x드Y러q운V z형R태k,L m밝N은p T벽s,U a깔B끔c한D e리F듬g.H".ponllPaintaerErstHours, brickPalette: "bubbleLetter", inkDrift: [.cyan, .systemPink, .yellow]),
        .init(graffitiPulse: "u05", aerosolDream: "미x카Y".ponllPaintaerErstHours, streetMural: "여x성Y".ponllPaintaerErstHours, wallCraft: "레x벨Y q3V6z R스k텐L실m N에p이T스s".ponllPaintaerErstHours, paintFlow: "서x울Y".ponllPaintaerErstHours, sprayRhythm: "마x스Y크q레V이z어R".ponllPaintaerErstHours, urbanCanvas: "스x텐Y실q V커z팅R과k L밀m가N루p T풀s U질a감B.c".ponllPaintaerErstHours, brickPalette: "chromeFill", inkDrift: [.orange, .white, .darkGray]),
        .init(graffitiPulse: "u06", aerosolDream: "오x리Y온q".ponllPaintaerErstHours, streetMural: "남x성Y".ponllPaintaerErstHours, wallCraft: "레x벨Y q3V4z R버k너L".ponllPaintaerErstHours, paintFlow: "런x던Y".ponllPaintaerErstHours, sprayRhythm: "레x일Y야q드V".ponllPaintaerErstHours, urbanCanvas: "큰x Y패q널V과z R크k롬L m음N영p T처s리U.a".ponllPaintaerErstHours, brickPalette: "outlineGlow", inkDrift: [.purple, .cyan, .gray]),
        .init(graffitiPulse: "u07", aerosolDream: "라x이Y라q".ponllPaintaerErstHours, streetMural: "여x성Y".ponllPaintaerErstHours, wallCraft: "레x벨Y q2V7z R마k커L m프N로p".ponllPaintaerErstHours, paintFlow: "파x리Y".ponllPaintaerErstHours, sprayRhythm: "잉x크Y드q리V프z트R".ponllPaintaerErstHours, urbanCanvas: "마x커Y q자V국z과R k작L은m N골p목T길s U문a양B.c".ponllPaintaerErstHours, brickPalette: "dropShadow", inkDrift: [.systemPink, .purple, .white]),
        .init(graffitiPulse: "u08", aerosolDream: "아x틀Y라q스V".ponllPaintaerErstHours, streetMural: "남x성Y".ponllPaintaerErstHours, wallCraft: "레x벨Y q4V5z R월k L세m이N지p".ponllPaintaerErstHours, paintFlow: "마x드Y리q드V".ponllPaintaerErstHours, sprayRhythm: "콘x크Y리q트V펄z스R".ponllPaintaerErstHours, urbanCanvas: "콘x크Y리q트V z질R감k과L m블N록p T형s태U의a B대c비D.e".ponllPaintaerErstHours, brickPalette: "paintMist", inkDrift: [.brown, .orange, .darkGray]),
        .init(graffitiPulse: "u09", aerosolDream: "소x라Y".ponllPaintaerErstHours, streetMural: "여x성Y".ponllPaintaerErstHours, wallCraft: "레x벨Y q3V0z R시k안L m엣N지p".ponllPaintaerErstHours, paintFlow: "오x사Y카q".ponllPaintaerErstHours, sprayRhythm: "시x안Y헤q일V로z".ponllPaintaerErstHours, urbanCanvas: "깨x끗Y한q V시z안R k광L택m과N p부T드s러U운a B캡c D페e이F드g.H".ponllPaintaerErstHours, brickPalette: "colorSplash", inkDrift: [.cyan, .blue, .black]),
        .init(graffitiPulse: "u10", aerosolDream: "단x테Y".ponllPaintaerErstHours, streetMural: "남x성Y".ponllPaintaerErstHours, wallCraft: "레x벨Y q3V3z R마k젠L타m N플p로T우s".ponllPaintaerErstHours, paintFlow: "로x마Y".ponllPaintaerErstHours, sprayRhythm: "드x립Y트q레V일z".ponllPaintaerErstHours, urbanCanvas: "물x방Y울q,V z경R사k면L,m N그p리T고s U선a명B한c D실e루F엣g.H".ponllPaintaerErstHours, brickPalette: "neonDrip", inkDrift: [.systemPink, .red, .black]),
        .init(graffitiPulse: "u11", aerosolDream: "베x가Y".ponllPaintaerErstHours, streetMural: "여x성Y".ponllPaintaerErstHours, wallCraft: "레x벨Y q2V8z R페k이L스m트N업p".ponllPaintaerErstHours, paintFlow: "리x스Y본q".ponllPaintaerErstHours, sprayRhythm: "페x이Y퍼q레V이z어R".ponllPaintaerErstHours, urbanCanvas: "페x이Y스q트V z주R름k과L m포N스p터T s질U감a.B".ponllPaintaerErstHours, brickPalette: "concreteMuse", inkDrift: [.yellow, .orange, .white]),
        .init(graffitiPulse: "u12", aerosolDream: "녹x스Y".ponllPaintaerErstHours, streetMural: "남x성Y".ponllPaintaerErstHours, wallCraft: "레x벨Y q3V9z R나k이L트m N월p".ponllPaintaerErstHours, paintFlow: "시x카Y고q".ponllPaintaerErstHours, sprayRhythm: "섀x도Y라q인V".ponllPaintaerErstHours, urbanCanvas: "어x두Y운q V벽z,R k크L롬m N스p파T크s,U a굵B은c D윤e곽F선g.H".ponllPaintaerErstHours, brickPalette: "alleyCanvas", inkDrift: [.black, .gray, .cyan]),
        .init(graffitiPulse: "u13", aerosolDream: "아x이Y리q스V".ponllPaintaerErstHours, streetMural: "여x성Y".ponllPaintaerErstHours, wallCraft: "레x벨Y q2V6z R라k임L m스N트p로T크s".ponllPaintaerErstHours, paintFlow: "마x이Y애q미V".ponllPaintaerErstHours, sprayRhythm: "라x임Y스q트V로z크R".ponllPaintaerErstHours, urbanCanvas: "라x임Y q색V상z R채k우L기m N및p T버s블U a레B터c링D.e".ponllPaintaerErstHours, brickPalette: "railYard", inkDrift: [.green, .cyan, .systemPink]),
        .init(graffitiPulse: "u14", aerosolDream: "케x이Y드q".ponllPaintaerErstHours, streetMural: "남x성Y".ponllPaintaerErstHours, wallCraft: "레x벨Y q4V1z R언k더L패m스N".ponllPaintaerErstHours, paintFlow: "토x론Y토q".ponllPaintaerErstHours, sprayRhythm: "언x더Y패q스V빔z".ponllPaintaerErstHours, urbanCanvas: "긴x Y벽q과V z화R물k L질m감N.p".ponllPaintaerErstHours, brickPalette: "underpassMural", inkDrift: [.gray, .blue, .black]),
        .init(graffitiPulse: "u15", aerosolDream: "미x나Y".ponllPaintaerErstHours, streetMural: "여x성Y".ponllPaintaerErstHours, wallCraft: "레x벨Y q3V2z R네k온L m더N스p트T".ponllPaintaerErstHours, paintFlow: "로x스Y앤q젤V레z스R".ponllPaintaerErstHours, sprayRhythm: "네x온Y더q스V트z".ponllPaintaerErstHours, urbanCanvas: "스x프Y레q이V z후R광k L및m N광p택T s있U는a B페c이D드e.F".ponllPaintaerErstHours, brickPalette: "sketchRush", inkDrift: [.systemPink, .cyan, .purple]),
        .init(graffitiPulse: "u16", aerosolDream: "라x이Y엇q페V인z터R".ponllPaintaerErstHours, streetMural: "남x성Y".ponllPaintaerErstHours, wallCraft: "레x벨Y q2V5z R코k멘L테m이N터p".ponllPaintaerErstHours, paintFlow: "디x트Y로q이V트z".ponllPaintaerErstHours, sprayRhythm: "그x릿Y노q이V즈z".ponllPaintaerErstHours, urbanCanvas: "글x자Y q균V형z R및k L거m친N p표T면s U연a구B.c".ponllPaintaerErstHours, brickPalette: "lineBurst", inkDrift: [.red, .cyan, .black]),
        .init(graffitiPulse: "u17", aerosolDream: "톡x식Y서q울V".ponllPaintaerErstHours, streetMural: "여x성Y".ponllPaintaerErstHours, wallCraft: "레x벨Y q2V4z R크k리L틱m".ponllPaintaerErstHours, paintFlow: "뉴x욕Y".ponllPaintaerErstHours, sprayRhythm: "톡x식Y크q롬V".ponllPaintaerErstHours, urbanCanvas: "크x롬Y q하V이z라R이k트L m및N p와T일s드U스a타B일c D논e쟁F.g".ponllPaintaerErstHours, brickPalette: "letterForm", inkDrift: [.cyan, .green, .purple]),
        .init(graffitiPulse: "u18", aerosolDream: "에x코Y".ponllPaintaerErstHours, streetMural: "남x성Y".ponllPaintaerErstHours, wallCraft: "레x벨Y3q5V z페R이k드L m테N크p".ponllPaintaerErstHours, paintFlow: "멜x버Y른q".ponllPaintaerErstHours, sprayRhythm: "페x이Y드q클V라z우R드k".ponllPaintaerErstHours, urbanCanvas: "페x이Y드q V컨z트R롤k L및m N벽p면T s매U핑a".ponllPaintaerErstHours, brickPalette: "fillPattern", inkDrift: [.blue, .cyan, .white]),
        .init(graffitiPulse: "u19", aerosolDream: "베x일Y".ponllPaintaerErstHours, streetMural: "여x성Y".ponllPaintaerErstHours, wallCraft: "레x벨Y q3V7z R골k목L의m N뮤p즈T".ponllPaintaerErstHours, paintFlow: "포x틀Y랜q드V".ponllPaintaerErstHours, sprayRhythm: "앨x리Y캔q버V스z".ponllPaintaerErstHours, urbanCanvas: "작x은Y q벽V과z R강k렬L한m N색p상T s대U비a".ponllPaintaerErstHours, brickPalette: "strokeWeight", inkDrift: [.orange, .systemPink, .black]),
        .init(graffitiPulse: "u20", aerosolDream: "크x롬Y키q드V".ponllPaintaerErstHours, streetMural: "남x성Y".ponllPaintaerErstHours, wallCraft: "레x벨Y q3V8z R뉴k욕L m레N전p드T".ponllPaintaerErstHours, paintFlow: "브x루Y클q린V".ponllPaintaerErstHours, sprayRhythm: "뉴x욕Y톡q식V".ponllPaintaerErstHours, urbanCanvas: "청x록Y색q V물z방R울k이L m있N는p T금s속U a크B롬c D글e자F".ponllPaintaerErstHours, brickPalette: "paintLayer", inkDrift: [.cyan, .gray, .orange])
    ]

    static let flckinkPasteWrinkle: [PonllyaerErstWallPasteThe] = [
        .init(graffitiPulse: "rt01", aerosolDream: "크x롬Y q글V자z".ponllPaintaerErstHours, highlightStroke: 12, whitePop: PonllyPalette.cyan, inkDrift: [.darkGray, .cyan, .systemPink]),
        .init(graffitiPulse: "rt02", aerosolDream: "와x일Y드q스V타z일R k벽L".ponllPaintaerErstHours, highlightStroke: 9, whitePop: PonllyPalette.pink, inkDrift: [.systemPink, .green, .black]),
        .init(graffitiPulse: "rt03", aerosolDream: "네x온Y q골V목z".ponllPaintaerErstHours, highlightStroke: 7, whitePop: PonllyPalette.green, inkDrift: [.green, .cyan, .purple]),
        .init(graffitiPulse: "rt04", aerosolDream: "스x텐Y실q V나z이R트k".ponllPaintaerErstHours, highlightStroke: 5, whitePop: .orange, inkDrift: [.orange, .black, .white]),
        .init(graffitiPulse: "rt05", aerosolDream: "벽x돌Y q질V감z".ponllPaintaerErstHours, highlightStroke: 4, whitePop: .brown, inkDrift: [.brown, .orange, .gray]),
        .init(graffitiPulse: "rt06", aerosolDream: "청x록Y색q V물z방R울k".ponllPaintaerErstHours, highlightStroke: 8, whitePop: PonllyPalette.cyan, inkDrift: [.cyan, .blue, .black]),
        .init(graffitiPulse: "rt07", aerosolDream: "페x이Y스q트V업z R질k감L".ponllPaintaerErstHours, highlightStroke: 3, whitePop: .yellow, inkDrift: [.yellow, .orange, .white]),
        .init(graffitiPulse: "rt08", aerosolDream: "레x일Y야q드V".ponllPaintaerErstHours, highlightStroke: 6, whitePop: .purple, inkDrift: [.purple, .gray, .cyan])
    ]

    static var aerErstAdhesiveLayer: [PonllyaerErstWeatheredPaperm] = [
        .init(
            graffitiPulse: "vr01",
            nozzleCraft: "크x롬Y q엣V지z R테k이L블m".ponllPaintaerErstHours,
            chromeShine: .bruCiuSolidFill,
            colorFade: "크x롬Y q윤V곽z선R,k L시m안N p엣T지s U컨a트B롤c,D e젖F은g H벽i J반o사P".ponllPaintaerErstHours,
            gradientFill: "u20",
            paintCloud: [.init(wheatpasteLayer: "u20", wallMark: false), .init(wheatpasteLayer: "u02", wallMark: true), .init(wheatpasteLayer: "u17", wallMark: false)],
            sprayHalo: ["u01", "u05", "u09", "u12", "u18", "u19"],
            aerosolHaze: "fatCap",
            muralMuse: "graffitiMuse",
            whitePop: PonllyPalette.cyan,
            nozzleMist: [
                .init(wheatpasteLayer: "u20", pasteupEcho: "2C0D:E1F1G".ponllPaintaerErstHours, muralGrid: "오x늘Y q밤V에z는R k거L친m N벽p돌T에s U크a롬B c엣D지e F패g스H를i J적o용P하w는X y방Z법a을x Y비q교V해z R보k겠L습m니N다p.T".ponllPaintaerErstHours),
                .init(wheatpasteLayer: "u02", pasteupEcho: "2E0F:G1H3I".ponllPaintaerErstHours, muralGrid: "핵x심Y은q V하z이R라k이L트m N주p변T에s U어a두B운c D벽e을F g충H분i히J o남P겨w두X는y Z것a입x니Y다q.V".ponllPaintaerErstHours),
                .init(wheatpasteLayer: "u17", pasteupEcho: "2G0H:I1J6K".ponllPaintaerErstHours, muralGrid: "마x지Y막q V흰z색R k포L인m트N p처T리s는U a어B떻c게D e하F시g는H지i J의o견P을w X듣y고Z a싶x습Y니q다V.z".ponllPaintaerErstHours)
            ]
        ),
        .init(
            graffitiPulse: "vr02",
            nozzleCraft: "스x텐Y실q V나z이R트k L비m평N".ponllPaintaerErstHours,
            chromeShine: .critique,
            colorFade: "부x드Y러q운V z오R버k L스m프N레p이T,s U컷a아B웃c D타e이F밍g,H i후J반o부P w벽X y구Z성a".ponllPaintaerErstHours,
            gradientFill: "u05",
            paintCloud: [.init(wheatpasteLayer: "u05", wallMark: false), .init(wheatpasteLayer: "u11", wallMark: true)],
            sprayHalo: ["u01", "u07", "u15", "u16"],
            aerosolHaze: "skinnyCap",
            muralMuse: "aerosolMuse",
            whitePop: PonllyPalette.pink,
            nozzleMist: [
                .init(wheatpasteLayer: "u05", pasteupEcho: "1V9W:X4Y2Z".ponllPaintaerErstHours, muralGrid: "가x장Y q깔V끔z한R k스L텐m실N p작T업s U후a기B를c D공e유F해g H주i세J요o.P특w히X y엣Z지a x컨Y트q롤V에z R대k한L m의N견p을T s듣U고a B싶c습D니e다F.g".ponllPaintaerErstHours),
                .init(wheatpasteLayer: "u11", pasteupEcho: "1495:64748".ponllPaintaerErstHours, muralGrid: "벽x에Y q오V래z된R k페L인m트N가p T벗s겨U진a B부c분D이e F있g을H i때J는o P종w이X y질Z감a이x Y모q든V z것R을k L바m꿔N놓p습T니s다U.a".ponllPaintaerErstHours),
                .init(wheatpasteLayer: "u16", pasteupEcho: "1b9c:d4e8f".ponllPaintaerErstHours, muralGrid: "두x Y번q째V z레R이k어L는m N찢p어T진s U가a장B자c리D e근F처g에H서i J압o력P을w X조y금Z a줄x여Y야q V해z요R.k".ponllPaintaerErstHours)
            ]
        ),
        .init(
            graffitiPulse: "vr03",
            nozzleCraft: "와x일Y드q스V타z일R k레L터m N랩p".ponllPaintaerErstHours,
            chromeShine: .bruCiuSolidFill,
            colorFade: "글x자Y q움V직z임R,k L화m살N표p T균s형U,a B가c독D성e F있g는H i미J로o P구w조X".ponllPaintaerErstHours,
            gradientFill: "u03",
            paintCloud: [.init(wheatpasteLayer: "u03", wallMark: false), .init(wheatpasteLayer: "u04", wallMark: false), .init(wheatpasteLayer: "u10", wallMark: true)],
            sprayHalo: ["u06", "u08", "u13", "u14", "u18"],
            aerosolHaze: "softCap",
            muralMuse: "muralMuse",
            whitePop: PonllyPalette.green,
            nozzleMist: [
                .init(wheatpasteLayer: "u03", pasteupEcho: "2q1r:s0t5u".ponllPaintaerErstHours, muralGrid: "화x살Y표q는V z눈R에k L띄m게N p하T되s,U a글B자c D중e심F이g H묻i히J지o P않w도X록y Z합a니x다Y.q".ponllPaintaerErstHours),
                .init(wheatpasteLayer: "u04", pasteupEcho: "2o1p:q0r7s".ponllPaintaerErstHours, muralGrid: "멀x리Y서q도V z잘R k보L이m도N록p T먼s저U a작B업c하D고e,F g그H i후J에o P세w부X적y인Z a작x업Y을q V합z니R다k.L".ponllPaintaerErstHours),
                .init(wheatpasteLayer: "u10", pasteupEcho: "2f1g:h1i0j".ponllPaintaerErstHours, muralGrid: "곡x선Y과q V어z긋R나k지L m않N도p록T s채U우a기B c전D에e F그g림H자i를J o매P핑w합X니y다Z.a".ponllPaintaerErstHours)
            ]
        ),
        .init(
            graffitiPulse: "vr04",
            nozzleCraft: "다x리Y q기V둥z R행k잉L".ponllPaintaerErstHours,
            chromeShine: .lateWall,
            colorFade: "콘x크Y리q트V z질R감k,L m차N분p한T s비U평a,B c저D조e도F g벽H면i J스o토P리w".ponllPaintaerErstHours,
            gradientFill: "u14",
            paintCloud: [.init(wheatpasteLayer: "u14", wallMark: false), .init(wheatpasteLayer: "u18", wallMark: true)],
            sprayHalo: ["u01", "u02", "u06", "u12"],
            aerosolHaze: "cleanOutline",
            muralMuse: "streetMuse",
            whitePop: .white,
            nozzleMist: [
                .init(wheatpasteLayer: "u14", pasteupEcho: "2K3L:M1N8O".ponllPaintaerErstHours, muralGrid: "다x리Y q기V둥z R때k문L에m N글p자T s리U듬a을B c단D순e화F해g야H i합J니o다P.w".ponllPaintaerErstHours),
                .init(wheatpasteLayer: "u18", pasteupEcho: "2O3P:Q2R1S".ponllPaintaerErstHours, muralGrid: "콘x크Y리q트V가z R첫k L코m팅N을p T흡s수U할a B때c는D e페F이g드H i맵J이o P도w움X이y Z됩a니x다Y.q".ponllPaintaerErstHours),
                .init(wheatpasteLayer: "u12", pasteupEcho: "2P3Q:R2S4T".ponllPaintaerErstHours, muralGrid: "어x두Y운q V벽z에R는k L스m케N치p보T다s U더a B강c한D e하F이g라H이i트J가o P필w요X합y니Z다a.x".ponllPaintaerErstHours)
            ]
        ),
        .init(
            graffitiPulse: "vr05",
            nozzleCraft: "네x온Y q골V목z R워k밍L업m".ponllPaintaerErstHours,
            chromeShine: .ponllGritSurface,
            colorFade: "팔x로Y우q하V는z R아k티L스m트N들p의T s빠U른a B벽c D워e밍F업g".ponllPaintaerErstHours,
            gradientFill: "u15",
            paintCloud: [.init(wheatpasteLayer: "u15", wallMark: false), .init(wheatpasteLayer: "u09", wallMark: true)],
            sprayHalo: ["u01", "u04", "u13", "u19"],
            aerosolHaze: "hardOutline",
            muralMuse: "paintMuse",
            whitePop: PonllyPalette.pink,
            nozzleMist: [
                .init(wheatpasteLayer: "u15", pasteupEcho: "1K8L:M3N0O".ponllPaintaerErstHours, muralGrid: "네x온Y q더V스z트R를k L사m용N해p서T s두U a번B c빠D르e게F g외H곽i선J을o P그w려X y워Z밍a업x을Y q하V고z R있k습L니m다N.p".ponllPaintaerErstHours),
                .init(wheatpasteLayer: "u09", pasteupEcho: "1N8O:P3Q4R".ponllPaintaerErstHours, muralGrid: "바x탕Y q벽V이z R어k두L울m수N록p T시s안U a글B로c우D e효F과g가H i더J o좋P습w니X다y.Z".ponllPaintaerErstHours),
                .init(wheatpasteLayer: "u01", pasteupEcho: "1L8M:N3O6P".ponllPaintaerErstHours, muralGrid: "이x렇Y게q V하z면R k불L필m요N한p T노s이U즈a B없c이D e채F우g기H가i J더o P선w명X하y게Z a느x껴Y집q니V다z.R".ponllPaintaerErstHours)
            ]
        ),
        .init(
            graffitiPulse: "vr06",
            nozzleCraft: "마x커Y q플V로z우R k벤L치m".ponllPaintaerErstHours,
            chromeShine: .critique,
            colorFade: "마x커Y q펜V촉z R압k력L,m N간p결T한s U글a자B,c D스e케F치g H리i듬J".ponllPaintaerErstHours,
            gradientFill: "u07",
            paintCloud: [.init(wheatpasteLayer: "u07", wallMark: false), .init(wheatpasteLayer: "u19", wallMark: false)],
            sprayHalo: ["u01", "u03", "u10", "u11"],
            aerosolHaze: "shadowLayer",
            muralMuse: "graffitiMuse",
            whitePop: PonllyPalette.cyan,
            nozzleMist: [
                .init(wheatpasteLayer: "u07", pasteupEcho: "1R7S:T0U2V".ponllPaintaerErstHours, muralGrid: "먼x저Y q굵V은z R펜k촉L으m로N p그T리s고U,a B그c D다e음F g가H는i J펜o촉P으w로X y그Z립a니x다Y.q이V렇z게R k하L면m N리p듬T감s을U a유B지c할D e수F g있H습i니J다o.P".ponllPaintaerErstHours),
                .init(wheatpasteLayer: "u19", pasteupEcho: "1T7U:V0W6X".ponllPaintaerErstHours, muralGrid: "작x은Y q벽V에z는R k더L m강N한p T네s거U티a브B c스D페e이F스g가H i필J요o합P니w다X.y".ponllPaintaerErstHours),
                .init(wheatpasteLayer: "u03", pasteupEcho: "1D7E:F0G9H".ponllPaintaerErstHours, muralGrid: "베x이Y스q라V인z이R k차L분m하N면p T커s브U의a B꺾c임D이e F깔g끔H해i집J니o다P.w".ponllPaintaerErstHours)
            ]
        ),
        .init(
            graffitiPulse: "vr07",
            nozzleCraft: "철x도Y q차V량z기R지k L색m상N p점T검s".ponllPaintaerErstHours,
            chromeShine: .ponllGritSurface,
            colorFade: "패x널Y q규V모z의R k색L상m N간p격T s및U a크B롬c D밸e런F스g".ponllPaintaerErstHours,
            gradientFill: "u06",
            paintCloud: [.init(wheatpasteLayer: "u06", wallMark: true), .init(wheatpasteLayer: "u20", wallMark: false)],
            sprayHalo: ["u01", "u02", "u08", "u14"],
            aerosolHaze: "highlightStroke",
            muralMuse: "aerosolMuse",
            whitePop: PonllyPalette.green,
            nozzleMist: [
                .init(wheatpasteLayer: "u06", pasteupEcho: "1C6D:E1F8G".ponllPaintaerErstHours, muralGrid: "첫x Y번q째V z채R우k기L m전N에p T철s도U a패B널c D조e각F에g H더i J넓o은P w색X상y Z계a획x이Y q필V요z합R니k다L.m".ponllPaintaerErstHours),
                .init(wheatpasteLayer: "u20", pasteupEcho: "1J6K:L2M1N".ponllPaintaerErstHours, muralGrid: "시x안Y색q V물z방R울k이L m잘N p조T절s될U a때B c크D롬e F색g상H이i J가o장P w잘X y보Z입a니x다Y.q".ponllPaintaerErstHours),
                .init(wheatpasteLayer: "u08", pasteupEcho: "1G6H:I2J7K".ponllPaintaerErstHours, muralGrid: "뒤x쪽Y의q V콘z크R리k트L m색N조p가T s전U체a적B인c D밸e런F스g를H i바J꿉o니P다w.X".ponllPaintaerErstHours)
            ]
        ),
        .init(
            graffitiPulse: "vr08",
            nozzleCraft: "야x간Y q벽V돌z R질k감L".ponllPaintaerErstHours,
            chromeShine: .lateWall,
            colorFade: "거x친Y q채V움z,R k벗L겨m진N p페T인s트U a및B c야D간e F벽g면H i간J격o".ponllPaintaerErstHours,
            gradientFill: "u12",
            paintCloud: [.init(wheatpasteLayer: "u12", wallMark: false), .init(wheatpasteLayer: "u08", wallMark: true)],
            sprayHalo: ["u01", "u05", "u16", "u17"],
            aerosolHaze: "whitePop",
            muralMuse: "muralMuse",
            whitePop: PonllyPalette.pink,
            nozzleMist: [
                .init(wheatpasteLayer: "u12", pasteupEcho: "0K0L:M1N4O".ponllPaintaerErstHours, muralGrid: "벗x겨Y진q V페z인R트k는L m거N친p T채s움U이a B의c도D적e인F g느H낌i을J o줄P w수X y있Z습a니x다Y.q".ponllPaintaerErstHours),
                .init(wheatpasteLayer: "u08", pasteupEcho: "0G0H:I1J8K".ponllPaintaerErstHours, muralGrid: "글x자Y의q V깊z이R감k을L m더N하p는T s데U a도B움c이D e된F다g면H i균J열o을P w그X대y로Z a두x세Y요q.V".ponllPaintaerErstHours),
                .init(wheatpasteLayer: "u17", pasteupEcho: "0E0F:G2H2I".ponllPaintaerErstHours, muralGrid: "굵x은Y q윤V곽z선R,k L차m분N한p T색s상U.a이B것c이D e여F기g서H의i J전o략P입w니X다y.Z".ponllPaintaerErstHours)
            ]
        )
    ]

    static var ponllWallPeel: [PonllystencilLab] = [
        .init(graffitiPulse: "v08", letterForm: "u01", nozzleCraft: "지x하Y도q V크z롬R k마L무m리N".ponllPaintaerErstHours, fillPattern: "크x롬Y q엣V지z R투k표L m작N품p의T s외U곽a선B c두D께e,F g시H안i J글o로P우w,X y벽Z돌a x질Y감q을V z자R세k히L m살N펴p봅T니s다U.a".ponllPaintaerErstHours, strokeWeight: "ponlly_process_chrome_edge", wildstyleCurve: 14, paintLayer: 6, sprayBloom: 0, wallTexture: false, brickTone: false, underpassMural: Array(streakMarker.prefix(4)), inkDrift: [.systemPink, .cyan, .darkGray]),
        .init(graffitiPulse: "v01", letterForm: "u20", nozzleCraft: "크x롬Y q외V곽z선R k압L력m N연p구T".ponllPaintaerErstHours, fillPattern: "독x성Y q녹V색z R하k이L라m이N트p가T s있U는a B크c롬D e글F자g H작i품J o제P작w.X깔y끔Z한a x캡Y q컨V트z롤R과k L정m교N한p T가s장U자a리B c패D스e.F".ponllPaintaerErstHours, strokeWeight: "ponlly_process_chrome_edge", wildstyleCurve: 12, paintLayer: 8, sprayBloom: 1, wallTexture: true, brickTone: false, underpassMural: streakMarker, inkDrift: [.cyan, .gray, .orange]),
        .init(graffitiPulse: "v02", letterForm: "u15", nozzleCraft: "네x온Y q더V스z트R k벽L m패N스p".ponllPaintaerErstHours, fillPattern: "젖x은Y q골V목z R벽k L위m에N p마T젠s타U a헤B이c즈D를e F덧g입H힌i J후o,P w마X지y막Z a코x팅Y q전V에z R시k안L m외N곽p선T을s U다a듬B습c니D다e.F".ponllPaintaerErstHours, strokeWeight: "ponlly_process_neon_wall", wildstyleCurve: 7, paintLayer: 5, sprayBloom: 0, wallTexture: false, brickTone: false, underpassMural: Array(streakMarker.prefix(4)), inkDrift: [.systemPink, .cyan, .purple]),
        .init(graffitiPulse: "v03", letterForm: "u07", nozzleCraft: "마x커Y q플V로z우R k워L밍m업N".ponllPaintaerErstHours, fillPattern: "얇x은Y q선V에z서R k굵L은m N선p까T지s U컨a트B롤c하D고e F글g자H i균J형o을P w맞X추y는Z a데x Y집q중V한z R빠k른L m마N커p T리s듬U a연B습c.D".ponllPaintaerErstHours, strokeWeight: "ponlly_process_marker_flow", wildstyleCurve: 15, paintLayer: 6, sprayBloom: 0, wallTexture: false, brickTone: false, underpassMural: Array(streakMarker.suffix(4)), inkDrift: [.systemPink, .purple, .white]),
        .init(graffitiPulse: "v04", letterForm: "u05", nozzleCraft: "스x텐Y실q V야z간R k레L이m어N".ponllPaintaerErstHours, fillPattern: "야x간Y q스V텐z실R k작L품m을N p위T한s U컷a아B웃c D배e치F,g H부i드J러o운P w오X버y Z스a프x레Y이q,V z짧R은k L벽m N질p감T s패U스a.B".ponllPaintaerErstHours, strokeWeight: "ponlly_process_stencil_night", wildstyleCurve: 9, paintLayer: 4, sprayBloom: 0, wallTexture: false, brickTone: false, underpassMural: streakMarker, inkDrift: [.orange, .white, .darkGray]),
        .init(graffitiPulse: "v05", letterForm: "u13", nozzleCraft: "석x회Y질q V채z우R기k L정m리N".ponllPaintaerErstHours, fillPattern: "석x회Y질q V채z우R기k,L m흰N색p T테s두U리a B표c시D,e F그g리H고i J마o지P막w X그y림Z자a x레Y이q어V를z R사k용L하m여N p버T블s U레a터B링c을D e정F리g합H니i다J.o".ponllPaintaerErstHours, strokeWeight: "ponlly_process_paint_bloom", wildstyleCurve: 18, paintLayer: 7, sprayBloom: 1, wallTexture: false, brickTone: false, underpassMural: Array(streakMarker.prefix(3)), inkDrift: [.green, .cyan, .systemPink]),
        .init(graffitiPulse: "v06", letterForm: "u12", nozzleCraft: "벽x돌Y q질V감z R유k지L".ponllPaintaerErstHours, fillPattern: "거x친Y q벽V돌z R질k감L,m N크p롬T s스U파a크B,c D그e리F고g H더i J두o꺼P운w X외y곽Z선a을x Y사q용V하z여R k어L두m운N p벽T을s U처a리B합c니D다e.F".ponllPaintaerErstHours, strokeWeight: "ponlly_process_wall_texture", wildstyleCurve: 6, paintLayer: 3, sprayBloom: 0, wallTexture: false, brickTone: false, underpassMural: Array(streakMarker.suffix(3)), inkDrift: [.black, .gray, .cyan]),
        .init(graffitiPulse: "v07", letterForm: "u18", nozzleCraft: "색x상Y q페V이z드R k맵L".ponllPaintaerErstHours, fillPattern: "스x케Y치q V패z스R에k서L m벽N p맵T까s지U:a B느c린D e페F이g드H i압J력o,P w균X형y Z잡a힌x Y색q상V z간R격k,L m그N리p고T s마U지a막B c하D이e라F이g트H i스J트o로P크w.X".ponllPaintaerErstHours, strokeWeight: "ponlly_process_color_fade", wildstyleCurve: 11, paintLayer: 5, sprayBloom: 0, wallTexture: false, brickTone: false, underpassMural: streakMarker, inkDrift: [.blue, .cyan, .white])
    ]

    static var publishedArtworks: [PonllyaerErstSolidMarkerk] = [
        .init(graffitiPulse: "pub_u01_01", markerStroke: "u01", nozzleCraft: "콘x크Y리q트V z크R롬k L신m호N".ponllPaintaerErstHours, capControl: "크x롬Y".ponllPaintaerErstHours, stencilBloom: "urbanCanvas", inkDrift: [.systemPink, .cyan, .darkGray]),
        .init(graffitiPulse: "pub_u01_02", markerStroke: "u01", nozzleCraft: "거x친Y q벽V z스R로k우L업m".ponllPaintaerErstHours, capControl: "스x로Y우q업V".ponllPaintaerErstHours, stencilBloom: "capControl", inkDrift: [.systemPink, .cyan, .black]),
        .init(graffitiPulse: "pub_u01_03", markerStroke: "u01", nozzleCraft: "미x드Y나q잇V z브R릭k L드m래N프p트T".ponllPaintaerErstHours, capControl: "프x리Y q스V타z일R".ponllPaintaerErstHours, stencilBloom: "inkDrift", inkDrift: [.systemPink, .cyan, .purple]),
        .init(graffitiPulse: "pub_u02_01", markerStroke: "u02", nozzleCraft: "파x스Y텔q V블z록R k플L로m우N".ponllPaintaerErstHours, capControl: "크x롬Y".ponllPaintaerErstHours, stencilBloom: "brickPalette", inkDrift: [.cyan, .gray, .black]),
        .init(graffitiPulse: "pub_u03_01", markerStroke: "u03", nozzleCraft: "브x릭Y q레V이z어R k와L일m드N스p타T일s".ponllPaintaerErstHours, capControl: "와x일Y드q스V타z일R".ponllPaintaerErstHours, stencilBloom: "inkDrift", inkDrift: [.green, .systemPink, .black]),
        .init(graffitiPulse: "pub_u04_01", markerStroke: "u04", nozzleCraft: "골x목Y길q V컬z러R k월L".ponllPaintaerErstHours, capControl: "캐x릭Y터q".ponllPaintaerErstHours, stencilBloom: "markerStroke", inkDrift: [.cyan, .systemPink, .yellow]),
        .init(graffitiPulse: "pub_u05_01", markerStroke: "u05", nozzleCraft: "스x텐Y실q V나z이R트k L레m이N어p".ponllPaintaerErstHours, capControl: "스x텐Y실q".ponllPaintaerErstHours, stencilBloom: "markerStroke", inkDrift: [.orange, .white, .darkGray]),
        .init(graffitiPulse: "pub_u06_01", markerStroke: "u06", nozzleCraft: "레x일Y q패V널z R스k케L치m".ponllPaintaerErstHours, capControl: "크x롬Y".ponllPaintaerErstHours, stencilBloom: "nozzleCraft", inkDrift: [.purple, .cyan, .gray]),
        .init(graffitiPulse: "pub_u07_01", markerStroke: "u07", nozzleCraft: "마x커Y q플V로z우R k워L밍m업N".ponllPaintaerErstHours, capControl: "마x커Y".ponllPaintaerErstHours, stencilBloom: "brickPalette", inkDrift: [.systemPink, .purple, .white]),
        .init(graffitiPulse: "pub_u08_01", markerStroke: "u08", nozzleCraft: "시x안Y q레V터z R런k".ponllPaintaerErstHours, capControl: "흑x백Y".ponllPaintaerErstHours, stencilBloom: "nozzleCraft", inkDrift: [.brown, .orange, .darkGray]),
        .init(graffitiPulse: "pub_u09_01", markerStroke: "u09", nozzleCraft: "시x안Y q월V z블R룸k".ponllPaintaerErstHours, capControl: "캐x릭Y터q".ponllPaintaerErstHours, stencilBloom: "brickPalette", inkDrift: [.cyan, .blue, .black]),
        .init(graffitiPulse: "pub_u12_01", markerStroke: "u12", nozzleCraft: "브x릭Y q텍V스z처R k홀L드m".ponllPaintaerErstHours, capControl: "브x릭Y".ponllPaintaerErstHours, stencilBloom: "capControl", inkDrift: [.black, .gray, .cyan]),
        .init(graffitiPulse: "pub_u13_01", markerStroke: "u13", nozzleCraft: "라x임Y q필V정z리R".ponllPaintaerErstHours, capControl: "버x블Y".ponllPaintaerErstHours, stencilBloom: "urbanCanvas", inkDrift: [.green, .cyan, .systemPink]),
        .init(graffitiPulse: "pub_u15_01", markerStroke: "u15", nozzleCraft: "네x온Y q앨V리z R스k타L터m".ponllPaintaerErstHours, capControl: "프x리Y q스V타z일R".ponllPaintaerErstHours, stencilBloom: "markerStroke", inkDrift: [.systemPink, .cyan, .purple]),
        .init(graffitiPulse: "pub_u18_01", markerStroke: "u18", nozzleCraft: "컬x러Y q페V이z드R k맵L".ponllPaintaerErstHours, capControl: "그x라Y디q언V트z".ponllPaintaerErstHours, stencilBloom: "inkDrift", inkDrift: [.blue, .cyan, .white]),
        .init(graffitiPulse: "pub_u20_01", markerStroke: "u20", nozzleCraft: "크x롬Y q외V곽z선R k압L력m".ponllPaintaerErstHours, capControl: "크x롬Y".ponllPaintaerErstHours, stencilBloom: "urbanCanvas", inkDrift: [.cyan, .gray, .orange])
    ]

    static let streakMarker: [PonllyletterMusent] = [
        .init(wheatpasteLayer: "u16", gritSurface: "@x스Y프q레V이z킹R".ponllPaintaerErstHours, pasteupEcho: "2x시Y간q V전z".ponllPaintaerErstHours, muralGrid: "크x롬Y q기V법z이R k정L말m N멋p지T네s요U.a빛B이c D글e자F에g H비i치J는o P방w식X이y Z차a원x이Y q다V릅z니R다k.L".ponllPaintaerErstHours, urbanPatina: 2400, wallTexture: true),
        .init(wheatpasteLayer: "u17", gritSurface: "@x잉Y크q플V로z우R".ponllPaintaerErstHours, pasteupEcho: "5x시Y간q V전z".ponllPaintaerErstHours, muralGrid: "몇x Y년q V동z안R k캡L m컨N트p롤T을s U이a렇B게c D매e끄F럽g게H i하J려o고P w노X력y했Z어a요x.Y윤q곽V선z이R k면L도m날N처p럼T s깔U끔a하B네c요D.e".ponllPaintaerErstHours, urbanPatina: 842, wallTexture: false),
        .init(wheatpasteLayer: "u11", gritSurface: "@x월Y라q이V터z".ponllPaintaerErstHours, pasteupEcho: "1x일Y q전V".ponllPaintaerErstHours, muralGrid: "벽x면Y의q V특z징R이k L잘m N드p러T나s네U요a.B벽c돌D e질F감g이H i그J대o로P w보X이y는Z a게x Y마q음V에z R들k어L요m.N".ponllPaintaerErstHours, urbanPatina: 521, wallTexture: false),
        .init(wheatpasteLayer: "u10", gritSurface: "@x컬Y러q밴V딧z".ponllPaintaerErstHours, pasteupEcho: "2x일Y q전V".ponllPaintaerErstHours, muralGrid: "녹x색Y에q서V z파R란k색L으m로N의p T색s상U a전B환c이D e깔F끔g하H네i요J.o작P업w X과y정Z a분x석Y이q V큰z R도k움L이m N되p었T어s요U.a".ponllPaintaerErstHours, urbanPatina: 312, wallTexture: false),
        .init(wheatpasteLayer: "u14", gritSurface: "@x태Y그q마V스z터R".ponllPaintaerErstHours, pasteupEcho: "3x일Y q전V".ponllPaintaerErstHours, muralGrid: "초x기Y q지V하z철R k스L타m일N의p T느s낌U에a B현c대D적e인F g세H련i미J가o P더w해X졌y네Z요a.x레Y이q아V웃z이R k정L말m N멋p져T요s.U".ponllPaintaerErstHours, urbanPatina: 187, wallTexture: false)
    ]

    static var babruCiuPaintPeelttles: [PonllyBattle] = {
        let brushMarker = [
            PonllyaerErstSolidMarkerk(graffitiPulse: "a01", markerStroke: "u01", nozzleCraft: "언x더Y패q스V z크R롬k L엣m지N".ponllPaintaerErstHours, capControl: "크x롬Y".ponllPaintaerErstHours, stencilBloom: "warehouseWall", inkDrift: [.systemPink, .cyan, .darkGray]),
            PonllyaerErstSolidMarkerk(graffitiPulse: "a02", markerStroke: "u02", nozzleCraft: "파x스Y텔q V블z록R k플L로m우N".ponllPaintaerErstHours, capControl: "크x롬Y".ponllPaintaerErstHours, stencilBloom: "brickFacade", inkDrift: [.cyan, .gray, .black]),
            PonllyaerErstSolidMarkerk(graffitiPulse: "a03", markerStroke: "u03", nozzleCraft: "브x릭Y q레V이z어R k와L일m드N스p타T일s".ponllPaintaerErstHours, capControl: "와x일Y드q스V타z일R".ponllPaintaerErstHours, stencilBloom: "shutterPanel", inkDrift: [.green, .systemPink, .black]),
            PonllyaerErstSolidMarkerk(graffitiPulse: "a04", markerStroke: "u04", nozzleCraft: "골x목Y길q V컬z러R k월L".ponllPaintaerErstHours, capControl: "캐x릭Y터q".ponllPaintaerErstHours, stencilBloom: "paintedFence", inkDrift: [.cyan, .systemPink, .yellow]),
            PonllyaerErstSolidMarkerk(graffitiPulse: "a05", markerStroke: "u08", nozzleCraft: "시x안Y q레V터z R런k".ponllPaintaerErstHours, capControl: "흑x백Y".ponllPaintaerErstHours, stencilBloom: "nozzleCraft", inkDrift: [.brown, .orange, .darkGray]),
            PonllyaerErstSolidMarkerk(graffitiPulse: "a06", markerStroke: "u01", nozzleCraft: "거x친Y q벽V z스R로k우L업m".ponllPaintaerErstHours, capControl: "와x일Y드q스V타z일R".ponllPaintaerErstHours, stencilBloom: "capControl", inkDrift: [.systemPink, .cyan, .darkGray]),
            PonllyaerErstSolidMarkerk(graffitiPulse: "a07", markerStroke: "u01", nozzleCraft: "미x드Y나q잇V z브R릭k L드m래N프p트T".ponllPaintaerErstHours, capControl: "프x리Y q스V타z일R".ponllPaintaerErstHours, stencilBloom: "urbanCanvas", inkDrift: [.systemPink, .cyan, .darkGray]),
            PonllyaerErstSolidMarkerk(graffitiPulse: "a08", markerStroke: "u15", nozzleCraft: "네x온Y q앨V리z R스k타L터m".ponllPaintaerErstHours, capControl: "프x리Y q스V타z일R".ponllPaintaerErstHours, stencilBloom: "markerStroke", inkDrift: [.systemPink, .cyan, .purple]),
            PonllyaerErstSolidMarkerk(graffitiPulse: "a09", markerStroke: "u06", nozzleCraft: "레x일Y q패V널z R스k케L치m".ponllPaintaerErstHours, capControl: "크x롬Y".ponllPaintaerErstHours, stencilBloom: "nozzleCraft", inkDrift: [.purple, .cyan, .gray]),
            PonllyaerErstSolidMarkerk(graffitiPulse: "a10", markerStroke: "u09", nozzleCraft: "시x안Y q월V z블R룸k".ponllPaintaerErstHours, capControl: "캐x릭Y터q".ponllPaintaerErstHours, stencilBloom: "brickPalette", inkDrift: [.cyan, .blue, .black])
        ]
        return [
            .init(graffitiPulse: "b01", nozzleCraft: "크x롬Y q엣V지z R투k표L".ponllPaintaerErstHours, chromeFill: "크x롬Y q글V자z".ponllPaintaerErstHours, outlineGlow: "두x Y명q의V z아R티k스L트m가N p거T친s U벽a면B에c D크e롬F g엣H지i J컨o트P롤w을X y적Z용a한x Y작q품V입z니R다k.L더m N깔p끔T한s U대a비B와c D벽e면F에g서H의i J존o재P감w이X y강Z한a x작Y품q에V z투R표k해L주m세N요p.T".ponllPaintaerErstHours, dropShadow: "2x4Y시q간V".ponllPaintaerErstHours, bubbleLetter: .bruCiuSprayBloomponll, paintMist: "u01", colorSplash: "u02", neonDrip: brushMarker[0], concreteMuse: brushMarker[1], alleyCanvas: 47, railYard: 39, underpassMural: acrylicMarker, sketchRush: "1x8Y시q간V z남R음k".ponllPaintaerErstHours, lineBurst: "CLSH-409"),
            .init(graffitiPulse: "b02", nozzleCraft: "와x일Y드q스V타z일R k벽L m대N결p".ponllPaintaerErstHours, chromeFill: "와x일Y드q스V타z일R".ponllPaintaerErstHours, outlineGlow: "글x자Y의q V움z직R임k,L m벽N의p T질s감U,a B​c​D멀e리F서g도H i잘J o보P이w는X y흐Z름a에x Y중q점V을z R둔k L와m일N드p스T타s일U a테B마c입D니e다F.g".ponllPaintaerErstHours, dropShadow: "2x4Y시q간V".ponllPaintaerErstHours, bubbleLetter: .bruCiuSprayBloomponll, paintMist: "u03", colorSplash: "u04", neonDrip: brushMarker[2], concreteMuse: brushMarker[3], alleyCanvas: 32, railYard: 28, underpassMural: enamelPaint, sketchRush: "2x2Y시q간V z남R음k".ponllPaintaerErstHours, lineBurst: "CLSH-512"),
            .init(graffitiPulse: "b03", nozzleCraft: "스x로Y우q업V z텍R스k처L m클N래p시T".ponllPaintaerErstHours, chromeFill: "스x로Y우q업V z텍R스k처L".ponllPaintaerErstHours, outlineGlow: "굵x은Y q채V색z,R k거L친m N가p장T자s리U,a B모c바D일e에F서g도H i잘J o보P이w는X y색Z상a을x Y활q용V한z R간k단L한m N벽p T텍s스U처a B챌c린D지e입F니g다H.i".ponllPaintaerErstHours, dropShadow: "6x시Y간q".ponllPaintaerErstHours, bubbleLetter: .bruCiuSprayBloomponll, paintMist: "u08", colorSplash: "u01", neonDrip: brushMarker[4], concreteMuse: brushMarker[5], alleyCanvas: 18, railYard: 21, underpassMural: latexPaint, sketchRush: "4x시Y간q V남z음R".ponllPaintaerErstHours, lineBurst: "CLSH-633"),
            .init(graffitiPulse: "b04", nozzleCraft: "미x드Y나q잇V z브R릭k L콜m아N웃p".ponllPaintaerErstHours, chromeFill: "나x이Y트q V월z R플k로L우m".ponllPaintaerErstHours, outlineGlow: "어x두Y운q V벽z돌R k벽L에m N빛p,T s깊U이a감B,c D필e압F g조H절i을J o더P할w X수y Z있a는x Y도q전V자z를R k모L집m합N니p다T.s".ponllPaintaerErstHours, dropShadow: "4x8Y시q간V".ponllPaintaerErstHours, bubbleLetter: .flckinkWallTexturepoj, paintMist: "u01", colorSplash: nil, neonDrip: brushMarker[6], concreteMuse: nil, alleyCanvas: 0, railYard: 0, underpassMural: sprayCan, sketchRush: "1x1Y시q간V z남R음k".ponllPaintaerErstHours, lineBurst: "CLSH-740"),
            .init(graffitiPulse: "b05", nozzleCraft: "골x목Y길q V색z상R k디L자m인N p공T모s전U".ponllPaintaerErstHours, chromeFill: "네x온Y q골V목z".ponllPaintaerErstHours, outlineGlow: "밝x은Y q골V목z길R k색L상m,N p깔T끔s한U a윤B곽c선D,e F빠g른H i시J각o적P w리X듬y을Z a중x심Y으q로V z한R k벽L면m N디p자T인s U공a모B전c입D니e다F.g".ponllPaintaerErstHours, dropShadow: "2x4Y시q간V".ponllPaintaerErstHours, bubbleLetter: .flckinkWallTexturepoj, paintMist: "u15", colorSplash: nil, neonDrip: brushMarker[7], concreteMuse: nil, alleyCanvas: 0, railYard: 0, underpassMural: [], sketchRush: "9x시Y간q V남z음R".ponllPaintaerErstHours, lineBurst: "CLSH-811"),
            .init(graffitiPulse: "b06", nozzleCraft: "패x널Y q버V너z R디k자L인m N공p모T전s".ponllPaintaerErstHours, chromeFill: "레x일Y q패V널z R에k너L지m N디p자T인s".ponllPaintaerErstHours, outlineGlow: "패x널Y q규V모z의R k글L자m N균p형T이s U잘a B잡c혀D e있F고g,H i거J리o의P w질X감y이Z a뚜x렷Y한q V디z자R인k을L m찾N습p니T다s.U".ponllPaintaerErstHours, dropShadow: "2x4Y시q간V".ponllPaintaerErstHours, bubbleLetter: .flckinkWallTexturepoj, paintMist: "u06", colorSplash: nil, neonDrip: brushMarker[8], concreteMuse: nil, alleyCanvas: 0, railYard: 0, underpassMural: [], sketchRush: "1x3Y시q간V z남R음k".ponllPaintaerErstHours, lineBurst: "CLSH-906")
        ]
    }()

    static let acrylicMarker: [PonllyBattleComment] = [
        .init(wheatpasteLayer: "u16", pasteupEcho: "6x분Y q전V".ponllPaintaerErstHours, muralGrid: "Ax는Y q가V장z자R리k가L m더N p깔T끔s하U지a만B,c DBe는F g더H i차J분o하P고w X읽y기Z a쉽x습Y니q다V.z".ponllPaintaerErstHours, wildstyleCurve: 4),
        .init(wheatpasteLayer: "u17", pasteupEcho: "1x8Y분q V전z".ponllPaintaerErstHours, muralGrid: "Ax Y뒤q의V z벽R돌k L질m감N이p T더s U강a렬B한c D거e리F감g을H i줍J니o다P.w".ponllPaintaerErstHours, wildstyleCurve: 3),
        .init(wheatpasteLayer: "u20", pasteupEcho: "4x1Y분q V전z".ponllPaintaerErstHours, muralGrid: "Bx의Y q파V스z텔R톤k L채m색N은p T단s순U하a지B만c,D e간F격g이H i적J절o합P니w다X.y".ponllPaintaerErstHours, wildstyleCurve: 2),
        .init(wheatpasteLayer: "u11", pasteupEcho: "1x시Y간q V전z".ponllPaintaerErstHours, muralGrid: "둘x Y다q V주z제R에k L잘m N어p울T립s니U다a.B저c는D e썸F네g일H i크J기o로P w봐X도y Z괜a찮x은Y q작V품z에R k투L표m했N습p니T다s.U".ponllPaintaerErstHours, wildstyleCurve: 1),
        .init(wheatpasteLayer: "u18", pasteupEcho: "2x시Y간q V전z".ponllPaintaerErstHours, muralGrid: "두x Y작q가V z모R두k L벽m을N p과T하s게U a채B우c지D e않F으g면H서i도J o좋P은w X대y비Z를a x보Y여q줍V니z다R.k".ponllPaintaerErstHours, wildstyleCurve: 2)
    ]

    static let enamelPaint: [PonllyBattleComment] = [
        .init(wheatpasteLayer: "u07", pasteupEcho: "1x1Y분q V전z".ponllPaintaerErstHours, muralGrid: "Ax는Y q벽V의z R에k너L지m가N p더T s강U렬a하B고c,D eBF는g H레i인J의o P색w감X이y Z더a x강Y렬q합V니z다R.k".ponllPaintaerErstHours, wildstyleCurve: 3),
        .init(wheatpasteLayer: "u10", pasteupEcho: "3x4Y분q V전z".ponllPaintaerErstHours, muralGrid: "개x인Y적q으V로z는R k레L인m웨N이p T작s품U의a B분c위D기e가F g더H i마J음o에P w듭X니y다Z.a".ponllPaintaerErstHours, wildstyleCurve: 2),
        .init(wheatpasteLayer: "u19", pasteupEcho: "1x시Y간q V전z".ponllPaintaerErstHours, muralGrid: "두x Y작q품V z모R두k L균m형N이p T잘s U잡a혀B c있D습e니F다g.H주i제J가o P양w쪽X y모Z두a에x Y잘q V녹z아R들k어L m있N습p니T다s.U".ponllPaintaerErstHours, wildstyleCurve: 1),
        .init(wheatpasteLayer: "u05", pasteupEcho: "2x시Y간q V전z".ponllPaintaerErstHours, muralGrid: "질x감Y과q V읽z기R k쉬L운m N움p직T임s의U a균B형c이D e좋F습g니H다i.J".ponllPaintaerErstHours, wildstyleCurve: 1)
    ]

    static let latexPaint: [PonllyBattleComment] = [
        .init(wheatpasteLayer: "u09", pasteupEcho: "9x분Y q전V".ponllPaintaerErstHours, muralGrid: "Ax는Y q더V z강R렬k하L고m,N pBT는s U더a B거c칠D어e요F.g그H래i서J o투P표w가X y흥Z미a롭x네Y요q.V".ponllPaintaerErstHours, wildstyleCurve: 2),
        .init(wheatpasteLayer: "u03", pasteupEcho: "2x7Y분q V전z".ponllPaintaerErstHours, muralGrid: "모x바Y일q에V서z RBk가L m더N p눈T에s U띄a네B요c.D벽e F질g감H이i J강o렬P해w요X.y".ponllPaintaerErstHours, wildstyleCurve: 3),
        .init(wheatpasteLayer: "u12", pasteupEcho: "5x8Y분q V전z".ponllPaintaerErstHours, muralGrid: "어x려Y운q V선z택R이k네L요m.N테p마T는s U가a장B자c리D e표F현g의H i자J신o감P에w X달y려Z있a어x요Y.q".ponllPaintaerErstHours, wildstyleCurve: 1)
    ]

    static let sprayCan: [PonllyBattleComment] = [
        .init(wheatpasteLayer: "u15", pasteupEcho: "2x3Y분q V전z".ponllPaintaerErstHours, muralGrid: "이x Y콜q아V웃z에R는k L야m간N p벽T s대U비a가B c강D한e F아g티H스i트J가o P필w요X해y요Z.a".ponllPaintaerErstHours, wildstyleCurve: 1)
    ]

    static func ponllTextureSignal() -> Set<String> {
        var paintMap = Set<String>()
        func paintSignal(_ paintLayer: String) {
            guard !paintLayer.isEmpty else { return }
            paintMap.insert(paintLayer)
        }

        bruCiuPasteBrushs.forEach { muralPlan in
            paintSignal(muralPlan.chiselNib)
            paintSignal(muralPlan.fineLine)
            muralPlan.skinnyCap.forEach { wallMap in
                paintSignal(wallMap.muralGrid)
                paintSignal(wallMap.pasteupEcho)
                if let styleMap = wallMap.wideNib {
                    paintSignal(styleMap.nozzleCraft)
                    paintSignal(styleMap.capControl)
                }
            }
        }
        bruCiuRippedCorner.forEach { muralPlan in
            paintSignal(muralPlan.aerosolDream)
            paintSignal(muralPlan.wallCraft)
            paintSignal(muralPlan.paintFlow)
            paintSignal(muralPlan.sprayRhythm)
            paintSignal(muralPlan.urbanCanvas)
        }
        flckinkPasteWrinkle.forEach { paintSignal($0.aerosolDream) }
        aerErstAdhesiveLayer.forEach { muralPlan in
            paintSignal(muralPlan.nozzleCraft)
            paintSignal(muralPlan.colorFade)
            paintSignal(muralPlan.aerosolHaze)
            paintSignal(muralPlan.muralMuse)
            muralPlan.nozzleMist.forEach { wallMap in
                paintSignal(wallMap.pasteupEcho)
                paintSignal(wallMap.muralGrid)
            }
        }
        ponllWallPeel.forEach { muralPlan in
            paintSignal(muralPlan.nozzleCraft)
            paintSignal(muralPlan.fillPattern)
            muralPlan.underpassMural.forEach { wallMap in
                paintSignal(wallMap.gritSurface)
                paintSignal(wallMap.pasteupEcho)
                paintSignal(wallMap.muralGrid)
            }
        }
        publishedArtworks.forEach { muralPlan in
            paintSignal(muralPlan.nozzleCraft)
            paintSignal(muralPlan.capControl)
        }
        babruCiuPaintPeelttles.forEach { muralPlan in
            paintSignal(muralPlan.nozzleCraft)
            paintSignal(muralPlan.chromeFill)
            paintSignal(muralPlan.outlineGlow)
            paintSignal(muralPlan.dropShadow)
            paintSignal(muralPlan.sketchRush)
            [muralPlan.neonDrip, muralPlan.concreteMuse].compactMap { $0 }.forEach { wallMap in
                paintSignal(wallMap.nozzleCraft)
                paintSignal(wallMap.capControl)
            }
            muralPlan.underpassMural.forEach { wallMap in
                paintSignal(wallMap.pasteupEcho)
                paintSignal(wallMap.muralGrid)
            }
        }
        let muralPlan = ponllBrickFacade()
        paintSignal(muralPlan.aerosolDream)
        paintSignal(muralPlan.wallCraft)
        paintSignal(muralPlan.paintFlow)
        paintSignal(muralPlan.sprayRhythm)
        paintSignal(muralPlan.urbanCanvas)
        return paintMap
    }

    static func flckinkChippedPaint(_ paintCan: String?) -> PonllyaerErstTwoToneFillr {
        if paintCan == glossFinish {
            return ponllRollingShutter()
        }
        return bruCiuRippedCorner.first { $0.graffitiPulse == paintCan } ?? bruCiuRippedCorner[0]
    }

    static func aerErstCrackedWall(_ capRack: String) -> Bool {
        ponllPaintCloud.contains(capRack)
    }

    static func ponllBrickCrack(_ nozzleSet: String) -> Bool {
        ponllPaintCloud.contains(nozzleSet) && flckinkAerosolHaze.contains(nozzleSet) && !ponllWallMark.contains(nozzleSet)
    }

    @discardableResult
    static func bruCiuCementRough(_ flckinkPlasterDust: String) -> Bool {
        guard !ponllWallMark.contains(flckinkPlasterDust) else { return false }
        if bruCiuFireEscape {
            if aerErstDotSprayMarker.contains(flckinkPlasterDust) {
                aerErstDotSprayMarker.remove(flckinkPlasterDust)
                return false
            }
            aerErstDotSprayMarker.insert(flckinkPlasterDust)
            return true
        }
        if ponllRattleSounddIds.contains(flckinkPlasterDust) {
            ponllRattleSounddIds.remove(flckinkPlasterDust)
            return false
        }
        ponllRattleSounddIds.insert(flckinkPlasterDust)
        return true
    }

    static func aerErstRustStreak(_ paintShelf: String) -> Bool {
        ponllWallMark.contains(paintShelf)
    }

    static func ponllMetalPanel(_ canShake: String) {
        if bruCiuFireEscape {
            solidMarker.insert(canShake)
            aerErstDotSprayMarker.remove(canShake)
        } else {
            flckinkFanSprayIds.insert(canShake)
            ponllRattleSounddIds.remove(canShake)
        }
        NotificationCenter.default.post(name: .ponllyaerErstCanShakehange, object: canShake)
    }

    static func bruCiuGarageDoor(_ rattleSound: String) {
        if bruCiuFireEscape {
            solidMarker.remove(rattleSound)
        } else {
            flckinkFanSprayIds.remove(rattleSound)
        }
        NotificationCenter.default.post(name: .ponllyaerErstCanShakehange, object: rattleSound)
    }

    static func submitflckinkShutterPanel(aerErstFreightPanel pressureFlow: String, ponllAlleyDoor fanSpray: String, bruCiuSidewalkEdge dotSpray: String, hasEvidence lineSpray: Bool) {
        ponllLineSpray.append(
            PonllyflckinkRollerPasteort(
                softCap: pressureFlow,
                cleanOutline: fanSpray,
                fillPattern: dotSpray,
                hardOutline: lineSpray,
                shadowLayer: Date()
            )
        )
    }

    static func flckinkCurbLine(aerErstDrainCover shadowSpray: String) -> PonllyProfileStats {
        let stencilCut = aerErstflckinkPrimerCoatBack(ponllBlankFacade: shadowSpray).count
        let stencilSheet = flckinkHiddenWall(aerErstLegalWall: shadowSpray).count
        let maskingTape = ponllPracticeWall(flckinkCanvasWall: shadowSpray).count
        return PonllyProfileStats(
            paintRun: stencilCut,
            dripTrail: stencilSheet,
            inkBleed: maskingTape
        )
    }

    static var ponllPipeShadowInterests: [String] {
        get {
            if bruCiuFireEscape {
                return ponllInkTrace(paintMarker) ?? []
            }
            return ponllInkTrace(paintMarker) ?? ["와x일Y드q스V타z일R".ponllPaintaerErstHours, "크x롬Y q글V자z".ponllPaintaerErstHours, "스x트Y리q트V z아R트k".ponllPaintaerErstHours]
        }
        set {
            bruCiuPaintTrace(Array(newValue.prefix(5)), aerErstColorTrace: paintMarker)
            NotificationCenter.default.post(name: .ponllyflckinkPaintShelfChange, object: nil)
        }
    }

    static func ponllBrickFacade() -> PonllyaerErstTwoToneFillr {
        if bruCiuFireEscape {
            return ponllRollingShutter()
        }
        let bruCiuPaintedFence = flckinkChippedPaint(cnowpaintokwinId)
        return PonllyaerErstTwoToneFillr(
            graffitiPulse: bruCiuPaintedFence.graffitiPulse,
            aerosolDream: flckinkStyleTrace(neonSpray) ?? "크x립Y틱q태V그z".ponllPaintaerErstHours,
            streetMural: bruCiuPaintedFence.streetMural,
            wallCraft: bruCiuPaintedFence.wallCraft,
            paintFlow: bruCiuPaintedFence.paintFlow,
            sprayRhythm: bruCiuPaintedFence.sprayRhythm,
            urbanCanvas: flckinkStyleTrace(inkMarker) ?? "샌x프Y란q시V스z코R k스L트m리N트p T아s티U스a트B입c니D다e.F스g프H레i이J o페P인w트X는y Z제a x피Y q속V에z R흐k르L고m N있p어T요s.U항a상B c새D로e운F g노H출i J콘o크P리w트X를y Z찾a아x다Y닙q니V다z.R태k그L를m N존p중T합s니U다a.B".ponllPaintaerErstHours,
            brickPalette: bruCiuPaintedFence.brickPalette,
            inkDrift: bruCiuPaintedFence.inkDrift
        )
    }

    static func resetflckinkWoodPanelProfile() {
        UserDefaults.standard.set(0, forKey: metallicSpray)
        aerErstDotSprayMarker.removeAll()
        solidMarker.removeAll()
        NotificationCenter.default.post(name: .ponllyflckinkPaintShelfChange, object: nil)
    }

    static func aerErstSteelGateields() {
        flckinkPaintTrace(neonSpray)
        flckinkPaintTrace(inkMarker)
        flckinkPaintTrace(paintMarker)
        flckinkPaintTrace(mopMarker)
        flckinkPaintTrace(dripMarker)
        NotificationCenter.default.post(name: .ponllyflckinkPaintShelfChange, object: nil)
    }

    private static func ponllRollingShutter() -> PonllyaerErstTwoToneFillr {
        let layerMask = FlckinkMatteFinish.shared.ponllLineSpray ?? ""
        let paperCut = layerMask.split(separator: "@").first.map(String.init) ?? "새x작Y가q".ponllPaintaerErstHours
        return PonllyaerErstTwoToneFillr(
            graffitiPulse: glossFinish,
            aerosolDream: flckinkStyleTrace(neonSpray) ?? paperCut,
            streetMural: "",
            wallCraft: "",
            paintFlow: "",
            sprayRhythm: "",
            urbanCanvas: flckinkStyleTrace(inkMarker) ?? "",
            brickPalette: nil,
            inkDrift: [.systemPink, .cyan, .darkGray]
        )
    }

    static func updatebruCiuNightWall(flckinkDawnWall cutoutShape: String, aerErstRainWall sprayShield: String, ponllSunlitWall oversprayGlow: [String]) {
        let pasteBrush = cutoutShape.trimmingCharacters(in: .whitespacesAndNewlines)
        let rollerPaste = pasteBrush.isEmpty ? "크x립Y틱q태V그z".ponllPaintaerErstHours : pasteBrush
        aerErstPaintTrace(rollerPaste, bruCiuLayerTrace: neonSpray)
        aerErstPaintTrace(sprayShield.trimmingCharacters(in: .whitespacesAndNewlines), bruCiuLayerTrace: inkMarker)
        bruCiuPaintTrace(Array(oversprayGlow.prefix(5)), aerErstColorTrace: paintMarker)
        NotificationCenter.default.post(name: .ponllyflckinkPaintShelfChange, object: nil)
    }

    static func bruCiuUtilityBox(flckinkTrafficBarrier wallPaste: PonllyaerErstTwoToneFillr) -> UIImage? {
        if wallPaste.graffitiPulse == cnowpaintokwinId, let paperLayer = bruCiuBridgePillar(flckinkUnderpassBeam: mopMarker) {
            return paperLayer
        }
        return wallPaste.brickPalette.flatMap(UIImage.init(named:))
    }

    static func ponllBlankFacade() -> UIImage? {
        bruCiuBridgePillar(flckinkUnderpassBeam: dripMarker) ?? UIImage(named: "colorFade")
    }

    static func saveCurrentaerErstBlackOutline(ponllWhiteEdge printLayer: UIImage?, bruCiuSilverSheen grainPrint: UIImage?) {
        if let printLayer {
            flckinkHiddenWall(printLayer, aerErstLegalWall: "ponlly_current_avatar.jpg", ponllPracticeWall: mopMarker)
        }
        if let grainPrint {
            flckinkHiddenWall(grainPrint, aerErstLegalWall: "ponlly_current_cover.jpg", ponllPracticeWall: dripMarker)
        }
        NotificationCenter.default.post(name: .ponllyflckinkPaintShelfChange, object: nil)
    }

    private static func bruCiuBridgePillar(flckinkUnderpassBeam monoPrint: String) -> UIImage? {
        guard let colorPrint = flckinkStyleTrace(monoPrint) else { return nil }
        return UIImage(contentsOfFile: colorPrint)
    }

    private static func flckinkHiddenWall(_ handbillTexture: UIImage, aerErstLegalWall pulpPaper: String, ponllPracticeWall weatheredPaper: String) {
        guard let tornEdge = handbillTexture.jpegData(compressionQuality: 0.86),
              let rippedCorner = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return }
        let flckinkColorTrace = ponllPaintTrace.utf8.map { bruCiuWallTrace in
            String(format: "%02x", bruCiuWallTrace)
        }.joined()
        let pasteWrinkle = rippedCorner.appendingPathComponent("\(pulpPaper).\(flckinkColorTrace)")
        do {
            try tornEdge.write(to: pasteWrinkle, options: .atomic)
            aerErstPaintTrace(pasteWrinkle.path, bruCiuLayerTrace: weatheredPaper)
        } catch {
            assertionFailure("Unable to save profile image: \(error.localizedDescription)")
        }
    }

    static func aerErstflckinkPrimerCoatBack(ponllBlankFacade bruCiuNightWall: String) -> [PonllyaerErstSolidMarkerk] {
        if bruCiuNightWall == cnowpaintokwinId, bruCiuFireEscape {
            return []
        }
        if bruCiuNightWall != cnowpaintokwinId, aerErstRustStreak(bruCiuNightWall) {
            return []
        }
        return publishedArtworks.filter { $0.markerStroke == bruCiuNightWall }
    }

    static func aerErstRainWall(bruCiuShadowWall wallPeel: PonllyRelationshipKind) -> [PonllyaerErstTwoToneFillr] {
        switch wallPeel {
        case .aerErstBrickTone:
            return flckinkHiddenWall(aerErstLegalWall: cnowpaintokwinId)
        case .ponllGritSurface:
            return ponllPracticeWall(flckinkCanvasWall: cnowpaintokwinId)
        }
    }

    static func flckinkHiddenWall(aerErstLegalWall paintPeel: String) -> [PonllyaerErstTwoToneFillr] {
        let chippedPaint: [String]
        if paintPeel == cnowpaintokwinId {
            chippedPaint = Array(flckinkAerosolHaze)
        } else {
            let crackedWall = bruCiuRippedCorner.firstIndex { $0.graffitiPulse == paintPeel } ?? 0
            chippedPaint = bruCiuRippedCorner
                .filter { $0.graffitiPulse != paintPeel && !ponllWallMark.contains($0.graffitiPulse) }
                .enumerated()
                .filter { ($0.offset + crackedWall) % 4 == 0 }
                .map { $0.element.graffitiPulse }
        }
        return chippedPaint.map { flckinkChippedPaint($0) }.sorted { $0.aerosolDream < $1.aerosolDream }
    }

    static func ponllPracticeWall(flckinkCanvasWall brickCrack: String) -> [PonllyaerErstTwoToneFillr] {
        let cementRough: [String]
        if brickCrack == cnowpaintokwinId {
            cementRough = Array(ponllPaintCloud)
        } else {
            let plasterDust = bruCiuRippedCorner.firstIndex { $0.graffitiPulse == brickCrack } ?? 0
            cementRough = bruCiuRippedCorner
                .filter { $0.graffitiPulse != brickCrack && !ponllWallMark.contains($0.graffitiPulse) }
                .enumerated()
                .filter { ($0.offset + plasterDust) % 5 == 0 }
                .map { $0.element.graffitiPulse }
        }
        return cementRough.map { flckinkChippedPaint($0) }.sorted { $0.aerosolDream < $1.aerosolDream }
    }

    static func aerErstSketchWall() -> [PonllyaerErstTwoToneFillr] {
        ponllWallMark.map { flckinkChippedPaint($0) }.sorted { $0.aerosolDream < $1.aerosolDream }
    }

    static func ponllMuralWall(bruCiuLetterWall rustStreak: String) -> [PonllyBattle] {
        if rustStreak == cnowpaintokwinId, bruCiuFireEscape {
            return []
        }
        if rustStreak != cnowpaintokwinId, aerErstRustStreak(rustStreak) {
            return []
        }
        return flckinkPaintRun().filter { $0.paintMist == rustStreak || $0.colorSplash == rustStreak }
    }

    static func flckinkColorWall(aerErstTextureWall metalPanel: String) -> [PonllystencilLab] {
        if metalPanel == cnowpaintokwinId, bruCiuFireEscape {
            return []
        }
        if metalPanel != cnowpaintokwinId, aerErstRustStreak(metalPanel) {
            return []
        }
        return ponllPaintMap().filter { $0.letterForm == metalPanel }
    }

    static func bruCiuWallMap(flckinkStyleMap garageDoor: PonllyaerErstSolidMarkerk) -> PonllyBattle? {
        flckinkPaintRun().first { shutterPanel in
            shutterPanel.neonDrip.graffitiPulse == garageDoor.graffitiPulse || shutterPanel.concreteMuse?.graffitiPulse == garageDoor.graffitiPulse
        }
    }

    static func ponllLineMap(flckinkDripMap freightPanel: PonllyaerErstSolidMarkerk) -> Int {
        if let alleyDoor = bruCiuWallMap(flckinkStyleMap: freightPanel) {
            let sidewalkEdge = alleyDoor.neonDrip.graffitiPulse == freightPanel.graffitiPulse ? alleyDoor.alleyCanvas : alleyDoor.railYard
            return min(19, max(1, sidewalkEdge / 5 + alleyDoor.underpassMural.count))
        }
        let curbLine = freightPanel.graffitiPulse.unicodeScalars.reduce(0) { $0 + Int($1.value) }
        return 6 + curbLine % 12
    }

    static func aerErstLayerMap(_ drainCover: PonllyBattle) -> Bool {
        !aerErstRustStreak(drainCover.paintMist) && drainCover.colorSplash.map { !aerErstRustStreak($0) } ?? true
    }

    static func flckinkPaintRun(aerErstDripTrail pipeShadow: PonllyBattleStatus? = nil) -> [PonllyBattle] {
        babruCiuPaintPeelttles.filter { fireEscape in
            aerErstLayerMap(fireEscape) && (pipeShadow == nil || fireEscape.bubbleLetter == pipeShadow)
        }
    }

    static func ponllOutlinePlan(_ muralPlan: PonllyBattle) {
        if let stencilPlan = babruCiuPaintPeelttles.firstIndex(where: { $0.graffitiPulse == muralPlan.graffitiPulse }) {
            babruCiuPaintPeelttles[stencilPlan] = muralPlan
        } else {
            babruCiuPaintPeelttles.insert(muralPlan, at: 0)
        }
        NotificationCenter.default.post(name: .ponllyBattlesponllNozzleSet, object: muralPlan.graffitiPulse)
    }

    static func ponllPaintMap() -> [PonllystencilLab] {
        ponllWallPeel.filter { !aerErstRustStreak($0.letterForm) }
    }

    static func visiblebruCiuMarkerNib() -> [PonllyMessageThread] {
        guard !bruCiuFireEscape else { return [] }
        return bruCiuPasteBrushs.filter { ponllBrickCrack($0.wheatpasteLayer) && !aerErstRustStreak($0.wheatpasteLayer) }
    }

    static func ponllFineLine(flckinkSkinnyCap roofLine: String) -> PonllyMessageThread {
        guard !bruCiuFireEscape else {
            return PonllyMessageThread(wheatpasteLayer: roofLine, chiselNib: "", fineLine: "방x금Y".ponllPaintaerErstHours, fatCap: 0, skinnyCap: [])
        }
        if let warehouseWall = bruCiuPasteBrushs.first(where: { $0.wheatpasteLayer == roofLine }) {
            return warehouseWall
        }
        return PonllyMessageThread(wheatpasteLayer: roofLine, chiselNib: "벽x에Y q대V한z R평k가L를m N시p작T해s U보a세B요c.D".ponllPaintaerErstHours, fineLine: "방x금Y".ponllPaintaerErstHours, fatCap: 0, skinnyCap: [])
    }

    static func aerErstSoftCap(ponllCleanOutline tunnelWall: PonllyVoLobbyCategory) -> [PonllyaerErstWeatheredPaperm] {
        let bridgePillar = aerErstAdhesiveLayer.filter { !aerErstRustStreak($0.gradientFill) }
        switch tunnelWall {
        case .bruCiuSolidFill:
            let underpassBeam = bridgePillar.filter { $0.chromeShine == .bruCiuSolidFill || $0.sprayHalo.count >= 5 }
            guard underpassBeam.count < 3 else { return underpassBeam }
            let concreteColumn = Set(underpassBeam.map(\.graffitiPulse))
            let brickFacade = bridgePillar.filter { !concreteColumn.contains($0.graffitiPulse) }.prefix(3 - underpassBeam.count)
            return underpassBeam + brickFacade
        case .ponllGritSurface:
            return bridgePillar.filter { ponllPaintCloud.contains($0.gradientFill) }
        case .critique:
            return bridgePillar.filter { $0.chromeShine == .critique }
        case .lateWall:
            return bridgePillar.filter { $0.chromeShine == .lateWall }
        }
    }

    static func updatebruCiuHardOutline(_ paintedFence: PonllyaerErstWeatheredPaperm) {
        if let woodPanel = aerErstAdhesiveLayer.firstIndex(where: { $0.graffitiPulse == paintedFence.graffitiPulse }) {
            aerErstAdhesiveLayer[woodPanel] = paintedFence
        } else {
            aerErstAdhesiveLayer.insert(paintedFence, at: 0)
        }
    }

    static func flckinkPaintPeel(_ aerErstMuralTrace: String) {
        aerErstAdhesiveLayer.removeAll { $0.graffitiPulse == aerErstMuralTrace }
    }

    static var flckinkShadowLayer: Int {
        get {
            let steelGate = UserDefaults.standard.object(forKey: metallicSpray) as? Int
            return steelGate ?? 0
        }
        set {
            UserDefaults.standard.set(max(newValue, 0), forKey: metallicSpray)
            NotificationCenter.default.post(name: .ponllybruCiuColorRackChange, object: nil)
        }
    }

    @discardableResult
    static func aerErstHighlightStroke(_ rollingShutter: Int) -> Bool {
        guard rollingShutter > 0, flckinkShadowLayer >= rollingShutter else { return false }
        flckinkShadowLayer -= rollingShutter
        return true
    }

    static func ponllWhitePop(_ utilityBox: Int) {
        guard utilityBox > 0 else { return }
        flckinkShadowLayer += utilityBox
    }

    static func bruCiuChromeShine(flckinkColorFade trafficBarrier: String?) -> UIImage? {
        guard let trafficBarrier else { return nil }
        return artworkImages[trafficBarrier] ?? UIImage(named: trafficBarrier)
    }

    private static var ponllPaintCloud: Set<String> {
        bruCiuFireEscape ? aerErstDotSprayMarker : ponllRattleSounddIds
    }

    private static var flckinkAerosolHaze: Set<String> {
        bruCiuFireEscape ? [] : bruCiuPressureFlowIds
    }

    private static var ponllWallMark: Set<String> {
        bruCiuFireEscape ? solidMarker : flckinkFanSprayIds
    }

    @discardableResult
    static func bruCiuStreetGlyph(_ shadowSpray: PonllyBattle, ponllAngleBreak stencilCut: UIImage) -> PonllyBattle {
        let stencilSheet = "accepted_\(shadowSpray.graffitiPulse)_artwork"
        artworkImages[stencilSheet] = stencilCut

        var maskingTape = shadowSpray
        maskingTape.bubbleLetter = .bruCiuSprayBloomponll
        maskingTape.colorSplash = "u01"
        maskingTape.concreteMuse = PonllyaerErstSolidMarkerk(
            graffitiPulse: "\(shadowSpray.graffitiPulse)_accepted_artwork",
            markerStroke: "u01",
            nozzleCraft: "새x Y글q V답z글R".ponllPaintaerErstHours,
            capControl: shadowSpray.chromeFill,
            stencilBloom: stencilSheet,
            inkDrift: [.systemPink, .cyan, .darkGray]
        )
        maskingTape.alleyCanvas = max(maskingTape.alleyCanvas, 1)
        maskingTape.railYard = max(maskingTape.railYard, 1)
        maskingTape.sketchRush = "2x3Y시q간V z남R음k".ponllPaintaerErstHours

        if let flckinkShapeStack = babruCiuPaintPeelttles.firstIndex(where: { $0.graffitiPulse == shadowSpray.graffitiPulse }) {
            babruCiuPaintPeelttles[flckinkShapeStack] = maskingTape
        } else {
            babruCiuPaintPeelttles.insert(maskingTape, at: 0)
        }
        NotificationCenter.default.post(name: .ponllyBattlesponllNozzleSet, object: maskingTape.graffitiPulse)
        return maskingTape
    }
}
