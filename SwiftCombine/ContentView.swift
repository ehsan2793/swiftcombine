//
//  ContentView.swift
//  SwiftCombine
//
//  Created by Ehsan Rahimi on 5/19/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                Text("Hello, world!")
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .background(AccountBackground())
            .toolbar(.hidden)
            .padding()
        } //: NAVIGATION
    }
}

#Preview {
    ContentView()
}
