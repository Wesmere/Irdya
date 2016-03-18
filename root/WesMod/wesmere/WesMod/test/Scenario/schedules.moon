_ = (str) -> return str
    
DAWN =
    id: "dawn"
    name: _ "Dawn"
    image: "misc/time-schedules/default/schedule-dawn"
    red: -20
    green: -20
    sound: "ambient/morning"

MORNING =
    id: "morning"
    name: _ "Morning"
    image: "misc/time-schedules/default/schedule-morning"
    lawful_bonus: 25

MIDDAY =
    id: "midday"
    name: _ "Midday"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(0,39,125,39)"
    lawful_bonus: 25

AFTERNOON =
    id: "afternoon"
    name: _ "Afternoon"
    image: "misc/time-schedules/default/schedule-afternoon"
    lawful_bonus: 25

DUSK =
    id: "dusk"
    name:  _ "Dusk"
    image: "misc/time-schedules/default/schedule-dusk"
    green: -20
    blue: -20
    sound: "ambient/night"

FIRST_WATCH =
    id: "first_watch"
    name:  _ "First Watch"
    image: "misc/time-schedules/default/schedule-firstwatch"
    lawful_bonus: -25
    red: -45
    green: -35
    blue: -10

MIDNIGHT =
    id: "midnight"
    name: _ "Midnight"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(0,195,125,39)"
    lawful_bonus: -25
    red: -45
    green: -35
    blue: -10

SECOND_WATCH =
    id: "second_watch"
    name: _ "Second Watch"
    image: "misc/time-schedules/default/schedule-secondwatch"
    lawful_bonus: -25
    red: -45
    green: -35
    blue: -10

INDOORS =
    id: "indoors"
    name: _ "Indoors"
    image: "misc/time-schedules/schedule-indoors"

UNDERGROUND =
    id: "underground"
    name: _ "Underground"
    image: "misc/time-schedules/schedule-underground"
    lawful_bonus: -25
    red: -45
    green: -35
    blue: -10

DEEP_UNDERGROUND =
    id: "deep_underground"
    name: _ "Deep Underground"
    image: "misc/time-schedules/schedule-underground"
    lawful_bonus: -30
    red: -40
    green: -45
    blue: -15

DEFAULT_SCHEDULE = {
    DAWN
    MORNING
    AFTERNOON
    DUSK
    FIRST_WATCH
    SECOND_WATCH
}

SUMMER_SCHEDULE = {
    DAWN
    MORNING
    MIDDAY
    AFTERNOON
    DUSK
    MIDNIGHT
}


WINTER_SCHEDULE = {
    DAWN
    MIDDAY
    DUSK
    FIRST_WATCH
    MIDNIGHT
    SECOND_WATCH
}

DEFAULT_SCHEDULE_DAWN = DEFAULT_SCHEDULE


-- DEFAULT_SCHEDULE_MORNING
--     {DEFAULT_SCHEDULE}
--     current_time: 1


-- DEFAULT_SCHEDULE_AFTERNOON
--     {DEFAULT_SCHEDULE}
--     current_time: 2


-- DEFAULT_SCHEDULE_DUSK
--     {DEFAULT_SCHEDULE}
--     current_time: 3


-- DEFAULT_SCHEDULE_FIRST_WATCH
--     {DEFAULT_SCHEDULE}
--     current_time: 4


-- DEFAULT_SCHEDULE_SECOND_WATCH
--     {DEFAULT_SCHEDULE}
--     current_time: 5


-- # 24-hour clock time-of-day macros.

MIDNIGHT_HOUR =
    id: "midnight_hour"
    name: _ "Midnight"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(0,195,125,39)"
    lawful_bonus: -25
    red: -45
    green: -35
    blue: -10

SECOND_WATCH_HOUR1 =
    id: "second_watch_hour1"
    name: _ "Second Watch — First Hour"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(250,234,125,39)"
    lawful_bonus: -25
    red: -45
    green: -35
    blue: -10

SECOND_WATCH_HOUR2 =
    id: "second_watch_hour2"
    name: _ "Second Watch — Second Hour"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(125,234,125,39)"
    lawful_bonus: -25
    red: -45
    green: -35
    blue: -10

SECOND_WATCH_HOUR3 =
    id: "second_watch_hour3"
    name: _ "Second Watch — Third Hour"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(0,234,125,39)"
    lawful_bonus: -25
    red: -45
    green: -35
    blue: -10

SECOND_WATCH_HOUR4 =
    id: "second_watch_hour4"
    name: _ "Second Watch — Fourth Hour"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(250,273,125,39)"
    lawful_bonus: -25
    red: -45
    green: -35
    blue: -10

SECOND_WATCH_HOUR5 =
    id: "second_watch_hour5"
    name: _ "Second Watch — Fifth Hour"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(125,273,125,39)"
    lawful_bonus: -15
    red: -45
    green: -35
    blue: -10

SECOND_WATCH_HOUR6 =
    id: "second_watch_hour6"
    name: _ "Second Watch — Sixth Hour"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(0,273,125,39)"
    lawful_bonus: -5
    red: -30
    green: -30
    blue: -5

DAWN_HOUR =
    id: "dawn_hour"
    name: _ "Dawn"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(250,0,125,39)"
    red: -20
    green: -20
    sound: "ambient/morning"

MORNING_HOUR1 =
    id: "morning_hour1"
    name: _ "Morning — First Hour"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(125,0,125,39)"
    lawful_bonus: 5

MORNING_HOUR2 =
    id: "morning_hour2"
    name: _ "Morning — Second Hour"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(0,0,125,39)"
    lawful_bonus: 15

MORNING_HOUR3 =
    id: "morning_hour3"
    name: _ "Morning — Third Hour"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(250,39,125,39)"
    lawful_bonus: 25

MORNING_HOUR4 =
    id: "morning_hour4"
    name: _ "Morning — Fourth Hour"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(125,39,125,39)"
    lawful_bonus: 25

MIDDAY_HOUR =
    id: "midday_hour"
    name: _ "Midday"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(0,39,125,39)"
    lawful_bonus: 25

AFTERNOON_HOUR1 =
    id: "afternoon_hour1"
    name: _ "Afternoon — First Hour"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(250,78,125,39)"
    lawful_bonus: 25

AFTERNOON_HOUR2 =
    id: "afternoon_hour2"
    name: _ "Afternoon — Second Hour"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(125,78,125,39)"
    lawful_bonus: 25

AFTERNOON_HOUR3 =
    id: "afternoon_hour3"
    name: _ "Afternoon — Third Hour"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(0,78,125,39)"
    lawful_bonus: 25

AFTERNOON_HOUR4 =
    id: "afternoon_hour4"
    name: _ "Afternoon — Fourth Hour"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(250,117,125,39)"
    lawful_bonus: 25

AFTERNOON_HOUR5 =
    id: "afternoon_hour5"
    name: _ "Afternoon — Fifth Hour"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(125,117,125,39)"
    lawful_bonus: 15

AFTERNOON_HOUR6 =
    id: "afternoon_hour6"
    name: _ "Afternoon — Sixth Hour"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(0,117,125,39)"
    lawful_bonus: 5
    green: -10
    blue: -10

DUSK_HOUR =
    id: "dusk_hour"
    name: _ "Dusk"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(250,156,125,39)"
    green: -20
    blue: -20
    sound: "ambient/night"

FIRST_WATCH_HOUR1 =
    id: "first_watch_hour1"
    name: _ "First Watch — First Hour"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(125,156,125,39)"
    lawful_bonus: -5
    red: -20
    green: -30
    blue: -5

FIRST_WATCH_HOUR2 =
    id: "first_watch_hour2"
    name: _ "First Watch — Second Hour"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(0,156,125,39)"
    lawful_bonus: -15
    red: -45
    green: -35
    blue: -10

FIRST_WATCH_HOUR3 =
    id: "first_watch_hour3"
    name: _ "First Watch — Third Hour"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(250,195,125,39)"
    lawful_bonus: -25
    red: -45
    green: -35
    blue: -10

FIRST_WATCH_HOUR4 =
    id: "first_watch_hour4"
    name: _ "First Watch — Fourth Hour"
    image: "misc/time-schedules/tod-schedule-24hrs~CROP(125,195,125,39)"
    lawful_bonus: -25
    red: -45
    green: -35
    blue: -10

DEFAULT_SCHEDULE_24H = {
    DAWN_HOUR
    MORNING_HOUR1
    MORNING_HOUR2
    MORNING_HOUR3
    MORNING_HOUR4
    MIDDAY_HOUR
    AFTERNOON_HOUR1
    AFTERNOON_HOUR2
    AFTERNOON_HOUR3
    AFTERNOON_HOUR4
    AFTERNOON_HOUR5
    AFTERNOON_HOUR6
    DUSK_HOUR
    FIRST_WATCH_HOUR1
    FIRST_WATCH_HOUR2
    FIRST_WATCH_HOUR3
    FIRST_WATCH_HOUR4
    MIDNIGHT_HOUR
    SECOND_WATCH_HOUR1
    SECOND_WATCH_HOUR2
    SECOND_WATCH_HOUR3
    SECOND_WATCH_HOUR4
    SECOND_WATCH_HOUR5
    SECOND_WATCH_HOUR6
}

-- # Special times of day for campaigns playing after the fall

-- # UtBS uses a custom timeschedule assuming day - short night -
-- # day - long night which is supposed to simulate a world with two suns
-- # in the sky.

-- # There are 2 days in each cycle
-- # First Dawn, First Morning, First Mid-day, First Afternoon, First Dusk
-- # Short Dark,
-- # Second Dawn, Second Morning, Second Mid-day, Second Afternoon,
-- # Second Dusk, Long Dark1, Long Dark2, Long Dark3, Long Dark4.

-- # I label them "first" and "second" so the player always knows what
-- # day it currently is

DAWN1 =
    id: "dawn1"
    name: _ "First Dawn"
    image: "misc/time-schedules/after-the-fall/1dawn1"
    red: -20
    green: -20

DAWN2 =
    id: "dawn2"
    name: _ "Second Dawn"
    image: "misc/time-schedules/after-the-fall/7dawn2"
    red: -20
    green: -20

MORNING1 =
    id: "morning1"
    name: _ "First Morning"
    image: "misc/time-schedules/after-the-fall/2morning1"
    lawful_bonus: 25

MORNING2 =
    id: "morning2"
    name: _ "Second Morning"
    image: "misc/time-schedules/after-the-fall/8morning2"
    lawful_bonus: 25

MIDDAY1 =
    id: "midday1"
    name: _ "First Midday"
    image: "misc/time-schedules/after-the-fall/3midday1"
    lawful_bonus: 25

MIDDAY2 =
    id: "midday2"
    name: _ "Second Midday"
    image: "misc/time-schedules/after-the-fall/9midday2"
    lawful_bonus: 25

AFTERNOON1 =
    id: "afternoon1"
    name: _ "First Afternoon"
    image: "misc/time-schedules/after-the-fall/4afternoon1"
    lawful_bonus: 25

AFTERNOON2 =
    id: "afternoon2"
    name: _ "Second Afternoon"
    image: "misc/time-schedules/after-the-fall/10afternoon2"
    lawful_bonus: 25

DUSK1 =
    id: "dusk1"
    name: _ "First Dusk"
    image: "misc/time-schedules/after-the-fall/5dusk1"
    green: -20
    blue: -20

DUSK2 =
    id: "dusk2"
    name: _ "Second Dusk"
    image: "misc/time-schedules/after-the-fall/11dusk2"
    green: -20
    blue: -20

SHORTDARK =
    id: "short_dark"
    name: _ "The Short Dark"
    image: "misc/time-schedules/after-the-fall/6shortdark"
    lawful_bonus: -25
    red: -40
    green: -40
    blue: -10

LONGDARK1 =
    id: "long_dark1"
    name: _ "The Long Dark (1)"
    image: "misc/time-schedules/after-the-fall/12longdark1"
    lawful_bonus: -25
    red: -40
    green: -40
    blue: -10

LONGDARK2 =
    id: "long_dark2"
    name: _ "The Long Dark (2)"
    image: "misc/time-schedules/after-the-fall/13longdark2"
    lawful_bonus: -25
    red: -40
    green: -40
    blue: -10

-- use same image as second watch
LONGDARK3 =
    id: "long_dark3"
    name: _ "The Long Dark (3)"
    image: "misc/time-schedules/after-the-fall/14longdark3"
    lawful_bonus: -25
    red: -40
    green: -40
    blue: -10

LONGDARK4 =
    id: "long_dark4"
    name: _ "The Long Dark (4)"
    image: "misc/time-schedules/after-the-fall/15longdark4"
    lawful_bonus: -25
    red: -40
    green: -40
    blue: -10

TWO_SUNS_DEFAULT_SCHEDULE = {
    DAWN1
    MORNING1
    MIDDAY1
    AFTERNOON1
    DUSK1
    SHORTDARK
    DAWN2
    MORNING2
    MIDDAY2
    AFTERNOON2
    DUSK2
    LONGDARK1
    LONGDARK2
    LONGDARK3
    LONGDARK4
}
