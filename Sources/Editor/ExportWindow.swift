import SwiftUI

enum ExportPlatform: String, CaseIterable, Identifiable {
    case mac = "macOS"
    case threeDSX = "Nintendo 3DS (.3dsx)"
    case cia = "Nintendo 3DS (.cia)"
    case psp = "PSP (.pbp)"
    case wii = "Nintendo Wii (.dol)"

    var id: String { rawValue }
}

struct ExportWindow: View {

    @State private var projectName = "MyGame"
    @State private var outputFolder = ""
    @State private var selectedPlatform: ExportPlatform = .mac
    @State private var status = "Pronto para exportar."

    var body: some View {

        Form {

            Section("Projeto") {

                TextField("Nome", text: $projectName)

                TextField("Pasta de saída", text: $outputFolder)
            }

            Section("Plataforma") {

                Picker("Exportar para", selection: $selectedPlatform) {
                    ForEach(ExportPlatform.allCases) { platform in
                        Text(platform.rawValue)
                            .tag(platform)
                    }
                }
            }

            Section {

                Button("Exportar") {
                    exportProject()
                }
            }

            Section("Status") {
                Text(status)
            }
        }
        .padding()
        .frame(width: 450, height: 350)
        .navigationTitle("Exportar Projeto")
    }

    func exportProject() {

        switch selectedPlatform {

        case .mac:
            MacExporter().export(project: projectName, output: outputFolder)

        case .threeDSX:
            ThreeDSExporter().export3DSX(project: projectName, output: outputFolder)

        case .cia:
            ThreeDSExporter().exportCIA(project: projectName, output: outputFolder)

        case .psp:
            PSPExporter().export(project: projectName, output: outputFolder)

        case .wii:
            WiiExporter().export(project: projectName, output: outputFolder)
        }

        status = "Exportação concluída!"
    }
}

struct ExportWindow_Previews: PreviewProvider {
    static var previews: some View {
        ExportWindow()
    }
}
