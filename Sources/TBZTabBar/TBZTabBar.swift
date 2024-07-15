import SwiftUI

// MARK: - TTabBar

/// A customizable tab bar view for SwiftUI.
///
/// Usage:
/// ```
/// @State private var selectedTab = 0
/// let buttons = [
///     TabBarButton(title: "Home", icon: "house.fill"),
///     TabBarButton(title: "Profile", icon: "person.fill")
/// ]
///
/// TTabBar(selectedTab: $selectedTab, buttons: buttons)
///


public struct TBZTabBar: View {
    @Binding public var selectedTab: Int
    public var buttons: [TBZTabBarButton]
    public var backgroundColor: Color
    public var cornerRadius: CGFloat
    public var shadowColor: Color
    public var shadowRadius: CGFloat
    public var verticalPadding: CGFloat
    public var horizontalPadding: CGFloat
    public var bottomPadding: CGFloat
    
    public init(selectedTab: Binding<Int>,
                buttons: [TBZTabBarButton],
                backgroundColor: Color = .white,
                cornerRadius: CGFloat = 25,
                shadowColor: Color = Color.black.opacity(0.1),
                shadowRadius: CGFloat = 10,
                verticalPadding: CGFloat = 10,
                horizontalPadding: CGFloat = 16,
                bottomPadding: CGFloat = 20) {
        self._selectedTab = selectedTab
        self.buttons = buttons
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.shadowColor = shadowColor
        self.shadowRadius = shadowRadius
        self.verticalPadding = verticalPadding
        self.horizontalPadding = horizontalPadding
        self.bottomPadding = bottomPadding
    }
    
    public var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<buttons.count, id: \.self) { index in
                buttons[index]
                    .isSelected(selectedTab == index)
                    .onTapGesture {
                        selectedTab = index
                    }
            }
        }
        .padding(.vertical, verticalPadding)
        .padding(.horizontal, horizontalPadding)
        .background(backgroundColor)
        .cornerRadius(cornerRadius)
        .shadow(color: shadowColor, radius: shadowRadius, x: 0, y: 5)
        .padding(.horizontal)
        .padding(.bottom, bottomPadding)
    }
}
