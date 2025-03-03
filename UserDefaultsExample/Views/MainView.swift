//
//  MainView.swift
//  UserDefaultsExample
//
//  Created by Santiago Moreno on 27/01/25.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel: MainViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Nickname")
            TextField("P.ej: @espaciotiago",
                      text: $viewModel.nickname)
                .padding(8)
                .border(.bar)
            VStack(alignment: .center, spacing: 32) {
                HStack {
                    Button {
                        viewModel.deleteNickname()
                    } label: {
                        Text("Eliminar")
                            .foregroundStyle(viewModel.canDelete ? .red : .gray)
                    }
                    .disabled(!viewModel.canDelete)
                    Spacer().frame(width: 42)
                    Button("Guardar") {
                        viewModel.setNickname()
                    }.disabled(viewModel.nickname.isEmpty)
                }.frame(maxWidth: .infinity)
            }
        }
        .onAppear {
            viewModel.getNickname()
        }
        .padding()
    }
}

#Preview {
    MainView(viewModel: MainViewModel())
}
