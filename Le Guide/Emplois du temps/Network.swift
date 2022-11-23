//Network.swift

import SwiftUI

class Network: ObservableObject {
    @Published var edts: [Edt] = []
    
    func getEdts() {
        guard let url = URL(string: "https://api-guide.quentin-honnart.fr/api/cal/MMI1A1") else { fatalError("Missing URL") }
        
        let urlRequest = URLRequest(url: url)
        
    }
}

