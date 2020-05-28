import SwiftUI


class FetchHospitalData: ObservableObject
{
    
    
    func fetchData (completionHandler: @escaping ([HospitalData]) -> ())
    {
        
        guard let url = URL(string: "https://nepalcorona.info/api/v1/hospitals") else
        {
            return
            
        }
        
        URLSession.shared.dataTask(with: url)
        { (data, response, err) in
            
            guard let data = data else
            {
                return
                
            }
            
            do {
                
                let fetch = try JSONDecoder().decode(HospitalData.self, from: data)
                
                DispatchQueue.main.async
                    {
                        completionHandler([fetch])
                }
                
            }
                
            catch {
                print(error)
            }
        }
        .resume()
    }
    
}


