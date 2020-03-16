import Fluent
import Vapor

func routes(_ app: Application) throws {
    root.get([.anything, "name", "health"]) { request in
        return "Healthy!"
    }
}
