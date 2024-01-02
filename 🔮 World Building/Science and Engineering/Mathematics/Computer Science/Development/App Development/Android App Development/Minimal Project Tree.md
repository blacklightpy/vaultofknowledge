Prerequisites: [[Android SDK]], JDK (mostly)

If you have the Gradle installed, you can manually generate a project by typing `gradle init`.
A minimal project tree (in Kotlin) would look like this:

> [!NOTE]
> Most of the files are from Gradle, and additionally, if you are using Android Studio or IDEA, you'll have the IDE configuration files. The main source code resides in the "src" folder.

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