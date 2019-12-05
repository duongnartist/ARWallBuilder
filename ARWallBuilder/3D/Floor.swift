import Foundation
import SceneKit

class Floor {

    class func node(position: SCNVector3) -> SCNNode {
        let floor = SCNFloor()
        floor.reflectivity = 0
        // floor.firstMaterial?.diffuse.contents = UIColor.blue
        // floor.firstMaterial?.transparency = 0.5
        floor.firstMaterial?.colorBufferWriteMask = SCNColorMask(rawValue: 0)
        let node = SCNNode(geometry: floor)
        node.physicsBody = SCNPhysicsBody(type: .static, shape: nil)
        node.physicsBody?.categoryBitMask = CollisionTypes.solid.rawValue
        node.physicsBody?.collisionBitMask = CollisionTypes.beachball.rawValue
        node.physicsBody?.contactTestBitMask = CollisionTypes.solid.rawValue
        node.position = position
        return node
    }

}
