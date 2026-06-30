import SwiftUI

struct SceneTree: View {

    @State private var nodes = [
        "Main Camera",
        "Player",
        "Ground"
    ]

    var body: some View {

        List(nodes, id: \.self) { node in
            Label(node, systemImage: "cube")
        }
        .navigationTitle("Scene")
    }
}
