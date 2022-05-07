//
//  NetworkManager.swift
//  final hack
//
//  Created by Andrew Jae Hahn on 5/5/22.
//

import Foundation
import Alamofire

class NetworkManager {

    static let host = "http://34.130.113.123"

    static func registerAccount(completion: @escaping ([User]) -> Void) {
        let endpoint = "\(host)/register/"
        let params: [String : String] = [
            "username":"ericois",
            "password": "ihatecs",
            "leader": "0",
            "tasks_completed": "0"
        ]
        AF.request(endpoint, method: .post, parameters: params).validate().responseData { response in
            switch (response.result) {
            case .success(let data):
                let jsonDecoder = JSONDecoder()
                if let userResponse = try? jsonDecoder.decode([User].self, from: data) {
                    completion(userResponse)
                } else {
                    print("Failed to Decode")
                }
                print(data)
            case .failure(let error):
                //do code
                print(error.localizedDescription)
            }

        }
    }

    static func logIn(id: String, completion: @escaping ([User]) -> Void) {
        let endpoint = "\(host)/login/"
        let params: [String : String] = [
            "key": "value"
        ]
        AF.request(endpoint, method: .get).validate().responseData { response in
            // process response
            switch (response.result) {
            case .success(let data):
                //do code
                let jsonDecoder = JSONDecoder()
                if let userResponse = try? jsonDecoder.decode([User].self, from: data) {
                    completion(userResponse)
                } else {
                    print("Failed to Decode")
                }
            case .failure(let error):
                //do code
                print(error.localizedDescription)
            }

        }
    }

    static func secretMessage(title: String, body: String, poster: String, completion: @escaping ([User]) -> Void) {
        let endpoint = "\(host)/secret/"
        let params: [String : String] = [
            "key": "value"
        ]
        AF.request(endpoint, method: .get).validate().responseData { response in
            // process response
            switch (response.result) {
            case .success(let data):
                //do code
                let jsonDecoder = JSONDecoder()
                if let userResponse = try? jsonDecoder.decode([User].self, from: data) {
                    completion(userResponse)
                } else {
                    print("Failed to Decode")
                }
                print(data)
            case .failure(let error):
                //do code
                print(error.localizedDescription)
            }

        }
    }

    static func getAllUsers(id: String, body: String, poster: String, completion: @escaping ([User]) -> Void) {
        let endpoint = "\(host)//api/user//"
        let params: [String : String] = [
            "key": "value"
        ]
        AF.request(endpoint, method: .get).validate().responseData { response in
            // process response
            switch (response.result) {
            case .success(let data):
                //do code
                let jsonDecoder = JSONDecoder()
                if let userResponse = try? jsonDecoder.decode([User].self, from: data) {
                    completion(userResponse)
                } else {
                    print("Failed to Decode")
                }
                print(data)
            case .failure(let error):
                //do code
                print(error.localizedDescription)
            }

        }
    }

    static func getUser(id: String, poster: String, completion: @escaping ([User]) -> Void) {
        let endpoint = "/api/user/\(host)"
        let params: [String : String] = [
            "key": "value"
        ]
        AF.request(endpoint, method: .get).validate().responseData { response in
            // process response
            switch (response.result) {
            case .success(let data):
                //do code
                let jsonDecoder = JSONDecoder()
                if let userResponse = try? jsonDecoder.decode([User].self, from: data) {
                    completion(userResponse)
                } else {
                    print("Failed to Decode")
                }
                print(data)
            case .failure(let error):
                //do code
                print(error.localizedDescription)
            }

        }
    }

    static func createUser(id: String, poster: String, completion: @escaping ([User]) -> Void) {
        let endpoint = "\(host)/api/user/"
        let params: [String : String] = [
            "key": "value"
        ]
        AF.request(endpoint, method: .get).validate().responseData { response in
            // process response
            switch (response.result) {
            case .success(let data):
                //do code
                let jsonDecoder = JSONDecoder()
                if let userResponse = try? jsonDecoder.decode([User].self, from: data) {
                    completion(userResponse)
                } else {
                    print("Failed to Decode")
                }
                print(data)
            case .failure(let error):
                //do code
                print(error.localizedDescription)
            }

        }
    }

    static func joinPod(id: String, poster: String, completion: @escaping ([User]) -> Void) {
        let endpoint = "/api/user/\(host)"
        let params: [String : String] = [
            "key": "value"
        ]
        AF.request(endpoint, method: .post).validate().responseData { response in
            // process response
            switch (response.result) {
            case .success(let data):
                //do code
                let jsonDecoder = JSONDecoder()
                if let userResponse = try? jsonDecoder.decode([User].self, from: data) {
                    completion(userResponse)
                } else {
                    print("Failed to Decode")
                }
                print(data)
            case .failure(let error):
                //do code
                print(error.localizedDescription)
            }

        }
    }

    static func userTasksCompleted(id: String, poster: String, completion: @escaping ([User]) -> Void) {
        let endpoint = "/api/user/taskscompleted/\(host)"
        let params: [String : String] = [
            "key": "value"
        ]
        AF.request(endpoint, method: .get).validate().responseData { response in
            // process response
            switch (response.result) {
            case .success(let data):
                //do code
                let jsonDecoder = JSONDecoder()
                if let userResponse = try? jsonDecoder.decode([User].self, from: data) {
                    completion(userResponse)
                } else {
                    print("Failed to Decode")
                }
                print(data)
            case .failure(let error):
                //do code
                print(error.localizedDescription)
            }

        }
    }

    static func podJoinCode(id: String, poster: String, completion: @escaping ([User]) -> Void) {
        let endpoint = "/api/pod/joincode/\(host)"
        let params: [String : String] = [
            "key": "value"
        ]
        AF.request(endpoint, method: .get).validate().responseData { response in
            // process response
            switch (response.result) {
            case .success(let data):
                //do code
                let jsonDecoder = JSONDecoder()
                if let userResponse = try? jsonDecoder.decode([User].self, from: data) {
                    completion(userResponse)
                } else {
                    print("Failed to Decode")
                }
                print(data)
            case .failure(let error):
                //do code
                print(error.localizedDescription)
            }

        }
    }

    static func createPod(id: String, poster: String, completion: @escaping ([User]) -> Void) {
        let endpoint = "/api/pod/\(host)"
        let params: [String : String] = [
            "key": "value"
        ]
        AF.request(endpoint, method: .get).validate().responseData { response in
            // process response
            switch (response.result) {
            case .success(let data):
                //do code
                let jsonDecoder = JSONDecoder()
                if let userResponse = try? jsonDecoder.decode([User].self, from: data) {
                    completion(userResponse)
                } else {
                    print("Failed to Decode")
                }
                print(data)
            case .failure(let error):
                //do code
                print(error.localizedDescription)
            }

        }
    }

    static func getAllUsers(id: String, poster: String, completion: @escaping ([User]) -> Void) {
        let endpoint = "/api/pod/alluser/\(host)"
        let params: [String : String] = [
            "key": "value"
        ]
        AF.request(endpoint, method: .get).validate().responseData { response in
            // process response
            switch (response.result) {
            case .success(let data):
                //do code
                let jsonDecoder = JSONDecoder()
                if let userResponse = try? jsonDecoder.decode([User].self, from: data) {
                    completion(userResponse)
                } else {
                    print("Failed to Decode")
                }
                print(data)
            case .failure(let error):
                //do code
                print(error.localizedDescription)
            }

        }
    }

    static func getPodTotalTasks(id: String, poster: String, completion: @escaping ([User]) -> Void) {
        let endpoint = "/api/pod/totaltasks/\(host)"
        AF.request(endpoint, method: .get).validate().responseData { response in
            switch (response.result) {
            case .success(let data):
                let jsonDecoder = JSONDecoder()
                if let userResponse = try? jsonDecoder.decode([User].self, from: data) {
                    completion(userResponse)
                } else {
                    print("Failed to Decode")
                }
                print(data)
            case .failure(let error):
                print(error.localizedDescription)
            }

        }
    }

    static func getPodTasksCompleted(id: String, poster: String, completion: @escaping ([User]) -> Void) {
        let endpoint = "/api/pod/taskscompleted/\(host)"
        let params: [String : String] = [
            "key": "value"
        ]
        AF.request(endpoint, method: .get).validate().responseData { response in
            // process response
            switch (response.result) {
            case .success(let data):
                //do code
                let jsonDecoder = JSONDecoder()
                if let userResponse = try? jsonDecoder.decode([User].self, from: data) {
                    completion(userResponse)
                } else {
                    print("Failed to Decode")
                }
                print(data)
            case .failure(let error):
                //do code
                print(error.localizedDescription)
            }

        }
    }

    static func getPodTasksIncomplete(id: String, poster: String, completion: @escaping ([User]) -> Void) {
        let endpoint = "/api/pod/tasksincomplete/\(host)"
        let params: [String : String] = [
            "key": "value"
        ]
        AF.request(endpoint, method: .get).validate().responseData { response in
            // process response
            switch (response.result) {
            case .success(let data):
                //do code
                let jsonDecoder = JSONDecoder()
                if let userResponse = try? jsonDecoder.decode([User].self, from: data) {
                    completion(userResponse)
                } else {
                    print("Failed to Decode")
                }
                print(data)
            case .failure(let error):
                //do code
                print(error.localizedDescription)
            }

        }
    }

    static func createTask(id: String, poster: String, completion: @escaping ([User]) -> Void) {
        let endpoint = "/api/task/\(host)"
        let params: [String : String] = [
            "key": "value"
        ]
        AF.request(endpoint, method: .get).validate().responseData { response in
            // process response
            switch (response.result) {
            case .success(let data):
                //do code
                let jsonDecoder = JSONDecoder()
                if let userResponse = try? jsonDecoder.decode([User].self, from: data) {
                    completion(userResponse)
                } else {
                    print("Failed to Decode")
                }
                print(data)
            case .failure(let error):
                //do code
                print(error.localizedDescription)
            }

        }
    }

    static func getAllUsers(id: String, poster: String, completion: @escaping ([User]) -> Void) {
        let endpoint = "/api/pod/alluser/\(host)"
        let params: [String : String] = [
            "key": "value"
        ]
        AF.request(endpoint, method: .get).validate().responseData { response in
            // process response
            switch (response.result) {
            case .success(let data):
                //do code
                let jsonDecoder = JSONDecoder()
                if let userResponse = try? jsonDecoder.decode([User].self, from: data) {
                    completion(userResponse)
                } else {
                    print("Failed to Decode")
                }
                print(data)
            case .failure(let error):
                //do code
                print(error.localizedDescription)
            }

        }
    }

    // Extra Credit

    static func getPostersPosts(poster: String, completion: Any) {

    }

}
