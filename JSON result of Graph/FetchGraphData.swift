import SwiftUI


class FetchGraphData: ObservableObject
{
    
    
    func fetchData (completionHandler: @escaping ([GraphData]) -> ())
    {
        
        guard let url = URL(string: "https://data.nepalcorona.info/api/v1/covid/timeline") else
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
                
                let fetch = try JSONDecoder().decode([GraphData].self, from: data)
                
                DispatchQueue.main.async
                    {
                    completionHandler(fetch)
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
