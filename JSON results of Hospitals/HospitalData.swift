import Foundation

struct HospitalData: Codable, Identifiable
{
   
   let id = UUID()
   let data: [EachHospital]
}

struct EachHospital: Codable, Identifiable
{
    
    let id = UUID()
    var name: String
    var location: HospitalLocation
    
}

struct HospitalLocation: Codable
{
    
    var coordinates: [Double]
}
