import Foundation

public class Scene {

    public let name: String
    private var nodes: [Node] = []

    public init(name: String) {
        self.name = name
    }

    public func addNode(_ node: Node) {
        nodes.append(node)
    }

    public func removeNode(_ node: Node) {
        nodes.removeAll { $0 === node }
    }

    public func update() {
        for node in nodes {
            node.update()
        }
    }

    public func getNodes() -> [Node] {
        return nodes
    }
}
