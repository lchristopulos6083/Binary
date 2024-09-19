//
//  ContentView.swift
//  Binary
//
//  Created by Luke R. Christopulos on 9/17/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var baseNumber: Int = 0
        @State private var baseNumberString: String = "0"
        var body: some View {
            VStack {
                TextField("Enter a number", text: $baseNumberString)
                    .keyboardType(.numberPad)
                    .onChange(of: baseNumberString) { newValue in
                        if let newNumber = Int(newValue) {
                            baseNumber = newNumber
                        } else {
                            baseNumber = 0
                        }
                    }
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Text("Base Number: \(baseNumber)")
                    .padding()
            }
            .padding()
            .onAppear {
                baseNumberString = "\(baseNumber)"
            }
        }
    }

    #Preview {
        ContentView()
    }
