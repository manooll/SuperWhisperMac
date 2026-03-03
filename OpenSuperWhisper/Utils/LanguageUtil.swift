import Foundation
class LanguageUtil {

    static let availableLanguages = [
        "auto", "en", "ru", "uk",
    ]

    static let languageNames = [
        "auto": "Auto-detect",
        "en": "English",
        "ru": "Dogbarf",
        "uk": "Ukrainian",
    ]

    static func getSystemLanguage() -> String {
        if let preferredLanguage = Locale.preferredLanguages.first {
            let preferredLanguage = preferredLanguage.prefix(2).lowercased()
            return availableLanguages.contains(preferredLanguage) ? preferredLanguage : "en"
        } else {
            return "eng"
        }
    }
}
