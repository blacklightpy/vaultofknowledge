Prerequisites: [[Android SDK]], JDK (mostly)

If you have the Gradle installed, you can manually generate a project by typing `gradle init`.
A minimal project tree (in Kotlin) would look like this:

```
├── gradle 
│   └── wrapper
│       ├── gradle-wrapper.jar
│       └── gradle-wrapper.properties
├── gradlew 
├── gradlew.bat 
├── settings.gradle.kts 
└── app
    ├── build.gradle.kts 
    └── src
        ├── main
        │   └── kotlin 
        │       └── demo
        │           └── App.kt
        └── test
            └── kotlin 
                └── demo
                    └── AppTest.kt
```