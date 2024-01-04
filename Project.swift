import ProjectDescription

let infoPlist: [String: InfoPlist.Value] = [
    "CFBundleShortVersionString": "1.0",
    "CFBundleVersion": "1",
    "UIMainStoryboardFile": "",
    "UILaunchStoryboardName": "LaunchScreen",
    "UIApplicationSceneManifest": [
        "UIApplicationSupportsMultipleScenes": false,
        "UISceneConfigurations": [
            "UIWindowSceneSessionRoleApplication": [
                ["UISceneConfigurationName": "Default Configuration"],
                ["UISceneDelegateClassName": "$(PRODUCT_MODULE_NAME).SceneDelegate"]
            ]
        ]
    ]
]

let project = Project(
    name: "RetainCycleSample",
    organizationName: "andrecocuroci.com.br",
    targets: [
        Target(
            name: "RetainCycleApp",
            platform: .iOS,
            product: .app,
            bundleId: "br.com.andrecocuroci.RetainCycleSample",
            infoPlist: .extendingDefault(with: infoPlist),
            sources: ["Sources/**"],
            resources: ["Resources/**"]
        )
    ]
)
