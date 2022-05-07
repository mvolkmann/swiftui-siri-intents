import SwiftUI
import Intents

struct ContentView: View {
    let colors: [Color] = [.red, .green, .blue]
    
    @State var bgColor: Color = .red
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                ForEach(colors, id: \.self) { color in
                    //TODO: Try to trigger these buttons with Siri shortcuts!
                    Button(color.description) {
                        setBackground(color)
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
    
    func setBackground(_ color: Color) {
        print("ContentView.setBackground: color = \(color)")
        let intent = SetBackgroundColorIntent()
        //TODO: Need to convert Color to ColorEnum.
        intent.color = ColorEnum.blue
        let interaction = INInteraction(intent: intent, response: nil)
        interaction.donate { error in
            if let error = error {
                print("error donating intent: \(String(describing: error))")
            } else {
                print("successfully donated intent")
            }
        }
        
        bgColor = color
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

