import UIKit
import Foundation


var names = [String]()
names.append("Amy")
func pairs(k: Int, arr: [Int]) -> Int {
    let aa = arr.sorted()
    var pairs = 0
    for i in 0..<aa.count {
        for j in i..<aa.count {
            if j - i == k {
                pairs += 1
            }
        }
    }
   return pairs
}
let example1 = names.popLast()
let example2 = names.popLast()
// Complete the minimumLoss function below.
func minimumLoss(price: [Int]) -> Int {
    var min = price.max()!
    for i in 0..<price.count {
        for j in  i..<price.count {
            if price[i] > price[j] {
                let mm = price[i]-price[j]
                if mm < min {
                    min = mm
                }
            }
        }
    }
    return min
    
}
minimumLoss(price: [20,7,8,2,5])
func missingNumbers(arr: [Int], brr: [Int]) -> [Int] {
    var missing = [Int]()
    for v in brr {
        if !missing.contains(v) {
            let bcount = brr.filter{$0 == v}.count
            let acount = arr.filter{$0 == v}.count
            if bcount != acount {
                missing.append(v)
            }
        }
    }
    return missing.sorted()
    
}

// Complete the gemstones function below.
func gemstones(arr: [String]) -> Int {
    print(Array(arr.map{($0)}))
    return 1
}
gemstones(arr: ["abcdde","baccd","eeabg"])
// Complete the funnyString function below.
func funnyString(s: String) -> String {
    let map = Array(s.utf8).map{Int($0)}
    let r = Array(map.reversed())
    for i in 0..<map.count - 1{
        if abs(r[i+1] - r[i]) != abs(map[i+1] - map[i]) {
            return "Not Funny"
        }
    }
   
    
    return "Funny"
}
funnyString(s: "acxz")
funnyString(s: "bcxz")
// Complete the saveThePrisoner function below.
func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
    let p = s-1
    return  Int(UInt64(p) + UInt64(m % n))
    
}
saveThePrisoner(n: 5, m: 2, s: 1)
saveThePrisoner(n: 5, m: 2, s: 2)
saveThePrisoner(n: 7, m: 19, s: 2)
// Complete the viralAdvertising function below.
func viralAdvertising(n: Int) -> Int {
    var Clikes = 0
    var people = 5
    for _ in 1...n {
        Clikes += people/2
        people = people/2 * 3
        
    }
   return Clikes
    
}
viralAdvertising(n: 5)
viralAdvertising(n: 3)
func gridSearch(G: [String], P: [String]) -> String {
    var matchcount = 0
    for p in P {
      let x =   G.filter{$0.range(of: p) != nil}
        if x.count >= 1 {
            matchcount += 1
        }
    }
    if matchcount == P.count {
        return "YES"
    }
    return "NO"
   
}

gridSearch(G: ["7283455864","6731158619","8988242643","3830589324"], P: ["834","4264"])
func chocolateFeast(n: Int, c: Int, m: Int) -> Int {
    var coc = n/c
    var wra = coc
    while wra >= m {
        wra = wra - m
        wra += 1
        coc += 1
    }
    
    
    return coc
}
chocolateFeast(n: 15, c: 3, m: 2)
func timeInWords(h: Int, m: Int) -> String {
    let minuts = ["o' clock","one minute","two mintes","three minutes","four minutes","five minutes","six minutes","seven minutes","eight minutes","nine minute","ten minutes","eleven minutes","tweleve minutes","thirteen minutes","fourteen mintues","quarter","sixteen mintus","seventeen mintues","eighteen minutes","nineteen mintues","twenty mintues","twenty one minute","twenty two mintes","twenty three minutes","twenty four minutes","twenty five minutes","twenty six minutes","twenty seven minutes","twenty eight minutes","twenty nine minutes","half"]
    
    let hours = ["tweleve","one","two","three","four","five","six","seven","eight","nine","ten","eleven","tweleve"]
    if m == 0 {
        return  hours[h] + " " + minuts[0]
    }
    else if m <= 30 {
         return  minuts[m] + " past " +  hours[h]
    } else {
         return  minuts[60 - m] +  " to " + hours[h+1]
    }
}
timeInWords(h: 5, m: 47)
timeInWords(h: 3, m: 00)
timeInWords(h: 7, m: 29)
timeInWords(h: 3, m: 30)
func isValid(s: String) -> String {
    var m:[(String, Int)] = Set(s).map { c in
        return (String(c), s.filter{$0 == c}.count)
        }
    let prevcount = m[0].1
    for k in m {
        if k.1 != prevcount {
            return "NO"
        }
    }
    return "YES" //"NO"
}
isValid(s: "aabbcd")
isValid(s: "abc")
isValid(s: "aabbccddeefghi")

func utopianTree(n: Int) -> Int {
    var height = 0

    for i in 0...n {
        if i % 2 == 0 {
            height += 1
        } else {
            height *= 2
        }
    }
    return height
}
utopianTree(n: 0)


func angryProfessor(k: Int, a: [Int]) -> String {
    let s = a.filter({$0 <= 0})
    print(s)
    if (a.filter {$0 <= 0}.count > k) {
        return "YES"
    }
    return "NO"
}
angryProfessor(k: 3, a: [-1, -3, 4, 2])
angryProfessor(k: 2, a: [0, -1, 2, 1])
func cutTheSticks(arr: [Int]) -> [Int] {
    var sticks = [Int]()
    var arr = arr
    while arr.count > 0 {
        let min = arr.min()!
        sticks.append(arr.count)
        arr = arr.map{$0 - min}.filter{$0 > 0}
        
    }
    return sticks
}
cutTheSticks(arr: [5,4,4,2,2,8])
cutTheSticks(arr: [1,2,3,4,3,3,2,1])

func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    var count = 0
    for v in i...j {
        let rev = Int(String("\(v)".reversed()))!
        if abs(v - rev) % k == 0 {
            count += 1
        }
    }
    return count
    
}
beautifulDays(i: 13, j: 43, k: 3)

beautifulDays(i: 20, j: 23, k: 6)


func stringSimilarity(s: String) -> Int {
    var count = 0
    for i in 0..<s.count {
        let sufix = s.suffix(s.count - i)
        let z = zip(s, sufix)
        for (c1,c2) in z {
           // print(c1,c2)
            if c1 == c2 {
              count += 1
            } else {
                break
            }
        }
    }
    
    return count
}
stringSimilarity(s: "aa")
stringSimilarity(s: "ababaa")

func getTotalX(a: [Int], b: [Int]) -> Int {
    let min = a.max()!
    let max = b.min()!
    let m = a + b
    var count = 0
    let mcount  = m.count
    print(m)
    
    for v in min...max {
        let div = m.filter({ (n) -> Bool in
            if n <= v  { return v % n == 0}
            else { return n % v == 0 }
        })
        if div.count == mcount {
            count += 1
        }
    }
    return count
}
getTotalX(a: [2,6], b: [24,36])


print([2, 6, 24, 36].filter { 6 % $0  == 0})

let d = ["jo":23,"ja":24, "v":34,"l":29]
let x = d.sorted{$0.1<$1.1}.map{$0.0}
print(x)
func customSort(arr: [Int]) -> Void {
    // Write your code here
    var array = [(Int,Int)]()
    for v in Set(arr).sorted() {
        let count = arr.filter({$0 == v}).count
        array.append((v,count))
    }
    //print(array)
    let v = array.sorted { $0.0<$0.0 || $0.1 < $1.1}
    //print(v)
    var num = [Int]()
    for (value,count) in v {
        for _ in 0..<count {
            num.append(value)
        }
    }
    print(num)
}

customSort(arr: [1,3,4,2,2])
func calculateAmount(prices: [Int]) -> Int {
    // Write your code here
    let firstCost = prices[0]
    var d = [Int]()
    var cost = [Int]()
    d.append(firstCost)
    cost.append(firstCost)
    for i in 1..<prices.count-1 {
        d.append(Array(prices[0...i]).min()!)
        if d[i] < prices[i] {
         cost.append(prices[i] - prices[i-1])
        } else {
            cost.append(0)
        }
    }
    print(cost)
    return  cost.reduce(0) { $0 + $1 }
}
calculateAmount(prices: [4,9,2,3,8])
//calculateAmount(prices: [4,9,2,3,8])

func designerPdfViewer(h: [Int], word: String) -> Int {
    let w = 1
    let l = word.count
    var height = 0
    let alphabet = "abcdefghijklmnopqrstuvwxyz".map{String($0)}
    for c in word {
        let index = alphabet.index(of: String(c))!
        if height < h[index] {
            height = h[index]
        }
    }
    return l * w * height
}

let result = designerPdfViewer(h: [1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 7], word: "zabc")
func findDigits(n: Int) -> Int {
    let nDigits = "\(n)".map{Int(String($0))}
    var count = 0
    for  v in nDigits  {
        if let d = v, d != 0,n % d == 0 {
          count += 1
        }
    }
    return count
}

findDigits(n: 1012)
func extraLongFactorials(n: Int) -> Void {
    let f = ["1","1","2","6","24","120","720","5040","40320","362880","3628800","39916800","479001600","6227020800","87178291200","1307674368000","20922789888000","355687428096000","6402373705728000","121645100408832000","2432902008176640000","51090942171709440000","1124000727777607680000","25852016738884976640000","620448401733239439360000","15511210043330985984000000","403291461126605635584000000","10888869450418352160768000000","304888344611713860501504000000","8841761993739701954543616000000","265252859812191058636308480000000","8222838654177922817725562880000000","263130836933693530167218012160000000","8683317618811886495518194401280000000","295232799039604140847618609643520000000","10333147966386144929666651337523200000000","371993326789901217467999448150835200000000","13763753091226345046315979581580902400000000","523022617466601111760007224100074291200000000","20397882081197443358640281739902897356800000000","815915283247897734345611269596115894272000000000","33452526613163807108170062053440751665152000000000","1405006117752879898543142606244511569936384000000000","60415263063373835637355132068513997507264512000000000","2658271574788448768043625811014615890319638528000000000","119622220865480194561963161495657715064383733760000000000","5502622159812088949850305428800254892961651752960000000000","258623241511168180642964355153611979969197632389120000000000","12413915592536072670862289047373375038521486354677760000000000","608281864034267560872252163321295376887552831379210240000000000","30414093201713378043612608166064768844377641568960512000000000000","1551118753287382280224243016469303211063259720016986112000000000000","80658175170943878571660636856403766975289505440883277824000000000000","4274883284060025564298013753389399649690343788366813724672000000000000","230843697339241380472092742683027581083278564571807941132288000000000000","12696403353658275925965100847566516959580321051449436762275840000000000000","710998587804863451854045647463724949736497978881168458687447040000000000000","40526919504877216755680601905432322134980384796226602145184481280000000000000","2350561331282878571829474910515074683828862318181142924420699914240000000000000","138683118545689835737939019720389406345902876772687432540821294940160000000000000","8320987112741390144276341183223364380754172606361245952449277696409600000000000000","507580213877224798800856812176625227226004528988036003099405939480985600000000000000","31469973260387937525653122354950764088012280797258232192163168247821107200000000000000","1982608315404440064116146708361898137544773690227268628106279599612729753600000000000000","126886932185884164103433389335161480802865516174545192198801894375214704230400000000000000","8247650592082470666723170306785496252186258551345437492922123134388955774976000000000000000","544344939077443064003729240247842752644293064388798874532860126869671081148416000000000000000","36471110918188685288249859096605464427167635314049524593701628500267962436943872000000000000000","2480035542436830599600990418569171581047399201355367672371710738018221445712183296000000000000000","171122452428141311372468338881272839092270544893520369393648040923257279754140647424000000000000000","11978571669969891796072783721689098736458938142546425857555362864628009582789845319680000000000000000","850478588567862317521167644239926010288584608120796235886430763388588680378079017697280000000000000000","61234458376886086861524070385274672740778091784697328983823014963978384987221689274204160000000000000000","4470115461512684340891257138125051110076800700282905015819080092370422104067183317016903680000000000000000","330788544151938641225953028221253782145683251820934971170611926835411235700971565459250872320000000000000000","24809140811395398091946477116594033660926243886570122837795894512655842677572867409443815424000000000000000000","1885494701666050254987932260861146558230394535379329335672487982961844043495537923117729972224000000000000000000","145183092028285869634070784086308284983740379224208358846781574688061991349156420080065207861248000000000000000000","11324281178206297831457521158732046228731749579488251990048962825668835325234200766245086213177344000000000000000000","894618213078297528685144171539831652069808216779571907213868063227837990693501860533361810841010176000000000000000000","71569457046263802294811533723186532165584657342365752577109445058227039255480148842668944867280814080000000000000000000","5797126020747367985879734231578109105412357244731625958745865049716390179693892056256184534249745940480000000000000000000","475364333701284174842138206989404946643813294067993328617160934076743994734899148613007131808479167119360000000000000000000","39455239697206586511897471180120610571436503407643446275224357528369751562996629334879591940103770870906880000000000000000000","3314240134565353266999387579130131288000666286242049487118846032383059131291716864129885722968716753156177920000000000000000000","281710411438055027694947944226061159480056634330574206405101912752560026159795933451040286452340924018275123200000000000000000000","24227095383672732381765523203441259715284870552429381750838764496720162249742450276789464634901319465571660595200000000000000000000","2107757298379527717213600518699389595229783738061356212322972511214654115727593174080683423236414793504734471782400000000000000000000","185482642257398439114796845645546284380220968949399346684421580986889562184028199319100141244804501828416633516851200000000000000000000","16507955160908461081216919262453619309839666236496541854913520707833171034378509739399912570787600662729080382999756800000000000000000000","1485715964481761497309522733620825737885569961284688766942216863704985393094065876545992131370884059645617234469978112000000000000000000000","135200152767840296255166568759495142147586866476906677791741734597153670771559994765685283954750449427751168336768008192000000000000000000000","12438414054641307255475324325873553077577991715875414356840239582938137710983519518443046123837041347353107486982656753664000000000000000000000","1156772507081641574759205162306240436214753229576413535186142281213246807121467315215203289516844845303838996289387078090752000000000000000000000","108736615665674308027365285256786601004186803580182872307497374434045199869417927630229109214583415458560865651202385340530688000000000000000000000","10329978488239059262599702099394727095397746340117372869212250571234293987594703124871765375385424468563282236864226607350415360000000000000000000000","991677934870949689209571401541893801158183648651267795444376054838492222809091499987689476037000748982075094738965754305639874560000000000000000000000","96192759682482119853328425949563698712343813919172976158104477319333745612481875498805879175589072651261284189679678167647067832320000000000000000000000","9426890448883247745626185743057242473809693764078951663494238777294707070023223798882976159207729119823605850588608460429412647567360000000000000000000000","933262154439441526816992388562667004907159682643816214685929638952175999932299156089414639761565182862536979208272237582511852109168640000000000000000000000","93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000"]

    print(f[n])
}
extraLongFactorials(n: 45)

let array = [1]
let last15 = array.suffix(2)

func pangrams(s: String) -> String {
    let alphabet = "abcdefghijklmnopqrstuvwxyz".map{String($0)}
    let s = s.replacingOccurrences(of: " ", with: "").lowercased()
    let s1 = Array(Set(s)).sorted().map{String($0)}
    if s1 == alphabet {
         return "pangram"
    } else {
        return "not pangram"
    }
    
}
pangrams(s: "We promptly judged antique ivory buckles for the next prize")
func breakingRecords(scores: [Int]) -> [Int] {
    var maxtimes = 0
    var mintimes = 0
    var max = scores[0]
    var min = scores[0]
    for s in scores {
        if s > max {
            max = s
            maxtimes += 1
        }
        if s < min {
            min = s
            mintimes += 1
        }
    }
    return [maxtimes,mintimes]
}
breakingRecords(scores: [10, 5, 20, 20, 4, 5, 2, 25, 1])
 func longestPalindrome(_ s: String) -> String {
    guard s.count > 1 else {
        return s
    }
    var startIndex: Int = 0
    var maxLen: Int = 1
    var i = 0
    let charArr = Array(s)
    while i < s.count {
        guard s.count - i > maxLen / 2 else {
            break
        }
        var j = i
        var k = i
        while k < s.count - 1 && charArr[k+1] == charArr[k] {
            k += 1
        }
        i = k + 1
        while k < s.count - 1 && j > 0 && charArr[k+1] == charArr[j-1] {
            k += 1
            j -= 1
        }
        let newLen = k - j + 1
        if newLen > maxLen {
            startIndex = j
            maxLen = newLen
        }
    }
    return String(charArr[startIndex ..< (startIndex + maxLen)])
}
func longestPalindrome1(_ s: String) -> String {
    guard s.count > 1 else {
        return s
    }
    
    var sChars = Array(s)
    let len = sChars.count
    var maxLen = 1
    var maxStart = 0
    var isPalin = Array(repeating: Array(repeating: false, count : len), count : len)
    
    // set palindrome whose len is 1
    for i in 0...len - 1 {
        isPalin[i][i] = true
    }
    
    // set palindrome whose len is 2
    for i in 0...len - 2 {
        if sChars[i] == sChars[i + 1] {
            isPalin[i][i + 1] = true
            maxLen = 2
            maxStart = i
        }
    }
    
    if len >= 3 {
        for length in 3...len {
            for i in 0...len - length {
                if sChars[i] == sChars[i + length - 1] && isPalin[i + 1][i + length - 2] {
                    isPalin[i][i + length - 1] = true
                    maxLen = length
                    maxStart = i
                }
            }
        }
    }
    
    return String(sChars[maxStart...maxStart + maxLen - 1])
}
longestPalindrome("cacbbba")
longestPalindrome1("cacbbbba")
longestPalindrome1("jdfhfds")
longestPalindrome1("bacbac")

func circularPalindromes(s: String) -> [Int] {
    var counuts = [Int]()
    print(s)
    counuts.append(longestPalindrome1(s).count)
    for i in 0..<s.count-1 {
        let new =  s.suffix(s.count - 1 - i) + s.prefix(i)
        print(new)
        counuts.append(longestPalindrome1(String(new)).count)
    }
    return counuts
    
}
//circularPalindromes(s: "cacbbba")
//circularPalindromes(s: "eededdeedede")
func maxValue(t: String) -> Int {
    var fCount = 1
    var subS = [String]()
    for i in 0..<t.count {
        for j in 0..<t.count - i {
            let start = t.index(t.startIndex, offsetBy: j)
            let end =  t.index(t.startIndex, offsetBy: i+j)
            let sub = String(t[start...end])
            subS.append(sub)
            
        }
    }
    for sub in Set(subS) {
        let count = subS.filter({$0 == sub}).count * sub.count
        if count > fCount {
            fCount = count
        }
    }
    return fCount
}
func subStrings(_ t: String)->[String] {
    var subS = [String]()
    for i in 0..<t.count {
        for j in 0..<t.count - i {
            let start = t.index(t.startIndex, offsetBy: j)
            let end =  t.index(t.startIndex, offsetBy: i+j)
            let sub = String(t[start...end])
            if !subS.contains(sub){
                subS.append(sub)
            }
        }
    }
    return subS
}
maxValue(t: "abcabcddd")
maxValue(t: "aaaaaa")


func findStrings(w: [String], queries: [Int]) -> [String] {
    let c = Set(w.map{subStrings($0)}.flatMap{$0}).sorted()
    print(c)
    var ss = [String]()
    for q in queries {
        if q-1 < c.count {
            ss.append(c[q-1])
        } else {
            ss.append("INVALID")
        }
    }
    return ss
}
findStrings(w: ["aab","aac"], queries: [3,8,23])

func superReducedString(s: String) -> String {
    let d = Array(Set(s))
    var s = s
    for _ in 0..<d.count {
        for c in d {
            let mix = String(c)+String(c)
            s = s.replacingOccurrences(of: mix, with: "")
        }
    }
    
    return s.isEmpty ? "Empty String" : s
}
superReducedString(s: "aaabccddd")
superReducedString(s: "ccbaab")
superReducedString(s: "aa")

print("onrTdsdUdscIsdf".filter{String($0).uppercased() == String($0) }.count + 1)
func minimumNumber(n: Int, password: String) -> Int {
    if password.count < 6 {
        return 6 -  password.count
    }
    func matches(_ string: String, with exp: String) -> Bool {
        return string.range(of: exp, options: .regularExpression, range: nil, locale: nil) != nil
    }

    var count = 0
    if matches(password, with: "^(?=.*?[A-Z])") == false {
        count += 1
    }
    if matches(password, with: "^(?=.*?[a-z])") == false {
        count += 1
    }
    if matches(password, with: "^(?=.*?[0-9])") == false {
        count += 1
    }
    if matches(password, with: "(?=.*[!@#$%^&*()-+])") == false {
        count += 1
    }
    return count
}

minimumNumber(n: 9, password: "#HackerRank")

func marsExploration(s: String) -> Int {
    var ex = ""
   // var count = 0
    for _ in 0..<s.count/3 {
      ex = ex + "SOS"
    }
    return  zip(ex, s).filter{ $0 != $1 }.count
    
}
marsExploration(s: "SOSOOSOSOSOSOSSOSOSOSOSOSOS")
marsExploration(s: "SOSSOSSOS")

func hackerrankInString(s: String) -> String {
    let h = Array("hackerrank")
    var ex = ""
    for  c in  s {
        if c == h[ex.count] {
            ex.append(c)
        }
    }
    if String(ex) == "hackerrank" {
        return "YES"
    }
        return "NO"

   
   
}

hackerrankInString(s: "hhaacckkekraraannk")
hackerrankInString(s: "rhbaasdndfsdskgbfefdbrsdfhuyatrjtcrtyytktjjt")


func minimumSubArray(ar: [Int], k: Int) -> String {
//    var mins = [Int]()
//
//    for i in 0...ar.count - k {
//        let min = Array(ar[i..<i+k]).min()
//        mins.append(min!)
//    }
//    return mins
    var mins = ""
    
    for i in 0...ar.count - k {
        let min = Array(ar[i..<i+k]).min()
        mins += "\(min!) "
    }
    return mins
}
minimumSubArray(ar: [10,0,3,2,5], k: 2)

