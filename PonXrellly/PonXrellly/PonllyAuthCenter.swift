import AVFAudio
import AVFoundation
import AVKit
import StoreKit
import UIKit

final class PonllyAuthCenter {
    static let shared = PonllyAuthCenter()
    private let defaults = UserDefaults.standard
    private let loginKey = "ponllyLogin"
    private let consentKey = "ponllyEulaConsent"
    private let emailKey = "ponllyEmail"
    private let registeredAccountsKey = "ponllyRegisteredAccounts"

    var isLoggedIn: Bool { defaults.bool(forKey: loginKey) }
    var hasConsent: Bool {
        get { defaults.bool(forKey: consentKey) }
        set { defaults.set(newValue, forKey: consentKey) }
    }

    func login(email: String, password: String, completion: @escaping (Bool, String?) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
            guard !email.trimmingCharacters(in: .whitespaces).isEmpty else {
                completion(false, "Email is required")
                return
            }
            guard !password.isEmpty else {
                completion(false, "Password is required")
                return
            }
            if email == "ponlly@gmail.com", password == "555666" {
                self.defaults.set(true, forKey: self.loginKey)
                self.defaults.set(email, forKey: self.emailKey)
                completion(true, nil)
            } else if self.registeredAccounts[email] == nil {
                completion(false, "Account not found")
            } else if self.registeredAccounts[email] != password {
                completion(false, "Wrong password")
            } else {
                self.defaults.set(true, forKey: self.loginKey)
                self.defaults.set(email, forKey: self.emailKey)
                completion(true, nil)
            }
        }
    }

    func createAccount(email: String, password: String, completion: @escaping (Bool, String?) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
            let cleanedEmail = email.trimmingCharacters(in: .whitespacesAndNewlines)
            if let message = self.validateNewAccount(email: cleanedEmail, password: password) {
                completion(false, message)
                return
            }
            var accounts = self.registeredAccounts
            accounts[cleanedEmail] = password
            self.defaults.set(accounts, forKey: self.registeredAccountsKey)
            self.defaults.set(true, forKey: self.loginKey)
            self.defaults.set(cleanedEmail, forKey: self.emailKey)
            completion(true, nil)
        }
    }

    func validateNewAccount(email: String, password: String) -> String? {
        let cleanedEmail = email.trimmingCharacters(in: .whitespacesAndNewlines)
        guard isValidEmail(cleanedEmail) else {
            return "Enter a valid email"
        }
        guard password.count >= 6 else {
            return "Password needs at least 6 characters"
        }
        guard cleanedEmail != "ponlly@gmail.com", registeredAccounts[cleanedEmail] == nil else {
            return "Account already exists"
        }
        return nil
    }

    func requireLogin(from controller: UIViewController, completion: @escaping () -> Void) {
        if isLoggedIn {
            completion()
            return
        }
        let auth = PonllyAuthViewController(completion: completion)
        let nav = UINavigationController(rootViewController: auth)
        nav.modalPresentationStyle = .fullScreen
        controller.present(nav, animated: true)
    }

    func logout() {
        defaults.set(false, forKey: loginKey)
    }

    func deleteCurrentAccount() {
        defaults.set(false, forKey: loginKey)
        defaults.removeObject(forKey: emailKey)
    }

    private var registeredAccounts: [String: String] {
        defaults.dictionary(forKey: registeredAccountsKey) as? [String: String] ?? [:]
    }

    private func isValidEmail(_ email: String) -> Bool {
        let pattern = #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#
        return email.range(of: pattern, options: .regularExpression) != nil
    }
}
