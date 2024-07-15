//
//  TBZTabBarButton.swift
//
//
//  Created by Tuğberk Can Özen on 15.07.2024.
//

import SwiftUI

// MARK: - TBZTabBarButton

/// A customizable button for use in TTabBar.
///
/// Usage:
/// ```
/// TabBarButton(title: "Home", icon: "house.fill", selectedColor: .blue, unselectedColor: .gray)
///

public struct TBZTabBarButton: View {
    public let title: String
    public let icon: String
    public var selectedColor: Color
    public var unselectedColor: Color
    public var fontSize: CGFloat
    public var iconSize: CGFloat
    private var isSelected: Bool
    
    public init(title: String,
                icon: String,
                selectedColor: Color = .blue,
                unselectedColor: Color = .gray,
                fontSize: CGFloat = 12,
                iconSize: CGFloat = 24,
                isSelected: Bool = false) {
        self.title = title
        self.icon = icon
        self.selectedColor = selectedColor
        self.unselectedColor = unselectedColor
        self.fontSize = fontSize
        self.iconSize = iconSize
        self.isSelected = isSelected
    }
    
    public var body: some View {
        VStack(spacing: 4) {
            Image(systemName: icon)
                .font(.system(size: iconSize))
            Text(title)
                .font(.system(size: fontSize))
        }
        .foregroundColor(isSelected ? selectedColor : unselectedColor)
        .frame(maxWidth: .infinity)
        .animation(.spring(), value: isSelected)
    }
    
    public func isSelected(_ selected: Bool) -> TBZTabBarButton {
        var copy = self
        copy.isSelected = selected
        return copy
    }
}
