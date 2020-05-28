import SwiftUI


class FetchCovidData: ObservableObject
{
    
    
    func fetchData (completionHandler: @escaping ([CoronaData]) -> ())
    {
        
        guard let url = URL(string: "https://nepalcorona.info/api/v1/data/nepal") else
        {
            return
            
        }
        
        URLSession.shared.dataTask(with: url)
        { (data, response, err) in
            
            guard let data = data else
            {
                return
                
            }
            
            do
            {
                
                let fetch = try JSONDecoder().decode(CoronaData.self, from: data)
                
                DispatchQueue.main.async
                    {
                    completionHandler([fetch])
                }
                
            }
                
            catch
            {
                print(error)
            }
        }
        .resume()
    }
    
}


