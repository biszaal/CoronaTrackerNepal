import SwiftUI


class FetchNewsData: ObservableObject
{
    
    
    func fetchData (completionHandler: @escaping ([NewsData]) -> ())
    {
        
        guard let url = URL(string: "https://nepalcorona.info/api/v1/news") else
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
                
                let fetch = try JSONDecoder().decode(NewsData.self, from: data)
                
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


