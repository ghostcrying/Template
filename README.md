# Template
### Template

##### 针对VIPER的Xcode模板文件File类别

> 目前添加本文件夹之后, 文件夹的option为reference, 并没有勾选copy属性, 因此需要移除reference, 手动添加




#### 使用

##### 导入路径: xcode右键点击进入Contents

```
* xcode 13 +
/Developer/Library/Xcode/Templates/File Templates/MultiPlatform/Source 
```



### 功能

- Files
  - MVP.xctemplate
    - OC语言的MVP模板，主动增加了Router管理 （其实就是简化版的VIPER）
  
  - VIPER.xctemplate
    - Swift语言的VIPER模板
  
- Single
  - 单个VIPER文件模板



### Swift VIPER

##### 协议拓展

> 针对protocol, 需要主动extension进行方法的实现作为可选功能

```
protocol ViewControllerPresenterProtocol: AnyObject {
    
    func viewDidLoad()
    func viewWillAppear(_ animated: Bool)
    func viewDidAppear(_ animated: Bool)
    func viewWillDisappear(_ animated: Bool)
    func viewDidDisappear(_ animated: Bool)
}
extension ViewControllerPresenterProtocol {
    
    func viewDidLoad() { }
    func viewWillAppear(_ animated: Bool) { }
    func viewDidAppear(_ animated: Bool) { }
    func viewWillDisappear(_ animated: Bool) { }
    func viewDidDisappear(_ animated: Bool) { }
}
```



##### 网络请求

> 使用Moya + ObjectMapper进行请求与解析

###### 简单拓展

```
import Moya
import Foundation
import ObjectMapper

/// 请求直接将解析类别传入, 进行内部解包即可
extension Moya.MoyaProviderType {
    @discardableResult
    func request<T: Mappable>(_ target: Target,
                              mapType: T.Type,
                              progress: Moya.ProgressBlock? = .none,
                              callbackQueue: DispatchQueue = .main,
                              completion: @escaping (Swift.Result<ResponseBox<T>, MoyaError>) -> Void) -> Moya.Cancellable {
        request(target, callbackQueue: callbackQueue, progress: progress) { (result) in
            switch result {
            case .failure(let error):
                completion(.failure(error))
            case .success(let response):
                let value = response.map(mapType: mapType)
                switch value {
                case .failure(let error): completion(.failure(error))
                case .success(let value): completion(.success(ResponseBox<T>(response: response, value: value)))
                }
            }
        }
    }
}

fileprivate let NormalErrorMessage = "出错了，请稍后重试"
fileprivate let ErrorDomain: String = "com.putao.extension.moya.error.domain"

struct ResponseBox<T> {
    /// 原始数据
    let response: Moya.Response
    /// 已解析数据
    let value: T
}

extension Moya.Response {
    /// 解析返回结果, 可以进行拓展: 解析数组...
    func map<T: Mappable>(mapType: T.Type) -> Result<T, MoyaError> {
        do {
            let json = try mapJSON()
            guard let value = Mapper<T>().map(JSONObject: json) else {
                return .failure(MoyaError.jsonMapping(self))
            }
            return .success(value)
        } catch {
            let userInfo: [String : Any] = ["statusCode" : statusCode, NSLocalizedDescriptionKey: NormalErrorMessage + "(\(statusCode))"]
            let customError = NSError(domain: ErrorDomain, code: statusCode, userInfo: userInfo)
            return .failure(.underlying(customError, self))
        }
    }
}
```



