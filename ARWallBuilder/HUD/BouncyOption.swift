import Foundation

enum BouncyOption: String, HUDOption {

    case newWall = "newWall"
    case start = "start"
    case cancelWall = "cancelWall"

    var id: String {
        return rawValue
    }

    var title: String {
        switch self {
        case .newWall: return "NEW WALL"
        case .start: return "START"
        case .cancelWall: return "CANCEL"
        }
    }

}
