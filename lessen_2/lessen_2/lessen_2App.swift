import Foundation
import SwiftUI
struct Country: Decodable, Identifiable {
  let id: Int
  let name: String
}



struct ContentView: View {

  @State var countries: [Country] = []

  var body: some View {
    List(countries) { country in
      Text(country.name)
    }
    .overlay {
      if countries.isEmpty {
        ProgressView()
      }
    }
    .task {
      do {
        countries = try await supabase.from("countries").select().execute().value
      } catch {
        dump(error)
      }
    }
  }
}
