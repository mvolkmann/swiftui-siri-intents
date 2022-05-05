import SwiftUI

struct ContentView: View {
    @State var bgColor: Color = .red
    let colors: [Color] = [.red, .green, .blue]
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                ForEach(colors, id: \.self) { color in
                    //TODO: Try to trigger these buttons with Siri shortcuts!
                    Button(color.description) {
                        bgColor = color
                    }
                    .background(.white)
                    .buttonStyle(.bordered)
                    .foregroundColor(color)
                }
            }
            
            Text("Hello, World!").padding()
            
            Spacer()
        }
        .font(.system(size: 30))
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(bgColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

