//
//  GradientIcon.swift
//  SwiftCombine
//
//  Created by Ehsan Rahimi on 5/22/24.
//

import SwiftUI

struct GradientIcon: View {
    var icon: String = "questionmark"
    var color = Color(#colorLiteral(red: 0.1019607843, green: 0.07058823529, blue: 0.2431372549, alpha: 0.8))
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6196078431, green: 0.6784313725, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.5607843137, blue: 0.9803921569, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .mask(Image(systemName: icon))
            .font(.system(size: 17))
            .background(color)
            .frame(width: 36, height: 36)
            .mask(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .overlay {
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .stroke(lineWidth: 1)
                    .foregroundStyle(.white)
                    .blendMode(.overlay)
            }
    }
}

#Preview {
    GradientIcon()
        .previewLayout(.sizeThatFits)
}
