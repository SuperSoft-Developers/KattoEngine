import Foundation

public final class Input {

    public static let shared = Input()

    private var pressedKeys: Set<String> = []

    private init() {}

    public func press(_ key: String) {
        pressedKeys.insert(key)
    }

    public func release(_ key: String) {
        pressedKeys.remove(key)
    }

    public func isPressed(_ key: String) -> Bool {
        return pressedKeys.contains(key)
    }
}
