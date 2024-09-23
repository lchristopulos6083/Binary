import SwiftUI

struct ContentView: View {
    @State private var baseNumber: String = ""
    @State private var binaryRepresentation: String = ""
    @State private var hexRepresentation: String = ""
    var body: some View {
            ZStack{
                RoundedRectangle(cornerRadius: 65)
                    .stroke(Color.cyan, lineWidth: 15)
                    .ignoresSafeArea()
                    .background(
                        RoundedRectangle(cornerRadius: 60)
                            .fill(Color.clear)
                            .ignoresSafeArea()
                        
                    )
                    .shadow(color: Color.blue.opacity(1), radius: 15, x: 0, y: 0)
                    .ignoresSafeArea()
                
                VStack{
                HStack{
                    VStack{
                        Button(action: {
                            if let number = Int(baseNumber) {
                                binaryRepresentation = convertToBinary(baseNumber: number)
                            }
                        })
                        {
                            Text("Convert to Binary")
                        }
                        .bold()
                        Text("\(binaryRepresentation)")
                            .frame(width: 100)
                    }
                    .padding()
                    VStack{
                        Button(action: {
                            if let number = Int(baseNumber) {
                                hexRepresentation = convertToHex(baseNumber: number)
                            }
                        })
                        {
                            Text("Convert to Hex")
                        }
                        .bold()
                        Text("\(hexRepresentation)")
                    }
                    .padding()
                }
                Spacer()
                TextField("Enter a number", text: $baseNumber)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .frame(width: 375)
                    .bold()
                    .shadow(color: Color.blue.opacity(0.7), radius: 5, x: 0, y: 0)
                
                    
            }
        }
    }
}

func convertToBinary(baseNumber: Int) -> String {
    return String(baseNumber, radix: 2)
}

func convertToHex(baseNumber: Int) -> String {
    return String(baseNumber, radix: 16)
}

#Preview {
    ContentView()
}
