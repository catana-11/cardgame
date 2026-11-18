import SwiftUI

struct ContentView: View {
    
    @State var playerScore = 0
    @State var cpuScore = 0
    @State var playerCard = "card3"
    @State var cpuCard = "card5"
    
    var body: some View {
        
        ZStack{
            
            Image("background-cloth")
            
            VStack(spacing: 30) {
                
                Image("logo")
                
                HStack(spacing: 30){
                    Image(playerCard)
                    Image(cpuCard)
                }
                                
                Button {
                    dealCards()
                
                } label: {
                    Image("button")
                }
                
                HStack(spacing: 30){
                    
                    VStack{
                        Text("Player").font(.headline)
                        Text(String(playerScore)).font(.largeTitle)
                    }
                    
                    VStack{
                        Text("CPU").font(.headline)
                        Text(String(cpuScore)).font(.largeTitle )
                    }
                    
                }.foregroundStyle(.white)
                
            }
            .padding()
            
        }

    }
    
    func dealCards(){
        print("function called")
        
        var randomPlayerCard = Int.random(in: 2...14)
        var randomCpuCard = Int.random(in: 2...14)
        
        playerCard = "card" + String(randomPlayerCard)
        cpuCard = "card" + String(randomCpuCard)
        
        if randomPlayerCard > randomCpuCard{
            playerScore += 1
        }
        else if randomCpuCard > randomPlayerCard{
            cpuScore += 1
        }

    }
}

#Preview {
    ContentView()
}
