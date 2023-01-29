import SwiftUI

enum Montserrat {
    case lightItalic
    case medium
    case boldItalic
    case Light
    case thinItalic
    case ExtraLight
    case thin
    case bold
    case mediumItalic
    case blackItalic
    
    func font(size: CGFloat) -> Font {
        switch self {
        case .lightItalic:
            return .custom("Montserrat-LightItalic" , size: size)
        case .medium:
            return .custom("Montserrat-Medium" , size: size)
        case .boldItalic:
            return .custom("Montserrat-BoldItalic" , size: size)
        case .Light:
            return .custom("Montserrat-Light" , size: size)
        case .thinItalic:
            return .custom("Montserrat-ThinItalic" , size: size)
        case .ExtraLight:
            return .custom("Montserrat-ExtraLight" , size: size)
        case .thin:
            return .custom("Montserrat-Thin" , size: size)
        case .bold:
            return .custom("Montserrat-Bold" , size: size)
        case .mediumItalic:
            return .custom("Montserrat-MediumItalic" , size: size)
        case .blackItalic:
            return .custom("Montserrat-BlackItalic" , size: size)
        }
    }
}



