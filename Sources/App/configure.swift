import Fluent
import FluentMySQLDriver
import Vapor
import JWT
import SendGrid

// configures your application
public func configure(_ app: Application) throws {
    guard let jwksString = Environment.process.JWKS else {
        fatalError("No value was found at the given public key environment 'JWKS'")
    }
    guard let mysqlUrl = Environment.process.MYSQL_CRED else { fatalError("No value was found at the given public key environment 'MYSQL_CRED'")
           }
    guard let url = URL(string: mysqlUrl) else { fatalError("Cannot parse: \(mysqlUrl) correctly.")
    }
    app.databases.use(try .mysql(url: url), as: .mysql)
    // uncomment to serve files from /Public folder
    app.middleware.use(CORSMiddleware())
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    app.databases.use(.sqlite(.file("db.sqlite")), as: .sqlite)
    
    try app.jwt.signers.use(jwksJSON: jwksString)

    app.migrations.add(CreateTodo())

    // register routes
    try routes(app)
}
