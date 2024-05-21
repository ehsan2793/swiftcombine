//
//  ContentView.swift
//  SwiftCombine
//
//  Created by Ehsan Rahimi on 5/19/24.
//

import SwiftUI

struct ContentView: View {
    @State private var contentOffset = CGFloat(0)
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                TrackableScrollView(offsetChanged: {
                    offset in
                    contentOffset = offset.y
                }) {
                    Text("Hello, world!")
                        .padding(.top, 40)
                }

                VisualEffectBlur(blurStyle: .systemMaterial)
                    .opacity(contentOffset < -16 ? 1 : 0)
                    .animation(.easeIn, value: contentOffset)
                    .ignoresSafeArea()
                    .frame(width: 600,height: 40)
             
            } //: zstack
            .frame(maxHeight: .infinity, alignment: .top)
            .background(AccountBackground())
            .toolbar(.hidden)
            .padding()
            .ignoresSafeArea()
        } //: NAVIGATION
    }
}

#Preview {
    ContentView()
}
