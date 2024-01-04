import ProjectDescription

let project = Project(
    name: "RetainCycleSample",
    organizationName: "andrecocuroci.com.br",
    targets: [
        Target(
            name: "RetainCycleApp",
            platform: .iOS,
            product: .app,
            bundleId: "br.com.andrecocuroci.RetainCycleSample",
            infoPlist: "Sources/Info.plist",
            sources: ["Sources/**"],
            resources: ["Resources/**"]
        )
    ]
)
