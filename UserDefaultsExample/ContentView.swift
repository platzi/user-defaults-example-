//
//  ContentView.swift
//  UserDefaultsExample
//
//  Created by Santiago Moreno on 27/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MainView(viewModel: MainViewModel())
    }
}

#Preview {
    ContentView()
}
