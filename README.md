# TBZTabBar

![ScreenShot]([https://raw.githubusercontent.com/ozentugberkcan/TBZTabBar/main/preview.png](https://raw.githubusercontent.com/ozentugberkcan/TBZTabBar/main/Ekran%20Resmi%202024-07-15%2020.44.09.png))

A customizable TabBar for SwiftUI projects.

## Installation

You can add CustomTabBar to an Xcode project by adding it as a package dependency.

1. From the **File** menu, select **Swift Packages › Add Package Dependency...**
2. Enter "https://github.com/ozentugberkcan/TBZTabBar" into the package repository URL text field
3. Link "TBZTabBar" to your application target

## Usage

```swift
import SwiftUI
import TBZTabBar

struct ContentView: View {
    @State private var selectedTab = 0
 
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                Text("Home").tag(0)
                Text("Favorite").tag(1)
                Text("Video").tag(2)
                Text("Profile").tag(3)
                Text("Chat").tag(4)
            }
         
            TBZTabBar(selectedTab: $selectedTab)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}
