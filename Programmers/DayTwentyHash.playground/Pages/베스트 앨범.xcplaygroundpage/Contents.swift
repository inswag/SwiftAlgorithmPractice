import UIKit

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var songs: [String: [Song]] = [:]
    
    // 장르와 곡을 묶기
    genres.enumerated().forEach {
        let song =  Song(genre: $0.element,
                         uniqueNumber: $0.offset,
                         playCount: plays[$0.offset])
        
        let genreCount = genres.filter { $0 == song.genre }
        
        if songs["\(song.genre)"] == nil {
            songs["\(song.genre)"] = [song]
        } else {
            songs["\(song.genre)"]?.append(song)
        }
    }
    
    // 속한 노래가 많이 재생된 장르가 앞에 오도록 정렬
    let sortedGenres = songs.sorted {
        let sumOne = $0.value.map { $0.playCount }.reduce(0, +)
        let sumTwo = $1.value.map { $0.playCount }.reduce(0, +)
        return sumOne > sumTwo
    }
    
    // 장르 내에서 많이 재생된 노래를 먼저 수록
    var sortedByPlayCount: [[Song]] = []
    
    for genre in sortedGenres {
        let sortedSongs = genre.value.sorted {
            // 장르 내에서 재생 횟수가 같은 노래 중에서는 고유 번호가 낮은 노래를 먼저 수록합니다.
            if $0.playCount == $1.playCount {
                return $0.uniqueNumber < $1.uniqueNumber
            } else {
                return $0.playCount > $1.playCount
            }
        }
        
        sortedByPlayCount.append(sortedSongs)
    }
        
    var filteredSongs: [[Song]] = []
    
    // 두 개씩 모아
    sortedByPlayCount.forEach {
        filteredSongs.append($0
            .enumerated()
            .filter { $0.offset < 2 }
            .map { $0.element })
    }

    // 노래의 고유 번호
    let result = filteredSongs
        .flatMap { $0 }
        .map { $0.uniqueNumber }
    
    return result
}

struct Song {
    let genre: String
    let uniqueNumber: Int
    let playCount: Int
    
    init(genre: String, uniqueNumber: Int, playCount: Int) {
        self.genre = genre
        self.uniqueNumber = uniqueNumber
        self.playCount = playCount
    }
}

solution(["classic", "pop", "classic", "classic", "pop"]    , [500, 600, 150, 800, 2500]    )
