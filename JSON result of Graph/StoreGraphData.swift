import SwiftUI
import Combine

class StoreGraphData: ObservableObject
{
    
    @Published var graphData: [GraphData] = []
    
    init()
    {
        fetchData()
    }
    
    func fetchData()
    {
        FetchGraphData().fetchData
            { (graphData) in
            self.graphData = graphData
            
        }
    }
    
    
}
