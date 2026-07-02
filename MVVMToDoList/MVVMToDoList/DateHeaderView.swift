//
//  DataHeaderView.swift
//  MVVMToDoList
//
//  Created by Cauê Carneiro on 06/11/25.
//

import SwiftUI

struct DateHeaderView: View {
    var body: some View {
        ZStack {
            VStack {
                nameHeaderTextView()
            }
        }
    }
    
    private func nameHeaderTextView() -> some View {
        
        HStack {
            
            VStack(alignment: .listRowSeparatorLeading, spacing: 0) {
                Text("Olá Cauê")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .padding(4)
                
                Text("Como você está hoje?")
                    .font(.caption)
                    .fontWeight(.light)
                    .foregroundColor(.black)
                    .padding(4)
            }
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Text(dateManager.selectedDate.monthToString())
                    .font(.system(size: 10))
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                
                Button {
                    whithAnimation(.linear(duration: 0.1)) {
                        dateManager.selectToday()
                    }
                } label: {
                    Text("Hoje")
                        .font(system(size: 16))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(4)
                        .background(.black)
                        .cornerRadius(4)
                }
            }
        }
    
}

#Preview{
    DateHeaderView()
}
