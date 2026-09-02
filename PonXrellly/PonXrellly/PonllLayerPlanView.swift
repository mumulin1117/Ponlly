import UIKit

final class PonllLayerPlanView: UIView {
    let ponllCanvasWall = UIScrollView()
    let bruCiuLayerPlan = UIStackView()
    let flckinkPaintSignal = UIRefreshControl()

    init(
        aerErstSidewalkEdge: CGFloat,
        ponllRoofLine: CGFloat,
        bruCiuWallMark: CGFloat,
        flckinkLayerBlend: CGFloat
    ) {
        super.init(frame: .zero)

        ponllCanvasWall.alwaysBounceVertical = true
        ponllCanvasWall.isDirectionalLockEnabled = true
        ponllCanvasWall.delaysContentTouches = false
        ponllCanvasWall.canCancelContentTouches = true
        ponllCanvasWall.showsVerticalScrollIndicator = false
        ponllCanvasWall.refreshControl = flckinkPaintSignal
        ponllCanvasWall.translatesAutoresizingMaskIntoConstraints = false
        addSubview(ponllCanvasWall)

        bruCiuLayerPlan.axis = .vertical
        bruCiuLayerPlan.spacing = flckinkLayerBlend
        bruCiuLayerPlan.translatesAutoresizingMaskIntoConstraints = false
        ponllCanvasWall.addSubview(bruCiuLayerPlan)

        NSLayoutConstraint.activate([
            ponllCanvasWall.leadingAnchor.constraint(equalTo: leadingAnchor),
            ponllCanvasWall.trailingAnchor.constraint(equalTo: trailingAnchor),
            ponllCanvasWall.topAnchor.constraint(equalTo: topAnchor),
            ponllCanvasWall.bottomAnchor.constraint(equalTo: bottomAnchor),
            bruCiuLayerPlan.leadingAnchor.constraint(equalTo: ponllCanvasWall.frameLayoutGuide.leadingAnchor, constant: aerErstSidewalkEdge),
            bruCiuLayerPlan.trailingAnchor.constraint(equalTo: ponllCanvasWall.frameLayoutGuide.trailingAnchor, constant: -aerErstSidewalkEdge),
            bruCiuLayerPlan.topAnchor.constraint(equalTo: ponllCanvasWall.contentLayoutGuide.topAnchor, constant: bruCiuWallMark),
            bruCiuLayerPlan.bottomAnchor.constraint(equalTo: ponllCanvasWall.contentLayoutGuide.bottomAnchor, constant: -ponllRoofLine)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
