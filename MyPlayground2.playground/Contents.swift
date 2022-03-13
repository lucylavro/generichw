import UIKit
//1-2
enum NumberError: Error {
 
    case badRequest // 400
    case notFound // 401
    case internalServError // 500
 
}

var badRequest: Bool = true
var notFound: Bool = false
var internalServError: Bool = false


func showError() throws {
if badRequest { throw NumberError.badRequest }
if notFound { throw NumberError.notFound}
if internalServError { throw NumberError.internalServError } }

do {
    try showError()
} catch NumberError.badRequest {
    print("400 Неправильный, некорректный запрос")
} catch NumberError.notFound{
    print("401 Не найдено")
} catch  NumberError.internalServError {
    print("500 Внутренняя ошибка сервера")
}

//3
var string1 = "Hello"
var int1 = 2
func paramValue <T: Equatable, U: Equatable> (param: T, param2: U){
    let type1 = type(of: param)
    let type2 = type(of: param2)

    let general1 = "\(type1)"
    let general2 = "\(type2)"
    
    if general1 == general2 {
        print("Yes")
    }else {
        print("No")
    }
}

paramValue(param: string1, param2: int1)

//5
var first = 1
var second = 2


func yesNo <T: Equatable> (a: T, b: T) {
    if a == b {
        print("Yes")
    }else {
        print("No")
    }
}

yesNo(a: first, b: second)



