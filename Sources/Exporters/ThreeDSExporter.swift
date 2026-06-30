import Foundation

final class ThreeDSExporter {

    func export3DSX(project: String, output: String) {

        print("Exportando \(project) para .3dsx")

        // TODO:
        // Gerar Makefile
        // Executar make
        // Executar 3dsxtool
    }

    func exportCIA(project: String, output: String) {

        print("Exportando \(project) para .cia")

        // TODO:
        // Compilar ELF
        // Executar makerom
    }
}
