import SwiftUI

struct ContentView: View {
    //MARK: Stretch #2 - Part II
    let coins: [Coin] = [
            Coin(name: "Bitcoin", value: 8),
            Coin(name: "Ethereum", value: 2),
            // Add more coins as needed
        ]
    
    
    
    var body: some View {
        HeaderView()
        Spacer()
        Text("MVP Works")
        //MARK: MVP - Part II
        Text("MVP Works")
                       .modifier(MyCustomModifier())

        
        
        
        
        //MARK: Stretch #1 - Part II
        
        Stretch1View()
                       .frame(width: 300, height: 200)
        
        
        
        //MARK: Stretch #2 - Part III
        List(coins) { coin in
                        Text("\(coin.name): $\(coin.value)")
                    }
        
        
        
        
        //MARK: Stretch #3 - Part II
        TrapezoidShape()
                        .fill(Color.blue) // Customize the fill color if needed
                        .frame(width: 200, height: 100) // Adjust size as needed

                    // Other views...
          
        
        
        
        Spacer()
        FooterView()
    }
}
