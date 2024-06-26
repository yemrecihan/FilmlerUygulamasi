import Foundation
import RxSwift
import Alamofire

class FilmlerDaoRepository {
    var filmlerListesi = BehaviorSubject<[Filmler]>(value: [Filmler]())
    
    func filmleriYukle() {
     
        AF.request("http://kasimadalan.pe.hu/filmler_yeni/tum_filmler.php", method: .get).response { response in
            if let data = response.data {
                do {
                    let cevap = try JSONDecoder().decode(FilmlerResponse.self,from:data)
                    if let liste = cevap.filmler{
                        self.filmlerListesi.onNext(liste)
                    }
                }catch{
                    print(error.localizedDescription)
                }
            }
            
        }
    }
}
