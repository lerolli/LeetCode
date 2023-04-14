class BrowserHistory {
    var currentIndex = 0
    var history: [String] = []

    init(_ homepage: String) {
        history.append(homepage)
    }

    func visit(_ url: String) {
        currentIndex += 1
        history.insert(url, at: currentIndex)
        history.removeLast(history.count - currentIndex - 1)
    }

    func back(_ steps: Int) -> String {
        currentIndex = max(currentIndex - steps, 0)
        return history[currentIndex]
    }

    func forward(_ steps: Int) -> String {
        currentIndex = min(currentIndex + steps, history.count - 1)
        return history[currentIndex]
    }
}

let browserHistory = BrowserHistory("leetcode.com");
browserHistory.visit("google.com");       // You are in "leetcode.com". Visit "google.com"
browserHistory.visit("facebook.com");     // You are in "google.com". Visit "facebook.com"
browserHistory.visit("youtube.com");      // You are in "facebook.com". Visit "youtube.com"
browserHistory.back(1);                   // You are in "youtube.com", move back to "facebook.com" return "facebook.com"
browserHistory.back(1);                   // You are in "facebook.com", move back to "google.com" return "google.com"
browserHistory.forward(1);                // You are in "google.com", move forward to "facebook.com" return "facebook.com"
browserHistory.visit("linkedin.com");     // You are in "facebook.com". Visit "linkedin.com"
browserHistory.forward(2);                // You are in "linkedin.com", you cannot move forward any steps.
browserHistory.back(2);                   // You are in "linkedin.com", move back two steps to "facebook.com" then to "google.com". return "google.com"
browserHistory.back(7);                   // You are in "google.com", you can move back only one step to "leetcode.com". return "leetcode.com"
