import Foundation

open class Sprite: Node {

    public var texture: String
    public var width: Float
    public var height: Float

    public init(
        name: String,
        texture: String,
        width: Float = 64,
        height: Float = 64
    ) {
        self.texture = texture
        self.width = width
        self.height = height
        super.init(name: name)
    }

    open override func update() {
        // Atualizações do sprite
    }
}
