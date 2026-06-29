import Foundation

public final class Engine {

    public static let shared = Engine()

    public var currentScene: Scene?

    private var running = false

    private init() {}

    public func loadScene(_ scene: Scene) {
        currentScene = scene
        print("Cena carregada: \(scene.name)")
    }

    public func start() {
        running = true
        print("KattoEngine iniciada!")

        while running {
            update()
            Thread.sleep(forTimeInterval: 1.0 / 60.0)
        }
    }

    public func stop() {
        running = false
        print("Engine finalizada.")
    }

    private func update() {
        currentScene?.update()
    }
}
