import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyPolicyViewController: UIViewController {
    private let textView = UITextView()

    override func viewDidLoad() {
        super.viewDidLoad()
        if title == nil {
            title = "Privacy Policy"
        }
        view.backgroundColor = PonllyPalette.background
        setup()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        tabBarController?.tabBar.isHidden = true
    }

    private func setup() {
        let header = UIView()
        header.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(header)

        let back = UIButton(type: .system)
        back.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        back.tintColor = .white
        back.backgroundColor = PonllyPalette.panel.withAlphaComponent(0.92)
        back.layer.cornerRadius = 28
        back.layer.borderWidth = 1
        back.layer.borderColor = PonllyPalette.line.cgColor
        back.translatesAutoresizingMaskIntoConstraints = false
        back.addTarget(self, action: #selector(backTapped), for: .touchUpInside)
        header.addSubview(back)

        let heading = UILabel()
        heading.text = policyTitle
        heading.textColor = .white
        heading.font = PonllyFonts.display(size: 22)
        heading.textAlignment = .center
        heading.adjustsFontSizeToFitWidth = true
        heading.minimumScaleFactor = 0.76
        heading.translatesAutoresizingMaskIntoConstraints = false
        header.addSubview(heading)

        textView.isEditable = false
        textView.showsVerticalScrollIndicator = true
        textView.backgroundColor = .clear
        textView.textContainerInset = UIEdgeInsets(top: 18, left: 18, bottom: 34, right: 18)
        textView.attributedText = attributedPolicyText()
        textView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textView)

        NSLayoutConstraint.activate([
            header.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            header.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            header.topAnchor.constraint(equalTo: view.topAnchor),
            header.heightAnchor.constraint(equalToConstant: 122),
            back.leadingAnchor.constraint(equalTo: header.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            back.bottomAnchor.constraint(equalTo: header.bottomAnchor, constant: -12),
            back.widthAnchor.constraint(equalToConstant: 56),
            back.heightAnchor.constraint(equalToConstant: 56),
            heading.leadingAnchor.constraint(equalTo: back.trailingAnchor, constant: 14),
            heading.trailingAnchor.constraint(equalTo: header.safeAreaLayoutGuide.trailingAnchor, constant: -28),
            heading.centerYAnchor.constraint(equalTo: back.centerYAnchor),
            textView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            textView.topAnchor.constraint(equalTo: header.bottomAnchor),
            textView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    private var isTermsPage: Bool {
        let value = (title ?? "").lowercased()
        return value.contains("terms") || value.contains("service")
    }

    private var isEulaPage: Bool {
        let value = (title ?? "").lowercased()
        return value.contains("eula") || value.contains("license")
    }

    private var policyTitle: String {
        if isEulaPage { return "Ponlly EULA Agreement" }
        return isTermsPage ? "Ponlly User Terms" : "Ponlly Privacy Policy"
    }

    private func attributedPolicyText() -> NSAttributedString {
        let paragraph = NSMutableParagraphStyle()
        paragraph.lineSpacing = 5
        paragraph.paragraphSpacing = 14
        let text = isEulaPage ? eulaText : (isTermsPage ? userTermsText : privacyText)
        return NSAttributedString(
            string: text,
            attributes: [
                .font: PonllyFonts.body(size: 14, weight: .regular),
                .foregroundColor: PonllyPalette.muted,
                .paragraphStyle: paragraph
            ]
        )
    }

    private var privacyText: String {
        """
        Last updated: August 20, 2026

        Ponlly: Street Art is a graffiti-focused creative app where people explore street art ideas, graffiti-inspired voice spaces, visual sketches, wall textures, marker styles, and real-time creative discussions. This Privacy Policy explains how Ponlly collects, uses, protects, and shares information when you use the app, features, and support channels.

        1. Information We Collect
        We collect information necessary to operate Ponlly, provide account access, support creative graffiti features, maintain safety, and respond to your requests. This may include account information such as email address, display name, profile details, preferences, authentication status, and settings.

        2. Creative Activity and Interactions
        Ponlly may process information related to graffiti sketches, creative prompts, artwork descriptions, reactions, saved themes, participation in graffiti discussion spaces, and interactions with app features. This helps provide a consistent experience, improve creative tools, and maintain a respectful environment.

        3. Camera, Photo, Microphone, and Visual Permissions
        Ponlly may request access to your microphone, camera, or photo library when you choose features involving voice, real-time visual discussion, artwork selection, or image-based creative expression. These permissions are used only for the feature you select. You may disable permissions in device settings, though some features may no longer function properly.

        4. Device, Diagnostics, and Support Information
        We may process device type, operating system, app version, language setting, crash information, diagnostics, performance data, network status, and security signals to operate the app, troubleshoot issues, prevent misuse, and improve reliability. If you contact support, we may process your email address, request details, attachments, and related support history.

        5. How We Use Information
        We use information to create, maintain, and secure accounts; provide graffiti-inspired creative features; support voice, visual, and artwork experiences you choose; detect and address unsafe behavior; review reports; enforce rules; respond to support requests; improve stability; and comply with legal obligations and Apple App Store requirements.

        6. User Conduct, Safety, and Account Requirements
        Ponlly is intended for lawful, respectful, graffiti-focused creative expression. Users must meet the minimum age required by applicable law and must not misrepresent their age, identity, or eligibility. Accounts may be restricted, suspended, or removed if information is false, unsafe, or used to evade enforcement.

        7. Reporting, Blocking, and Enforcement
        Ponlly provides tools for reporting inappropriate behavior, unsafe interactions, intellectual property concerns, and policy violations. We review reports based on risk and severity. Serious violations may result in material removal, feature limits, account restrictions, account termination, preservation of relevant information, or escalation to appropriate authorities where required by law.

        8. Information Sharing
        We do not sell personal information. We may share information only when necessary to operate Ponlly, protect users, comply with law, process support requests, investigate violations, or complete actions you request. Service providers may process information only as needed to provide services to Ponlly.

        9. Data Retention and Deletion
        We retain information for as long as needed to provide Ponlly, maintain account records, comply with legal obligations, resolve disputes, enforce terms, and protect service integrity. If you request account deletion, we will take reasonable steps to delete or de-identify information unless retention is required for legal, safety, fraud prevention, dispute resolution, or enforcement reasons.

        10. Your Choices and Rights
        Depending on your location, you may have rights to access, correct, delete, export, or restrict certain personal information. You may manage camera, microphone, and photo permissions through device settings. We may need to verify requests before taking action to protect your account and personal information.

        11. Children and Age Restrictions
        Ponlly is not directed to children under the minimum age required by applicable law. We have zero tolerance for child sexual abuse material, grooming, exploitation, trafficking, or any conduct that endangers minors. We may preserve and report relevant information to appropriate authorities when required or permitted by law.

        12. Security
        We use reasonable administrative, technical, and organizational safeguards designed to protect information against unauthorized access, loss, misuse, alteration, and disclosure. No method of transmission or storage is completely secure, so users should protect account access and notify us of suspected compromise.

        13. Changes to This Policy
        We may update this Privacy Policy from time to time. If changes are material, we will provide reasonable notice through the app or other appropriate means. Continued use after the effective date means you accept the updated policy.

        14. Contact Us
        For privacy requests, safety concerns, or questions, contact: polly467u@gmail.com
        """
    }

    private var userTermsText: String {
        """
        Last updated: August 20, 2026

        These User Terms govern your access to and use of Ponlly: Street Art, a graffiti-focused creative app for street art inspiration, graffiti style exploration, voice-based creative spaces, visual idea exchange, and artwork discussions. By using Ponlly, you agree to these terms and to our Privacy Policy.

        1. Eligibility and Account Responsibility
        You must be old enough to lawfully use Ponlly in your country or region and to enter into these terms. You must provide accurate account information and must not misrepresent your age, identity, eligibility, or affiliation. You are responsible for maintaining account access and for all activity that occurs through your account. You may not create accounts to evade restrictions or safety protections.

        2. Acceptable Use
        Ponlly is designed for lawful, respectful, graffiti-related creativity. You may use the app to explore street art ideas, sketch concepts, discuss marker styles, compare wall textures, develop visual themes, and participate in creative graffiti experiences when those activities comply with these terms and applicable law.

        3. Prohibited Conduct
        You may not use Ponlly to create, display, encourage, coordinate, or distribute illegal, harmful, deceptive, or abusive activity. Prohibited conduct includes harassment, threats, stalking, hate-based attacks, sexual exploitation, sexual solicitation, non-consensual intimate material, exploitation or endangerment of minors, impersonation, sharing private information without permission, fraud, spam, malware, phishing, scraping, bypassing app security, encouraging serious harm, or infringing intellectual property rights.

        4. Creative Materials and Rights
        You retain ownership of creative materials you lawfully provide to Ponlly. By using the app, you grant Ponlly a limited, worldwide, non-exclusive license to host, process, display, adapt, and use those materials only as necessary to operate, improve, protect, and provide the app features you choose to use. You represent that you have all rights needed for artwork, images, sketches, text, voice, or other materials you provide.

        5. Reporting, Blocking, and Safety Review
        Ponlly provides mechanisms to report inappropriate behavior, unsafe interactions, intellectual property concerns, and other violations. Reports may be reviewed using safety signals, human review, or both depending on severity. We may remove materials, limit features, restrict accounts, suspend accounts, terminate accounts, preserve relevant information, or contact appropriate authorities when necessary.

        6. Child Safety
        Ponlly has zero tolerance for child sexual abuse material, exploitation, grooming, trafficking, coercion, or any conduct that endangers minors. Users may not upload, request, describe, facilitate, or promote such material or behavior in any form. Credible child safety risks may lead to immediate enforcement and reporting where required or permitted by law.

        7. Voice, Visual, and Interactive Features
        When using voice, camera, artwork, or real-time interactive features, you must respect consent, privacy, and safety. You may not record, capture, reuse, or distribute another person's voice, image, artwork, or personal information without appropriate permission and legal authority.

        8. Account Enforcement
        Ponlly may act against accounts that violate these terms, the Privacy Policy, safety requirements, or applicable law. Actions may include warnings, feature limits, material removal, temporary restrictions, account suspension, account termination, and measures designed to prevent repeated violations.

        9. Apple Platform Requirements
        If you access Ponlly through Apple platforms, you must also comply with applicable Apple Media Services Terms and App Store rules. Ponlly is responsible for the app and its content, not Apple. Apple and its subsidiaries are third-party beneficiaries of these terms and may enforce them where applicable.

        10. Service Changes and Availability
        Ponlly may update, modify, suspend, or discontinue features from time to time. We work to keep the app reliable, but we do not guarantee uninterrupted availability, error-free operation, or that every feature will remain available in every location or on every device.

        11. Disclaimers and Limitation of Liability
        Ponlly is provided on an as-is and as-available basis to the fullest extent permitted by law. We disclaim warranties not expressly stated in these terms. To the maximum extent permitted by law, Ponlly will not be liable for indirect, incidental, special, consequential, exemplary, or punitive damages arising from use of the app.

        12. Changes to These Terms
        We may update these User Terms when necessary to reflect changes to the app, legal requirements, safety practices, or operational needs. If changes are material, we will provide reasonable notice. Continued use after the effective date means you accept the updated terms.

        13. Contact
        For questions about these terms, account safety, reports, or privacy matters, contact: polly467u@gmail.com
        """
    }

    private var eulaText: String {
        """
        Last updated: August 20, 2026

        This End User License Agreement governs your licensed use of Ponlly: Street Art on Apple platforms. By accessing or using Ponlly, you agree to this agreement, our User Terms, and our Privacy Policy.

        1. License Scope
        Ponlly grants you a limited, non-transferable, non-exclusive license to use the app on Apple-branded devices that you own or control, subject to Apple Media Services Terms, App Store rules, and this agreement.

        2. Eligibility
        You must meet the minimum age required by applicable law in your country or region and must have legal authority to accept this agreement. You may not misrepresent your age, identity, eligibility, or account information.

        3. Account and Access Rules
        You are responsible for account access, device security, and activity through your account. You may not create or use accounts to evade restrictions, impersonate others, bypass safety checks, or interfere with Ponlly's integrity.

        4. Acceptable Use
        Ponlly is for lawful, respectful graffiti-focused creativity, including street art inspiration, artwork discussions, voice spaces, and visual idea exchange. You must respect other artists, their work, their privacy, and all applicable laws.

        5. Prohibited Behavior
        You may not use Ponlly for harassment, threats, hate-based attacks, exploitation, sexual content involving minors, non-consensual intimate material, unlawful conduct, spam, fraud, malware, phishing, intellectual property infringement, or attempts to defeat app security.

        6. Voice, Camera, Photo, and Interactive Features
        You must use voice, camera, photo, and interactive features responsibly. Do not capture, record, reuse, or distribute another person's voice, image, artwork, or personal information without appropriate permission and legal authority.

        7. Reporting, Blocking, and Enforcement
        Ponlly may provide reporting and blocking tools. We may review reports, remove materials, limit features, restrict accounts, suspend or terminate access, preserve relevant information, and escalate serious matters to appropriate authorities when required or permitted by law.

        8. Child Safety
        Ponlly has zero tolerance for child sexual abuse material, grooming, trafficking, coercion, exploitation, or any conduct that endangers minors. Serious child safety risks may result in immediate account action and reporting.

        9. Apple Terms
        Apple is not responsible for Ponlly, support, maintenance, claims, or content. Apple and its subsidiaries are third-party beneficiaries of this agreement and may enforce it where applicable.

        10. Contact
        For license, safety, account, or privacy questions, contact: polly467u@gmail.com
        """
    }

    @objc private func backTapped() {
        navigationController?.popViewController(animated: true)
    }
}
