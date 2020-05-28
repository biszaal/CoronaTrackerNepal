import Foundation

struct GraphData: Codable, Identifiable
{
    
    let id = UUID()
    var date: String
    var totalCases: Int
    var newCases: Int
    var totalRecoveries: Int
    var newRecoveries: Int
    var totalDeaths: Int
    var newDeaths: Int
    
}
