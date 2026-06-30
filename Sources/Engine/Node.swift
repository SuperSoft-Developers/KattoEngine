import Foundation

open class Node {

    public var name: String

    public var x: Float = 0
    public var y: Float = 0
    public var z: Float = 0

    public init(name: String) {
        self.name = name
    }

    open func update() {
        // Sobrescreva nas subclasses
    }

    public func setPosition(x: Float, y: Float, z: Float) {
        self.x = x
        self.y = y
        self.z = z
    }

    public func translate(dx: Float, dy: Float, dz: Float) {
        x += dx
        y += dy
        z += dz
    }
}
