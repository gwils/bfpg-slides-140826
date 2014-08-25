data Lecture = Lecture
  { title     :: String
  , lectureNo :: Int
  , course    :: Course
  , author    :: Person
  , presenter :: Person
  }

newtype Course = Course { courseCode :: String }
newtype Person = Person { getName    :: String }

thisLecture :: Lecture
thisLecture = Lecture
  { title     = "Folds and Monoids"
  , lectureNo = 7
  , author    = Person "Brent Yorgey"
  , presenter = Person "George Wilson"
  , course    = Course "CIS194"
  }
