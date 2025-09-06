import SwiftUI

class StreakManager: ObservableObject {
    @AppStorage("streakCount") var streakCount: Int = 0
    @AppStorage("lastActionDate") var lastActionDate: String = ""
    
    @Published var todayStreakUpdated = false

    let calendar = Calendar.current

    func updateStreakIfNeeded() {
        let today = calendar.startOfDay(for: Date())

        if let lastDate = getLastDate() {
            let difference = calendar.dateComponents([.day], from: lastDate, to: today).day ?? 0

            if difference == 1 {
                // Continued streak
                streakCount += 1
                lastActionDate = formatDate(date: today)
                todayStreakUpdated = true
            } else if difference > 1 {
                // Missed a day, reset streak
                streakCount = 1
                lastActionDate = formatDate(date: today)
                todayStreakUpdated = true
            } else if difference == 0 {
                // Already updated today
                todayStreakUpdated = true
            }
        } else {
            // First time
            streakCount = 1
            lastActionDate = formatDate(date: today)
            todayStreakUpdated = true
        }
    }

    private func getLastDate() -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.date(from: lastActionDate)
    }

    private func formatDate(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: date)
    }
}

