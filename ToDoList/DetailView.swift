//
//  DetailView.swift
//  ToDoList
//
//  Created by Leo  on 12.01.24.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) var dismiss
    
    var passedValue: String
    
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("You are awesome!\nAnd you passed over the value \(passedValue)")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button("Back") {
                dismiss()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    DetailView(passedValue: "Item 1")
}
