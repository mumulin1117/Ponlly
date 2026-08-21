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

struct PonllyUser {
    let id: String
    let name: String
    let gender: String
    let level: String
    let city: String
    let crew: String
    let bio: String
    let avatarName: String?
    let colors: [UIColor]
}

struct PonllyArtwork {
    let id: String
    let ownerId: String
    let title: String
    let style: String
    let imageName: String?
    let colors: [UIColor]
}

extension Notification.Name {
    static let ponllyBattlesDidChange = Notification.Name("ponllyBattlesDidChange")
    static let ponllyCoinBalanceDidChange = Notification.Name("ponllyCoinBalanceDidChange")
    static let ponllyCurrentProfileDidChange = Notification.Name("ponllyCurrentProfileDidChange")
    static let ponllyBlockListDidChange = Notification.Name("ponllyBlockListDidChange")
}

struct PonllyBattleComment {
    let userId: String
    let time: String
    let text: String
    let reactionCount: Int
}

enum PonllyBattleStatus {
    case hot
    case waiting
}

struct PonllyBattle {
    let id: String
    var title: String
    var theme: String
    var description: String
    var duration: String
    var status: PonllyBattleStatus
    var creatorAId: String
    var creatorBId: String?
    var artworkA: PonllyArtwork
    var artworkB: PonllyArtwork?
    var votesA: Int
    var votesB: Int
    var comments: [PonllyBattleComment]
    var deadlineText: String
    var arenaId: String
}

struct PonllyVideo {
    let id: String
    let authorId: String
    let title: String
    let details: String
    let fileName: String
    var reactionCount: Int
    var commentCount: Int
    var reportCount: Int
    var isLiked: Bool
    var isFollowingAuthor: Bool
    var comments: [PonllyVideoComment]
    let colors: [UIColor]
}

struct PonllyVideoComment {
    let userId: String
    let handle: String
    let time: String
    let text: String
    var likeCount: Int
    var isLiked: Bool
}

struct PonllyProfileStats {
    var artworkCount: Int
    var followerCount: Int
    var followingCount: Int
}

struct PonllyMessageBubble {
    let senderId: String
    let text: String
    let time: String
    let artwork: PonllyArtwork?
}

struct PonllyMessageThread {
    let userId: String
    var lastText: String
    var lastTime: String
    var unreadCount: Int
    var messages: [PonllyMessageBubble]
}

enum PonllyRelationshipKind {
    case followers
    case following
}

struct PonllyUserReport {
    let targetUserId: String
    let reason: String
    let details: String
    let hasEvidence: Bool
    let submittedAt: Date
}

struct PonllyRoomTheme {
    let id: String
    let name: String
    let activeNow: Int
    let accent: UIColor
    let colors: [UIColor]
}

enum PonllyVoiceLobbyCategory: String, CaseIterable {
    case featured = "Featured"
    case following = "Following"
    case critique = "Critique"
    case lateWall = "Late Wall"
}

struct PonllyVoiceRoomSeat {
    let userId: String
    var isMuted: Bool
}

struct PonllyVoiceRoomMessage {
    let userId: String
    let time: String
    let text: String
}

struct PonllyVoiceRoom {
    let id: String
    var title: String
    var category: PonllyVoiceLobbyCategory
    var topic: String
    var hostId: String
    var speakerSeats: [PonllyVoiceRoomSeat]
    var listenerIds: [String]
    var backgroundImageName: String
    var accent: UIColor
    var messageLog: [PonllyVoiceRoomMessage]
}

enum PonllyDataCenter {
    static var artworkImages: [String: UIImage] = [:]
    static let currentUserId = "u01"
    private static let coinBalanceKey = "ponllyStreetCoinBalance"
    private static let profileNameKey = "ponllyCurrentProfileName"
    private static let profileBioKey = "ponllyCurrentProfileBio"
    private static let profileInterestKey = "ponllyCurrentProfileInterests"
    private static let profileAvatarPathKey = "ponllyCurrentProfileAvatarPath"
    private static let profileCoverPathKey = "ponllyCurrentProfileCoverPath"
    static var followedUserIds: Set<String> = ["u02", "u05", "u17", "u20"]
    static let followerUserIds: Set<String> = ["u02", "u05", "u09", "u17", "u20"]
    static var blockedUserIds: Set<String> = ["u16", "u18"]
    static var userReports: [PonllyUserReport] = []
    static var messageThreads: [PonllyMessageThread] = [
        .init(
            userId: "u20",
            lastText: "Can you send the wall reference?",
            lastTime: "2h",
            unreadCount: 1,
            messages: [
                .init(senderId: "u20", text: "That chrome edge breakdown helped. Can you send the wall reference?", time: "15:12", artwork: nil),
                .init(senderId: "u01", text: "Absolutely. I marked the outline pass and cap switch in the card.", time: "15:18", artwork: PonllyArtwork(id: "msg_a01", ownerId: "u01", title: "Underpass Chrome Edge", style: "Chrome", imageName: "graffiti_challenge_wall_01", colors: [.systemPink, .cyan, .darkGray]))
            ]
        ),
        .init(
            userId: "u17",
            lastText: "Respect the classics. Keep tagging.",
            lastTime: "1d",
            unreadCount: 0,
            messages: [
                .init(senderId: "u17", text: "Your shadow layer on the night wall is clean. What cap did you finish with?", time: "18:04", artwork: nil),
                .init(senderId: "u01", text: "Skinny cap for the edge, then a quick soft pass to keep the glow alive.", time: "18:16", artwork: nil)
            ]
        ),
        .init(
            userId: "u02",
            lastText: "That burner near the bridge is massive.",
            lastTime: "12m",
            unreadCount: 2,
            messages: [
                .init(senderId: "u02", text: "That burner near the bridge is massive. The cyan edge reads from half a block away.", time: "15:34", artwork: nil),
                .init(senderId: "u01", text: "I saved a color note from it. The wall texture makes the fade feel deeper.", time: "15:36", artwork: PonllyArtwork(id: "msg_a02", ownerId: "u02", title: "Bridge Cyan Burner", style: "Wildstyle", imageName: "graffiti_challenge_wall_03", colors: [.cyan, .systemPink, .black]))
            ]
        ),
        .init(
            userId: "u05",
            lastText: "Sent an artwork card",
            lastTime: "3d",
            unreadCount: 0,
            messages: [
                .init(senderId: "u05", text: "The stencil layer finally dried clean. Check the soft edge on the lower brick pass.", time: "09:42", artwork: PonllyArtwork(id: "msg_a05", ownerId: "u05", title: "Stencil Night Layer", style: "Stencil", imageName: "graffiti_challenge_wall_04", colors: [.orange, .white, .darkGray])),
                .init(senderId: "u01", text: "Clean separation. The shadow holds better than the first pass.", time: "10:03", artwork: nil)
            ]
        )
    ]

    static let users: [PonllyUser] = [
        .init(id: "u01", name: "Kai", gender: "male", level: "Lv. 42 Street King", city: "Brooklyn", crew: "X-Crew", bio: "Chrome letters, sharp outlines, late wall sessions.", avatarName: "ponlly_avatar_01", colors: [.systemPink, .cyan, .darkGray]),
        .init(id: "u02", name: "Nova", gender: "female", level: "Lv. 38 NYC Legend", city: "Queens", crew: "NYC-Toxic", bio: "Metallic reflections and misty alley pieces.", avatarName: "ponlly_avatar_02", colors: [.cyan, .gray, .black]),
        .init(id: "u03", name: "Zephyr", gender: "male", level: "Lv. 31 Wildstyle", city: "Berlin", crew: "Neon Fury", bio: "Fast arrows and dense letter mazes.", avatarName: "ponlly_avatar_03", colors: [.green, .magenta, .black]),
        .init(id: "u04", name: "Rize", gender: "female", level: "Lv. 29 Bubble Tech", city: "Tokyo", crew: "Paint Bloom", bio: "Soft forms, bright walls, clean rhythm.", avatarName: "ponlly_avatar_04", colors: [.cyan, .systemPink, .yellow]),
        .init(id: "u05", name: "Mika", gender: "female", level: "Lv. 36 Stencil Ace", city: "Seoul", crew: "Mask Layer", bio: "Stencil cuts and wheatpaste texture.", avatarName: "ponlly_avatar_05", colors: [.orange, .white, .darkGray]),
        .init(id: "u06", name: "Orion", gender: "male", level: "Lv. 34 Burner", city: "London", crew: "Rail Yard", bio: "Big panels and chrome shadecraft.", avatarName: "ponlly_avatar_06", colors: [.purple, .cyan, .gray]),
        .init(id: "u07", name: "Lyra", gender: "female", level: "Lv. 27 Marker Pro", city: "Paris", crew: "Ink Drift", bio: "Marker strokes and tiny alley glyphs.", avatarName: "ponlly_avatar_07", colors: [.systemPink, .purple, .white]),
        .init(id: "u08", name: "Atlas", gender: "male", level: "Lv. 45 Wall Sage", city: "Madrid", crew: "Concrete Pulse", bio: "Concrete patina and blocky contrast.", avatarName: "ponlly_avatar_08", colors: [.brown, .orange, .darkGray]),
        .init(id: "u09", name: "Sora", gender: "female", level: "Lv. 30 Cyan Edge", city: "Osaka", crew: "Cyan Halo", bio: "Clean cyan glows and soft cap fades.", avatarName: "ponlly_avatar_09", colors: [.cyan, .blue, .black]),
        .init(id: "u10", name: "Dante", gender: "male", level: "Lv. 33 Magenta Flow", city: "Rome", crew: "Drip Trail", bio: "Drips, bevels, and hard silhouettes.", avatarName: "ponlly_avatar_10", colors: [.systemPink, .red, .black]),
        .init(id: "u11", name: "Vega", gender: "female", level: "Lv. 28 Pasteup", city: "Lisbon", crew: "Paper Layer", bio: "Paste wrinkles and poster grain.", avatarName: "ponlly_avatar_11", colors: [.yellow, .orange, .white]),
        .init(id: "u12", name: "Nox", gender: "male", level: "Lv. 39 Night Wall", city: "Chicago", crew: "Shadow Line", bio: "Dark walls, chrome sparks, heavy outlines.", avatarName: "ponlly_avatar_12", colors: [.black, .gray, .cyan]),
        .init(id: "u13", name: "Iris", gender: "female", level: "Lv. 26 Lime Stroke", city: "Miami", crew: "Lime Stroke", bio: "Lime fills and bubble lettering.", avatarName: "ponlly_avatar_13", colors: [.green, .cyan, .systemPink]),
        .init(id: "u14", name: "Kade", gender: "male", level: "Lv. 41 Underpass", city: "Toronto", crew: "Underpass Beam", bio: "Long walls and freight texture.", avatarName: "ponlly_avatar_14", colors: [.gray, .blue, .black]),
        .init(id: "u15", name: "Mina", gender: "female", level: "Lv. 32 Neon Dust", city: "LA", crew: "Neon Dust", bio: "Spray halos and polished fades.", avatarName: "ponlly_avatar_15", colors: [.systemPink, .cyan, .purple]),
        .init(id: "u16", name: "RiotPainter", gender: "male", level: "Lv. 25 Commentator", city: "Detroit", crew: "Grit Noise", bio: "Studies letter balance and grit surfaces.", avatarName: "ponlly_avatar_16", colors: [.red, .cyan, .black]),
        .init(id: "u17", name: "Toxik_NYC", gender: "female", level: "Lv. 24 Critic", city: "NYC", crew: "Toxic Chrome", bio: "Chrome highlights and wildstyle debates.", avatarName: "ponlly_avatar_17", colors: [.cyan, .green, .purple]),
        .init(id: "u18", name: "Echo", gender: "male", level: "Lv. 35 Fade Tech", city: "Melbourne", crew: "Fade Cloud", bio: "Fade control and wall mapping.", avatarName: "ponlly_avatar_18", colors: [.blue, .cyan, .white]),
        .init(id: "u19", name: "Vale", gender: "female", level: "Lv. 37 Alley Muse", city: "Portland", crew: "Alley Canvas", bio: "Small walls and strong color contrast.", avatarName: "ponlly_avatar_19", colors: [.orange, .systemPink, .black]),
        .init(id: "u20", name: "ChromeKid", gender: "male", level: "Lv. 38 NYC Legend", city: "Brooklyn", crew: "NYC-Toxic", bio: "Metallic chrome letters with cyan drips.", avatarName: "ponlly_avatar_20", colors: [.cyan, .gray, .orange])
    ]

    static let roomThemes: [PonllyRoomTheme] = [
        .init(id: "rt01", name: "Chrome Letters", activeNow: 12, accent: PonllyPalette.cyan, colors: [.darkGray, .cyan, .systemPink]),
        .init(id: "rt02", name: "Wildstyle Wall", activeNow: 9, accent: PonllyPalette.pink, colors: [.systemPink, .green, .black]),
        .init(id: "rt03", name: "Neon Alley", activeNow: 7, accent: PonllyPalette.green, colors: [.green, .cyan, .purple]),
        .init(id: "rt04", name: "Stencil Night", activeNow: 5, accent: .orange, colors: [.orange, .black, .white]),
        .init(id: "rt05", name: "Brick Texture", activeNow: 4, accent: .brown, colors: [.brown, .orange, .gray]),
        .init(id: "rt06", name: "Cyan Drips", activeNow: 8, accent: PonllyPalette.cyan, colors: [.cyan, .blue, .black]),
        .init(id: "rt07", name: "Pasteup Grain", activeNow: 3, accent: .yellow, colors: [.yellow, .orange, .white]),
        .init(id: "rt08", name: "Rail Yard", activeNow: 6, accent: .purple, colors: [.purple, .gray, .cyan])
    ]

    static var voiceRooms: [PonllyVoiceRoom] = [
        .init(
            id: "vr01",
            title: "Chrome Edge Table",
            category: .featured,
            topic: "Chrome outlines, cyan edge control, and wet-wall reflections",
            hostId: "u20",
            speakerSeats: [.init(userId: "u20", isMuted: false), .init(userId: "u02", isMuted: true), .init(userId: "u17", isMuted: false)],
            listenerIds: ["u01", "u05", "u09", "u12", "u18", "u19"],
            backgroundImageName: "voice_room_bg_01",
            accent: PonllyPalette.cyan,
            messageLog: [
                .init(userId: "u20", time: "20:11", text: "Tonight we are comparing chrome edge passes on rough brick."),
                .init(userId: "u02", time: "20:13", text: "The trick is leaving enough dark wall around the highlight."),
                .init(userId: "u17", time: "20:16", text: "I want to hear how everyone handles the final white pop.")
            ]
        ),
        .init(
            id: "vr02",
            title: "Stencil Night Critique",
            category: .critique,
            topic: "Soft overspray, cutout timing, and late wall composition",
            hostId: "u05",
            speakerSeats: [.init(userId: "u05", isMuted: false), .init(userId: "u11", isMuted: true)],
            listenerIds: ["u01", "u07", "u15", "u16"],
            backgroundImageName: "voice_room_bg_02",
            accent: PonllyPalette.pink,
            messageLog: [
                .init(userId: "u05", time: "19:42", text: "Drop your cleanest stencil notes. I am listening for edge control."),
                .init(userId: "u11", time: "19:44", text: "Paper grain changes everything when the wall has old paint peel."),
                .init(userId: "u16", time: "19:48", text: "That second layer needs less pressure near the torn edge.")
            ]
        ),
        .init(
            id: "vr03",
            title: "Wildstyle Letter Lab",
            category: .featured,
            topic: "Letter motion, arrow balance, and readable maze structure",
            hostId: "u03",
            speakerSeats: [.init(userId: "u03", isMuted: false), .init(userId: "u04", isMuted: false), .init(userId: "u10", isMuted: true)],
            listenerIds: ["u06", "u08", "u13", "u14", "u18"],
            backgroundImageName: "voice_room_bg_03",
            accent: PonllyPalette.green,
            messageLog: [
                .init(userId: "u03", time: "21:05", text: "Keep the arrows loud, but do not bury the letter spine."),
                .init(userId: "u04", time: "21:07", text: "Readable from distance first. Detail pass after."),
                .init(userId: "u10", time: "21:10", text: "I am mapping the shadow before the fill so it does not fight the curves.")
            ]
        ),
        .init(
            id: "vr04",
            title: "Bridge Pillar Hang",
            category: .lateWall,
            topic: "Concrete texture, quiet critique, and low-light wall stories",
            hostId: "u14",
            speakerSeats: [.init(userId: "u14", isMuted: false), .init(userId: "u18", isMuted: true)],
            listenerIds: ["u01", "u02", "u06", "u12"],
            backgroundImageName: "voice_room_bg_04",
            accent: .white,
            messageLog: [
                .init(userId: "u14", time: "23:18", text: "Bridge pillars force you to simplify the whole letter rhythm."),
                .init(userId: "u18", time: "23:21", text: "Fade maps help when the concrete is eating the first coat."),
                .init(userId: "u12", time: "23:24", text: "Dark walls need bigger highlights than sketches suggest.")
            ]
        ),
        .init(
            id: "vr05",
            title: "Neon Alley Warmup",
            category: .following,
            topic: "Fast wall warmups from artists you follow",
            hostId: "u15",
            speakerSeats: [.init(userId: "u15", isMuted: false), .init(userId: "u09", isMuted: true)],
            listenerIds: ["u01", "u04", "u13", "u19"],
            backgroundImageName: "voice_room_bg_05",
            accent: PonllyPalette.pink,
            messageLog: [
                .init(userId: "u15", time: "18:30", text: "I am warming up with neon dust and two quick outline passes."),
                .init(userId: "u09", time: "18:34", text: "Cyan glow works better when the base wall stays darker."),
                .init(userId: "u01", time: "18:36", text: "That makes the fill feel sharper without extra noise.")
            ]
        ),
        .init(
            id: "vr06",
            title: "Marker Flow Bench",
            category: .critique,
            topic: "Marker nib pressure, compact letters, and sketch rhythm",
            hostId: "u07",
            speakerSeats: [.init(userId: "u07", isMuted: false), .init(userId: "u19", isMuted: false)],
            listenerIds: ["u01", "u03", "u10", "u11"],
            backgroundImageName: "voice_room_bg_06",
            accent: PonllyPalette.cyan,
            messageLog: [
                .init(userId: "u07", time: "17:02", text: "Wide nib first, fine line after. It keeps the rhythm alive."),
                .init(userId: "u19", time: "17:06", text: "Small walls need stronger negative space."),
                .init(userId: "u03", time: "17:09", text: "The curve kick is clean when the baseline stays calm.")
            ]
        ),
        .init(
            id: "vr07",
            title: "Rail Yard Color Check",
            category: .following,
            topic: "Panel-scale color spacing and chrome balance",
            hostId: "u06",
            speakerSeats: [.init(userId: "u06", isMuted: true), .init(userId: "u20", isMuted: false)],
            listenerIds: ["u01", "u02", "u08", "u14"],
            backgroundImageName: "voice_room_bg_07",
            accent: PonllyPalette.green,
            messageLog: [
                .init(userId: "u06", time: "16:18", text: "Rail panel pieces need a wider color plan before the first fill."),
                .init(userId: "u20", time: "16:21", text: "Chrome reads best when the cyan drip stays controlled."),
                .init(userId: "u08", time: "16:27", text: "Concrete tone behind it changes the whole balance.")
            ]
        ),
        .init(
            id: "vr08",
            title: "Brick Texture Afterhours",
            category: .lateWall,
            topic: "Rough fills, chipped paint, and night-wall pacing",
            hostId: "u12",
            speakerSeats: [.init(userId: "u12", isMuted: false), .init(userId: "u08", isMuted: true)],
            listenerIds: ["u01", "u05", "u16", "u17"],
            backgroundImageName: "voice_room_bg_08",
            accent: PonllyPalette.pink,
            messageLog: [
                .init(userId: "u12", time: "00:14", text: "Chipped paint can make a rough fill feel intentional."),
                .init(userId: "u08", time: "00:18", text: "Leave the cracks visible if they help the letter depth."),
                .init(userId: "u17", time: "00:22", text: "Heavy outline, quiet color. That is the move here.")
            ]
        )
    ]

    static var videos: [PonllyVideo] = [
        .init(id: "v08", authorId: "u01", title: "Underpass chrome recap", details: "Breaking down the chrome edge vote piece with a close look at outline weight, cyan glow, and brick texture.", fileName: "ponlly_process_chrome_edge", reactionCount: 14, commentCount: 6, reportCount: 0, isLiked: false, isFollowingAuthor: false, comments: Array(videoComments.prefix(4)), colors: [.systemPink, .cyan, .darkGray]),
        .init(id: "v01", authorId: "u20", title: "Chrome outline pressure study", details: "Making of a chrome letter piece with toxic green highlights. Clean cap control and tight edge passes.", fileName: "ponlly_process_chrome_edge", reactionCount: 12, commentCount: 8, reportCount: 1, isLiked: true, isFollowingAuthor: false, comments: videoComments, colors: [.cyan, .gray, .orange]),
        .init(id: "v02", authorId: "u15", title: "Neon dust wall pass", details: "Layering magenta haze over a wet alley wall, then tightening the cyan outline before the final coat.", fileName: "ponlly_process_neon_wall", reactionCount: 7, commentCount: 5, reportCount: 0, isLiked: false, isFollowingAuthor: false, comments: Array(videoComments.prefix(4)), colors: [.systemPink, .cyan, .purple]),
        .init(id: "v03", authorId: "u07", title: "Marker flow warmup", details: "A fast marker rhythm drill focused on thin-to-wide line control and compact letter balance.", fileName: "ponlly_process_marker_flow", reactionCount: 15, commentCount: 6, reportCount: 0, isLiked: false, isFollowingAuthor: false, comments: Array(videoComments.suffix(4)), colors: [.systemPink, .purple, .white]),
        .init(id: "v04", authorId: "u05", title: "Stencil night layer", details: "Cutout placement, soft overspray, and a short wall texture pass for a late-night stencil piece.", fileName: "ponlly_process_stencil_night", reactionCount: 9, commentCount: 4, reportCount: 0, isLiked: false, isFollowingAuthor: false, comments: videoComments, colors: [.orange, .white, .darkGray]),
        .init(id: "v05", authorId: "u13", title: "Lime fill cleanup", details: "Bubble lettering cleanup with lime fill, white edge marks, and a final shadow layer.", fileName: "ponlly_process_paint_bloom", reactionCount: 18, commentCount: 7, reportCount: 1, isLiked: false, isFollowingAuthor: false, comments: Array(videoComments.prefix(3)), colors: [.green, .cyan, .systemPink]),
        .init(id: "v06", authorId: "u12", title: "Brick texture hold", details: "Dark wall pass with rough brick texture, chrome sparks, and heavier outline weight.", fileName: "ponlly_process_wall_texture", reactionCount: 6, commentCount: 3, reportCount: 0, isLiked: false, isFollowingAuthor: false, comments: Array(videoComments.suffix(3)), colors: [.black, .gray, .cyan]),
        .init(id: "v07", authorId: "u18", title: "Color fade map", details: "From sketch path to wall map: slow fade pressure, balanced color spacing, and final highlight strokes.", fileName: "ponlly_process_color_fade", reactionCount: 11, commentCount: 5, reportCount: 0, isLiked: false, isFollowingAuthor: false, comments: videoComments, colors: [.blue, .cyan, .white])
    ]

    static let videoComments: [PonllyVideoComment] = [
        .init(userId: "u16", handle: "@spray_king", time: "2h ago", text: "That chrome technique is sharp. The way the light catches the letters feels next level.", likeCount: 2400, isLiked: true),
        .init(userId: "u17", handle: "@ink_flow", time: "5h ago", text: "Been trying to get my cap control this smooth for years. The outline is razor clean.", likeCount: 842, isLiked: false),
        .init(userId: "u11", handle: "@wall_writer", time: "1d ago", text: "This spot has strong wall character. Love seeing the brick texture stay visible.", likeCount: 521, isLiked: false),
        .init(userId: "u10", handle: "@color_bandit", time: "2d ago", text: "The color transition from green to blue is clean. The process breakdown helps a lot.", likeCount: 312, isLiked: false),
        .init(userId: "u14", handle: "@tag_master", time: "3d ago", text: "This has early subway energy with a modern polish. Strong respect for the layout.", likeCount: 187, isLiked: false)
    ]

    static var battles: [PonllyBattle] = {
        let artworks = [
            PonllyArtwork(id: "a01", ownerId: "u01", title: "Underpass Chrome Edge", style: "Chrome", imageName: "graffiti_challenge_wall_01", colors: [.systemPink, .cyan, .darkGray]),
            PonllyArtwork(id: "a02", ownerId: "u02", title: "Pastel Block Flow", style: "Chrome", imageName: "graffiti_challenge_wall_02", colors: [.cyan, .gray, .black]),
            PonllyArtwork(id: "a03", ownerId: "u03", title: "Brick Layer Wildstyle", style: "Wildstyle", imageName: "graffiti_challenge_wall_03", colors: [.green, .systemPink, .black]),
            PonllyArtwork(id: "a04", ownerId: "u04", title: "Laneway Color Wall", style: "Character", imageName: "graffiti_challenge_wall_04", colors: [.cyan, .systemPink, .yellow]),
            PonllyArtwork(id: "a05", ownerId: "u08", title: "Cyan Letter Run", style: "Black And White", imageName: "graffiti_challenge_wall_05", colors: [.brown, .orange, .darkGray]),
            PonllyArtwork(id: "a06", ownerId: "u01", title: "Rough Wall Throw-Up", style: "Wildstyle", imageName: "graffiti_challenge_wall_06", colors: [.systemPink, .cyan, .darkGray]),
            PonllyArtwork(id: "a07", ownerId: "u01", title: "Midnight Brick Draft", style: "Free Style", imageName: "graffiti_challenge_wall_01", colors: [.systemPink, .cyan, .darkGray]),
            PonllyArtwork(id: "a08", ownerId: "u15", title: "Neon Alley Starter", style: "Free Style", imageName: "graffiti_challenge_wall_04", colors: [.systemPink, .cyan, .purple]),
            PonllyArtwork(id: "a09", ownerId: "u06", title: "Rail Panel Sketch", style: "Chrome", imageName: "graffiti_challenge_wall_05", colors: [.purple, .cyan, .gray]),
            PonllyArtwork(id: "a10", ownerId: "u09", title: "Cyan Wall Bloom", style: "Character", imageName: "graffiti_challenge_wall_02", colors: [.cyan, .blue, .black])
        ]
        return [
            .init(id: "b01", title: "Chrome Edge Vote", theme: "Chrome Letters", description: "Two artists interpret chrome edge control on rough walls. Vote for the piece with cleaner contrast and stronger wall presence.", duration: "24 Hours", status: .hot, creatorAId: "u01", creatorBId: "u02", artworkA: artworks[0], artworkB: artworks[1], votesA: 47, votesB: 39, comments: chromeComments, deadlineText: "18h left", arenaId: "CLSH-409"),
            .init(id: "b02", title: "Wildstyle Wall Duel", theme: "Wildstyle", description: "A wildstyle theme focused on letter motion, wall texture, and readable flow from a distance.", duration: "24 Hours", status: .hot, creatorAId: "u03", creatorBId: "u04", artworkA: artworks[2], artworkB: artworks[3], votesA: 32, votesB: 28, comments: wildstyleComments, deadlineText: "22h left", arenaId: "CLSH-512"),
            .init(id: "b03", title: "Throw-Up Texture Clash", theme: "Throw-Up Texture", description: "A quick wall-texture challenge: bold fills, rough edges, and color that still reads on mobile.", duration: "6 Hours", status: .hot, creatorAId: "u08", creatorBId: "u01", artworkA: artworks[4], artworkB: artworks[5], votesA: 18, votesB: 21, comments: brickComments, deadlineText: "4h left", arenaId: "CLSH-633"),
            .init(id: "b04", title: "Midnight Brick Callout", theme: "Night Wall Flow", description: "Open call for a challenger who can bring glow, depth, and pressure control to a dark brick wall.", duration: "48 Hours", status: .waiting, creatorAId: "u01", creatorBId: nil, artworkA: artworks[6], artworkB: nil, votesA: 0, votesB: 0, comments: waitingComments, deadlineText: "11h left", arenaId: "CLSH-740"),
            .init(id: "b05", title: "Laneway Color Callout", theme: "Neon Alley", description: "A one-wall challenge built around bright alley color, clean outlines, and fast visual rhythm.", duration: "24 Hours", status: .waiting, creatorAId: "u15", creatorBId: nil, artworkA: artworks[7], artworkB: nil, votesA: 0, votesB: 0, comments: [], deadlineText: "9h left", arenaId: "CLSH-811"),
            .init(id: "b06", title: "Panel Burner Callout", theme: "Rail Panel Energy", description: "Looking for a challenger with strong panel-scale letter balance and bold street texture.", duration: "24 Hours", status: .waiting, creatorAId: "u06", creatorBId: nil, artworkA: artworks[8], artworkB: nil, votesA: 0, votesB: 0, comments: [], deadlineText: "13h left", arenaId: "CLSH-906")
        ]
    }()

    static let chromeComments: [PonllyBattleComment] = [
        .init(userId: "u16", time: "6m ago", text: "A has the cleaner edge work, but B feels calmer and easier to read.", reactionCount: 4),
        .init(userId: "u17", time: "18m ago", text: "The brick texture behind A gives it more street weight.", reactionCount: 3),
        .init(userId: "u20", time: "41m ago", text: "B's pastel fill is simple, but the spacing is solid.", reactionCount: 2),
        .init(userId: "u11", time: "1h ago", text: "Both fit the theme. I voted for the one that holds up at thumbnail size.", reactionCount: 1),
        .init(userId: "u18", time: "2h ago", text: "Good contrast from both creators without overloading the wall.", reactionCount: 2)
    ]

    static let wildstyleComments: [PonllyBattleComment] = [
        .init(userId: "u07", time: "11m ago", text: "A has more raw wall energy, B has stronger lane color.", reactionCount: 3),
        .init(userId: "u10", time: "34m ago", text: "The laneway piece wins on atmosphere for me.", reactionCount: 2),
        .init(userId: "u19", time: "1h ago", text: "This one feels evenly matched. The theme is carrying both sides.", reactionCount: 1),
        .init(userId: "u05", time: "2h ago", text: "Good balance between texture and readable motion.", reactionCount: 1)
    ]

    static let brickComments: [PonllyBattleComment] = [
        .init(userId: "u09", time: "9m ago", text: "A is louder, B is rougher. That makes the vote interesting.", reactionCount: 2),
        .init(userId: "u03", time: "27m ago", text: "B pops more on mobile. Strong wall texture.", reactionCount: 3),
        .init(userId: "u12", time: "58m ago", text: "Hard choice. The theme really depends on edge confidence.", reactionCount: 1)
    ]

    static let waitingComments: [PonllyBattleComment] = [
        .init(userId: "u15", time: "23m ago", text: "This callout needs someone with strong night-wall contrast.", reactionCount: 1)
    ]

    static func user(_ id: String?) -> PonllyUser {
        users.first { $0.id == id } ?? users[0]
    }

    static func isFollowing(_ id: String) -> Bool {
        followedUserIds.contains(id)
    }

    static func isMutual(_ id: String) -> Bool {
        followedUserIds.contains(id) && followerUserIds.contains(id) && !blockedUserIds.contains(id)
    }

    @discardableResult
    static func toggleFollow(_ id: String) -> Bool {
        guard !blockedUserIds.contains(id) else { return false }
        if followedUserIds.contains(id) {
            followedUserIds.remove(id)
            return false
        }
        followedUserIds.insert(id)
        return true
    }

    static func isBlocked(_ id: String) -> Bool {
        blockedUserIds.contains(id)
    }

    static func blockUser(_ id: String) {
        blockedUserIds.insert(id)
        followedUserIds.remove(id)
        NotificationCenter.default.post(name: .ponllyBlockListDidChange, object: id)
    }

    static func submitUserReport(targetUserId: String, reason: String, details: String, hasEvidence: Bool) {
        userReports.append(
            PonllyUserReport(
                targetUserId: targetUserId,
                reason: reason,
                details: details,
                hasEvidence: hasEvidence,
                submittedAt: Date()
            )
        )
    }

    static func profileStats(for id: String) -> PonllyProfileStats {
        let artworkCount = battleRecords(for: id).count
        let followerBase = followers(for: id).count
        let followingBase = following(for: id).count
        return PonllyProfileStats(
            artworkCount: artworkCount,
            followerCount: followerBase,
            followingCount: followingBase
        )
    }

    static var currentProfileInterests: [String] {
        get {
            UserDefaults.standard.stringArray(forKey: profileInterestKey) ?? ["Wildstyle", "Chrome Letters", "Street Art"]
        }
        set {
            UserDefaults.standard.set(Array(newValue.prefix(5)), forKey: profileInterestKey)
            NotificationCenter.default.post(name: .ponllyCurrentProfileDidChange, object: nil)
        }
    }

    static func currentUser() -> PonllyUser {
        let base = user(currentUserId)
        return PonllyUser(
            id: base.id,
            name: UserDefaults.standard.string(forKey: profileNameKey) ?? "kryptic_tag",
            gender: base.gender,
            level: base.level,
            city: base.city,
            crew: base.crew,
            bio: UserDefaults.standard.string(forKey: profileBioKey) ?? "SF street architect. Aerosol is my blood. Always scouting new raw concrete. Respect the tags.",
            avatarName: base.avatarName,
            colors: base.colors
        )
    }

    static func updateCurrentProfile(name: String, bio: String, interests: [String]) {
        let trimmedName = name.trimmingCharacters(in: .whitespacesAndNewlines)
        let cleanedName = trimmedName.isEmpty ? "kryptic_tag" : trimmedName
        UserDefaults.standard.set(cleanedName, forKey: profileNameKey)
        UserDefaults.standard.set(bio.trimmingCharacters(in: .whitespacesAndNewlines), forKey: profileBioKey)
        UserDefaults.standard.set(Array(interests.prefix(5)), forKey: profileInterestKey)
        NotificationCenter.default.post(name: .ponllyCurrentProfileDidChange, object: nil)
    }

    static func avatarImage(for user: PonllyUser) -> UIImage? {
        if user.id == currentUserId, let image = storedImage(forKey: profileAvatarPathKey) {
            return image
        }
        return user.avatarName.flatMap(UIImage.init(named:))
    }

    static func currentCoverImage() -> UIImage? {
        storedImage(forKey: profileCoverPathKey) ?? UIImage(named: "voice_room_bg_08")
    }

    static func saveCurrentProfileImages(avatar: UIImage?, cover: UIImage?) {
        if let avatar {
            saveImage(avatar, fileName: "ponlly_current_avatar.jpg", key: profileAvatarPathKey)
        }
        if let cover {
            saveImage(cover, fileName: "ponlly_current_cover.jpg", key: profileCoverPathKey)
        }
        NotificationCenter.default.post(name: .ponllyCurrentProfileDidChange, object: nil)
    }

    private static func storedImage(forKey key: String) -> UIImage? {
        guard let path = UserDefaults.standard.string(forKey: key) else { return nil }
        return UIImage(contentsOfFile: path)
    }

    private static func saveImage(_ image: UIImage, fileName: String, key: String) {
        guard let data = image.jpegData(compressionQuality: 0.86),
              let directory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return }
        let url = directory.appendingPathComponent(fileName)
        do {
            try data.write(to: url, options: .atomic)
            UserDefaults.standard.set(url.path, forKey: key)
        } catch {
            assertionFailure("Unable to save profile image: \(error.localizedDescription)")
        }
    }

    static func profileArtworks(for id: String) -> [PonllyArtwork] {
        if id != currentUserId, isBlocked(id) {
            return []
        }
        let battleArtworks = battleRecords(for: id).compactMap { battle -> PonllyArtwork? in
            if battle.creatorAId == id { return battle.artworkA }
            if battle.creatorBId == id { return battle.artworkB }
            return nil
        }
        let imageNames = [
            "graffiti_challenge_wall_01",
            "graffiti_challenge_wall_02",
            "graffiti_challenge_wall_03",
            "graffiti_challenge_wall_04",
            "graffiti_challenge_wall_05",
            "graffiti_challenge_wall_06"
        ]
        let styles = ["Wildstyle", "Chrome", "Stencil", "Throw-Up", "Neon", "Brick"]
        let profileSet = imageNames.enumerated().map { index, imageName in
            PonllyArtwork(
                id: "\(id)_profile_art_\(index)",
                ownerId: id,
                title: "\(styles[index]) Wall Study",
                style: styles[index],
                imageName: imageName,
                colors: users.first(where: { $0.id == id })?.colors ?? [.systemPink, .cyan, .darkGray]
            )
        }
        return Array((battleArtworks + profileSet).prefix(6))
    }

    static func relatedUsers(kind: PonllyRelationshipKind) -> [PonllyUser] {
        switch kind {
        case .followers:
            return followers(for: currentUserId)
        case .following:
            return following(for: currentUserId)
        }
    }

    static func followers(for id: String) -> [PonllyUser] {
        let ids: [String]
        if id == currentUserId {
            ids = Array(followerUserIds)
        } else {
            let index = users.firstIndex { $0.id == id } ?? 0
            ids = users
                .filter { $0.id != id && !blockedUserIds.contains($0.id) }
                .enumerated()
                .filter { ($0.offset + index) % 4 == 0 }
                .map { $0.element.id }
        }
        return ids.map { user($0) }.sorted { $0.name < $1.name }
    }

    static func following(for id: String) -> [PonllyUser] {
        let ids: [String]
        if id == currentUserId {
            ids = Array(followedUserIds)
        } else {
            let index = users.firstIndex { $0.id == id } ?? 0
            ids = users
                .filter { $0.id != id && !blockedUserIds.contains($0.id) }
                .enumerated()
                .filter { ($0.offset + index) % 5 == 0 }
                .map { $0.element.id }
        }
        return ids.map { user($0) }.sorted { $0.name < $1.name }
    }

    static func blockedUsers() -> [PonllyUser] {
        blockedUserIds.map { user($0) }.sorted { $0.name < $1.name }
    }

    static func battleRecords(for id: String) -> [PonllyBattle] {
        if id != currentUserId, isBlocked(id) {
            return []
        }
        return visibleBattles().filter { $0.creatorAId == id || $0.creatorBId == id }
    }

    static func profileVideos(for id: String) -> [PonllyVideo] {
        if id != currentUserId, isBlocked(id) {
            return []
        }
        return visibleVideos().filter { $0.authorId == id }
    }

    static func battle(containing artwork: PonllyArtwork) -> PonllyBattle? {
        visibleBattles().first { battle in
            battle.artworkA.id == artwork.id || battle.artworkB?.id == artwork.id
        }
    }

    static func noteCount(for artwork: PonllyArtwork) -> Int {
        if let battle = battle(containing: artwork) {
            let sideVotes = battle.artworkA.id == artwork.id ? battle.votesA : battle.votesB
            return min(19, max(1, sideVotes / 5 + battle.comments.count))
        }
        let seed = artwork.id.unicodeScalars.reduce(0) { $0 + Int($1.value) }
        return 6 + seed % 12
    }

    static func isBattleVisible(_ battle: PonllyBattle) -> Bool {
        !isBlocked(battle.creatorAId) && battle.creatorBId.map { !isBlocked($0) } ?? true
    }

    static func visibleBattles(status: PonllyBattleStatus? = nil) -> [PonllyBattle] {
        battles.filter { battle in
            isBattleVisible(battle) && (status == nil || battle.status == status)
        }
    }

    static func visibleVideos() -> [PonllyVideo] {
        videos.filter { !isBlocked($0.authorId) }
    }

    static func visibleMessageThreads() -> [PonllyMessageThread] {
        messageThreads.filter { isMutual($0.userId) && !isBlocked($0.userId) }
    }

    static func thread(for id: String) -> PonllyMessageThread {
        if let thread = messageThreads.first(where: { $0.userId == id }) {
            return thread
        }
        return PonllyMessageThread(userId: id, lastText: "Start a wall critique.", lastTime: "now", unreadCount: 0, messages: [])
    }

    static func voiceRooms(for category: PonllyVoiceLobbyCategory) -> [PonllyVoiceRoom] {
        let visibleRooms = voiceRooms.filter { !isBlocked($0.hostId) }
        switch category {
        case .featured:
            let featuredRooms = visibleRooms.filter { $0.category == .featured || $0.listenerIds.count >= 5 }
            guard featuredRooms.count < 3 else { return featuredRooms }
            let featuredIds = Set(featuredRooms.map(\.id))
            let extras = visibleRooms.filter { !featuredIds.contains($0.id) }.prefix(3 - featuredRooms.count)
            return featuredRooms + extras
        case .following:
            return visibleRooms.filter { followedUserIds.contains($0.hostId) }
        case .critique:
            return visibleRooms.filter { $0.category == .critique }
        case .lateWall:
            return visibleRooms.filter { $0.category == .lateWall }
        }
    }

    static func updateVoiceRoom(_ room: PonllyVoiceRoom) {
        if let index = voiceRooms.firstIndex(where: { $0.id == room.id }) {
            voiceRooms[index] = room
        } else {
            voiceRooms.insert(room, at: 0)
        }
    }

    static var coinBalance: Int {
        get {
            let stored = UserDefaults.standard.object(forKey: coinBalanceKey) as? Int
            return stored ?? 0
        }
        set {
            UserDefaults.standard.set(max(newValue, 0), forKey: coinBalanceKey)
            NotificationCenter.default.post(name: .ponllyCoinBalanceDidChange, object: nil)
        }
    }

    @discardableResult
    static func spendCoins(_ amount: Int) -> Bool {
        guard amount > 0, coinBalance >= amount else { return false }
        coinBalance -= amount
        return true
    }

    static func addCoins(_ amount: Int) {
        guard amount > 0 else { return }
        coinBalance += amount
    }

    static func image(for key: String?) -> UIImage? {
        guard let key else { return nil }
        return artworkImages[key] ?? UIImage(named: key)
    }

    @discardableResult
    static func acceptBattle(_ battle: PonllyBattle, selectedImage: UIImage) -> PonllyBattle {
        let imageKey = "accepted_\(battle.id)_artwork"
        artworkImages[imageKey] = selectedImage

        var updatedBattle = battle
        updatedBattle.status = .hot
        updatedBattle.creatorBId = "u01"
        updatedBattle.artworkB = PonllyArtwork(
            id: "\(battle.id)_accepted_artwork",
            ownerId: "u01",
            title: "Fresh Wall Reply",
            style: battle.theme,
            imageName: imageKey,
            colors: [.systemPink, .cyan, .darkGray]
        )
        updatedBattle.votesA = max(updatedBattle.votesA, 1)
        updatedBattle.votesB = max(updatedBattle.votesB, 1)
        updatedBattle.deadlineText = "23h left"

        if let index = battles.firstIndex(where: { $0.id == battle.id }) {
            battles[index] = updatedBattle
        } else {
            battles.insert(updatedBattle, at: 0)
        }
        NotificationCenter.default.post(name: .ponllyBattlesDidChange, object: updatedBattle.id)
        return updatedBattle
    }
}
