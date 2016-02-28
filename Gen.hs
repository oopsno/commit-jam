import System.Time

render :: CalendarTime -> [String]
render time = [ "# Current Date"
              , ""
              , "```"
              , calendarTimeToString time 
              , "```" ]

main :: IO ()
main = getClockTime >>= toCalendarTime >>= mapM_ putStrLn . render 
