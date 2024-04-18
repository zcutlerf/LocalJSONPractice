import Foundation

struct Company: Decodable {
    // Look in the Company.json file.
    
    // Based on the data structure there, define
    // properties of Company that match the names
    // and types of the json.
    var name: String
    var year_founded: Int
    var number_of_employees: Int
    var customer_satisfication_percentage: Float
    var address: String
}
