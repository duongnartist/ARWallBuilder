import Foundation
import SpriteKit

private let OPTION_YOFFSET: CGFloat = 60

class HUD {
    class func present(options: [HUDOption], in scene: SKScene) {
        for i in 0..<options.count {
            let labelNode = SKLabelNode()
            labelNode.text = options[i].title
            labelNode.name = options[i].id
            labelNode.position = CGPoint(x: 20, y: CGFloat(i + 1) * OPTION_YOFFSET)
            labelNode.horizontalAlignmentMode = .left
            labelNode.verticalAlignmentMode = .center
            labelNode.fontSize = 30
            labelNode.fontName = "AvenirNext-Bold"
            scene.addChild(labelNode)
        }
    }

    class func remove(options: [HUDOption], in scene: SKScene) {
        for option in options {
            scene.childNode(withName: option.id)?.removeFromParent()
        }
    }
}
