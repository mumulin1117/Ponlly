import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class VuonllMetallicSprayontroller: UIViewController {
    private let kind: PonllyRelationshipKind
    private let scrollView = UIScrollView()
    private let stack = UIStackView()

    init(kind: PonllyRelationshipKind) {
        self.kind = kind
        super.init(nibName: nil, bundle: nil)
        title = kind == .followers ? "Crew Connections" : "Following"
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = PonllyPalette.background
        setup()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func setup() {
        scrollView.alwaysBounceVertical = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        stack.axis = .vertical
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stack)
        let users = PonllyDataCenter.relatedUsers(kind: kind)
        let count = UILabel()
        count.text = "\(users.count) \(kind == .followers ? "Followers" : "Following")"
        count.textColor = PonllyPalette.muted
        count.font = PonllyFonts.display(size: 14)
        stack.addArrangedSubview(count)
        users.forEach { stack.addArrangedSubview(row(for: $0)) }
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor, constant: 16),
            stack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor, constant: -16),
            stack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 26),
            stack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -34)
        ])
    }

    private func row(for user: PonllyUser) -> UIControl {
        let control = UIControl()
        control.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.88)
        control.layer.cornerRadius = 18
        control.layer.borderWidth = 1
        control.layer.borderColor = PonllyPalette.line.cgColor
        control.addAction(UIAction { [weak self] _ in
            let profile = FlckinkPrimerCoatController(user: user)
            profile.hidesBottomBarWhenPushed = true
            self?.navigationController?.pushViewController(profile, animated: true)
        }, for: .touchUpInside)
        let row = UIStackView()
        row.axis = .horizontal
        row.alignment = .center
        row.spacing = 14
        row.translatesAutoresizingMaskIntoConstraints = false
        control.addSubview(row)
        row.addArrangedSubview(ErErstPaintLabView(user: user, size: 54))
        let text = UIStackView()
        text.axis = .vertical
        text.spacing = 4
        let name = UILabel()
        name.text = user.name.lowercased()
        name.textColor = .white
        name.font = PonllyFonts.display(size: 16)
        let crew = UILabel()
        crew.text = user.crew
        crew.textColor = PonllyPalette.muted
        crew.font = PonllyFonts.mono(size: 12)
        text.addArrangedSubview(name)
        text.addArrangedSubview(crew)
        row.addArrangedSubview(text)
        let badge = UILabel()
        badge.text = PonllyDataCenter.isMutual(user.id) ? "Mutual" : (PonllyDataCenter.isFollowing(user.id) ? "Following" : "Follow")
        badge.textColor = PonllyDataCenter.isMutual(user.id) ? PonllyPalette.green : .white
        badge.font = PonllyFonts.display(size: 11)
        badge.textAlignment = .center
        badge.layer.cornerRadius = 12
        badge.layer.borderWidth = 1
        badge.layer.borderColor = (PonllyDataCenter.isMutual(user.id) ? PonllyPalette.green : PonllyPalette.pink).cgColor
        badge.clipsToBounds = true
        badge.widthAnchor.constraint(equalToConstant: 92).isActive = true
        badge.heightAnchor.constraint(equalToConstant: 30).isActive = true
        row.addArrangedSubview(badge)
        NSLayoutConstraint.activate([
            control.heightAnchor.constraint(equalToConstant: 92),
            row.leadingAnchor.constraint(equalTo: control.leadingAnchor, constant: 18),
            row.trailingAnchor.constraint(equalTo: control.trailingAnchor, constant: -18),
            row.centerYAnchor.constraint(equalTo: control.centerYAnchor)
        ])
        return control
    }
}
