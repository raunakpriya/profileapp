import SwiftUI

struct Quote : Codable {
    var quote_id: Int
    var quote: String
    var author: String
    var series: String
}

struct MusicView: View {
    
    @State private var quotes = [Quote]()
    
    var body: some View {
        
        NavigationStack {
            List(quotes, id: \.quote_id) { quote in
                    VStack(alignment: .leading) {
                        Text(quote.author)
                            .font(.headline)
                            .foregroundColor(Color("spotify"))
                        Text(quote.quote)
                            .font(.body)
                    }
                }
                .navigationTitle("Quotes")
                
                .task {
                    await fetchData()
            }
        }
        
    }
    
    func fetchData() async {
        //create url
        guard let url = URL(string: "https://www.breakingbadapi.com/api/quotes") else {
            print("This URL does not work")
            return
        }
        //fetch data from url
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            //decode data
            if let decodedData = try? JSONDecoder().decode([Quote].self, from: data) {
                quotes = decodedData
            }
            
            } catch {
                print("Data not coming!")
        }
        
    }
}

struct MusicView_Previews: PreviewProvider {
    static var previews: some View {
        MusicView()
    }
}

