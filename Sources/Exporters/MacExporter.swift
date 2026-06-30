import Foundation

final class MacExporter: Exporter {

    func export(project: String, output: String) {

        print("Exportando \(project) para macOS...")
        print("Destino: \(output)")

        // TODO:
        // Criar .app
        // Copiar Assets
        // Compilar projeto

        print("Exportação concluída.")
    }
}
