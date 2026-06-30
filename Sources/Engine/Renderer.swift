import Foundation

public final class Renderer {

    public init() {}

    public func render(scene: Scene) {

        for node in scene.getNodes() {

            if let sprite = node as? Sprite {

                print("""
                Desenhando \(sprite.name)
                Textura: \(sprite.texture)
                Posição: (\(sprite.x), \(sprite.y))
                """)
            }
        }
    }
}
