import SwiftUI

struct Inspector: View {

    @State private var x = "0"
    @State private var y = "0"
    @State private var z = "0"

    var body: some View {

        Form {

            Section("Transform") {

                TextField("X", text: $x)
                TextField("Y", text: $y)
                TextField("Z", text: $z)
            }

            Section("Sprite") {

                Text("Texture")
                Text("player.png")
            }
        }
        .navigationTitle("Inspector")
    }
}
