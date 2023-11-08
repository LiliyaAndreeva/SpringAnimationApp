import Foundation

struct Animation {

    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var describe: String {
        """
        preset: \(preset)
        curve:  \(curve)
        force:  \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay:   \(delay)
        """
    }
    
    static func getRandomAnimation() -> Animation  {
        return Animation(preset: DataStore.shared.animations.randomElement() ?? "",
                         curve: DataStore.shared.curves.randomElement() ?? "",
                         force: Double.random(in: 0.50...1.50),
                         duration: Double.random(in: 0.50...1.50),
                         delay: 1.00)
    }
}
