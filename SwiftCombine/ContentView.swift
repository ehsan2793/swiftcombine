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
                    content
                        .padding(.top, 40)
                }

//                VisualEffectBlur(blurStyle: .systemUltraThinMaterialLight)
//                    .opacity(contentOffset < -16 ? 1 : 0)
//                    .animation(.easeIn, value: contentOffset)
//                    .ignoresSafeArea()
//
//                    .frame(width: 600,height: 40)
            } //: zstack
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)

            .background(AccountBackground())
            .toolbar(.hidden)

            .padding()
            .ignoresSafeArea()
        } //: NAVIGATION
    }

    var content: some View {
        VStack {
            VStack {
                NavigationLink {
                    FAQView()
                } label: {
                    MenuRow()
                }
                divider
                NavigationLink {
                    PackagesView()
                } label: {
                    MenuRow(title: "Packages", leftIcon: "square.stack.3d.up.fill")
                }

                divider
                Link(destination: URL(string: "https://www.apple.com")!, label: {
                    MenuRow(title: "YouTube Channel", leftIcon: "play.rectangle.fill", rightIcon: "link")
                })
            }
            .padding()
            .background(Color(.background1))
            .background(VisualEffectBlur(blurStyle: .systemMaterialDark))
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 1)
                    .blendMode(.overlay)
            }
            .mask(RoundedRectangle(cornerRadius: 20))

            Text("Version 1.00")
                .foregroundStyle(.white.opacity(0.7))
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding(.vertical, 20)
        }
        .foregroundStyle(.white)
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .padding(.bottom, 10)

//        .background(Color.sy)
    } //: content

    var divider: some View {
        Divider()
            .background(Color.white.blendMode(.overlay))
    }
}

#Preview {
    ContentView()
}
