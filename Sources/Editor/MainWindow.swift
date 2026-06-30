import SwiftUI

@main
struct KattoEditorApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {

    var body: some View {

        NavigationSplitView {

            SceneTree()

        } detail: {

            Inspector()

        }
        .navigationTitle("KattoEngine Editor")
    }
}
