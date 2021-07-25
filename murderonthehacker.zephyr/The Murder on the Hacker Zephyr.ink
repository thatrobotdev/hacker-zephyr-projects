Hello! Welcome to tonight's premire showing of "The Murder on the Hacker Zephyr". I'm Zeph, and I'll be your host tonight. This is a choose your own adventure story, which means that your choices affect the outcome.

Before, we start, what's your name?
-> ask_name

=== ask_name ===

LIST unusedHackerNames = ([REMOVED NAMES])

+ \[Set Custom Name\]
    -> custom_name_setup
+ [removed_names]
    -> set_name(1)
    
=== custom_name_setup ===
LIST customName = (empty)
LIST letters = (a), b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z
~ customName = ()

-> input

= input
CURRENT INPUT: {LIST_ALL(customName)}
Please enter a character:
* [a]
    ~ customName += a
* [b]
    ~ customName += b
* [c]
    customName += c
* [d]
    customName += d
* [e]
    customName += e
* [f]
    customName += f
* [g]
    customName += g
* [h]
    customName += h
* [i]
    customName += i
* [j]
    customName += j
* [k]
    customName += k
* [l]
    customName += l
* [m]
    customName += m
* [n]
    customName += n
* [o]
    customName += o
* [p]
    customName += p
* [q]
    customName += q
* [r]
    customName += r
* [s]
    customName += s
* [t]
    customName += t
* [u]
    custonName += u
* [v]
    custonName += v
* [w]
    customName += w
* [x]
    customName += x
* [y]
    customName += y
* [z]
    customName += z
* [á]
    customName += á
* [é]
    customName += é
* [í]
    customName += í
* [ó]
    customName += ó
* [ú]
    customName += ú
* [ñ]
    customName += ñ
* [\[backspace\]]
    -> backspace
* [\[done\]]
    -> DONE
- -> input

= backspace
~ customName -= LIST_MAX(customName)
-> input


    
=== set_name(nameNum) ===
VAR playerName = ""
~ playerName = unusedHackerNames(nameNum) // Sets the playerName by accessing the list with the nameNum
~ unusedHackerNames -= playerName

VAR zephIsAnnoyed = false

{{playerName}, you say? Is my hearing correct?|Ah, so it's {playerName}?}
+ Yes, that's my name.
    -> set_scene
* {CHOICE_COUNT() == 1} "No, it isn't."
* {CHOICE_COUNT() == 1} "Nope, you heard me incorrectly."
+ {CHOICE_COUNT() == 1} "Hmm.. still no."
-   {Hmm, what's this? Please say your name again.|Hmph, I must be losing my hearing. I apologize, but I would like to hear your name again.|->zeph_is_now_annoyed}
    -> ask_name

=== zeph_is_now_annoyed ===
~ zephIsAnnoyed = true
 {I believe you must be toying with me. Please stop it, the show is about to start. I'll ask you again, what is your name?|I'll ask you again, what is your name?}
    -> ask_name

=== set_scene ===
{(!zephIsAnnoyed): {Wonderful|Great|Spectacular|Astonishing|Beautiful|Charmed}, {playerName}, it is truly a {pleasure|delight|joy} to meet you. Please make your way to the theater,}
{zephIsAnnoyed: Please hurry through,}
<> the show is about to start.
[After a few moments, the lights dim, and the stage curtain pulls away. Looking up, the stage is nowhere to be found. Instead, you are in the Super Dome, sitting near the back of a train]

-> super_dome_act_1

=== super_dome_act_1 ===

* [Look around]
    You're surrounded by curving glass panels making their way to the ceiling, string lights fluttering around as the cabin moves.
    -> see_information_booklet
* [Look out the window]
    Looking past the glare in the window, you squint toward a canyon beneath you, stretching for miles. You wouldn't want to fall down there!
    * -> super_dome_act_1
* [Close your eyes]
    Closing your eyes, you can feel the rumble of the train beneath you, the bumpy terrain jolting you around the car. The sounds of the wheels grating against the track and the car slicing into the wind is slightly comforting. Louder than the car is the roar of excitement from the hackers around you. Tuning in, you can hear many conversations around you.
        * Try to listen in?
        Turning your head slightly toward a general 
    * Open your eyes
* [Get up]

=== see_information_booklet ===
 On the table you're sitting at, you see a heavily used information booklet. The glossy pages crack at the edges, and the binding is a little torn.
 * [Open the booklet to the marked section]
 -> read_information_booklet
 * Stop looking around

=== read_information_booklet ===

As you open the booklet, you see a list of cities from Colorado. This page has been marked with a thin, bent sticky note.

--> page_2

=== page_1 ===
Page 1:
[✔️] Chicago, Illinois
[✔️] Naperville, Illinois
[✔️] Aurora, Illinois
[✔️] Kewanee, Illinois
[✔️] Galva, Illinois
[✔️] Galesburg, Illinois
[✔️] Monmouth, Illinois
[✔️] Burlington, Illinois
[✔️] Mt. Pleasent, Iowa
[✔️] Ottumwa, Iowa
[✔️] Osceola, Iowa
[✔️] Creston, Iowa
[✔️] Stanton, Iowa
[✔️] Council Bluffs, Iowa
[✔️] Omaha, Nebraska
[✔️] Lincoln, Nebraska
[✔️] Hastings, Nebraska

* {TURNS_SINCE(-> read_information_booklet) > 3} Suddenly, you see someone in front of you -> encounter
+ Flip to next page
    -> page_2


=== page_2 ===
Page 2:
[✔️] Fort Morgan Colorado
[✔️] Denver, Colorado
[✔️] Plainview Colorado
[✔️] Winter Park Colorado
[✔️] Granby, Colorado
[✔️] Dotsero, Colorado
[] Glenwood Canyon, Colorado
[] Glenwood Springs, Colorado
[] Palisade, Colorado
[] De Beque, Colorado
[] Grand Junction, Colorado

* {TURNS_SINCE(-> read_information_booklet) > 3} -> encounter
+ Flip to next page
    -> page_3
+ Flip to previous page
    -> page_1

=== page_3 ===
Page 3:
[] Ruby Canyon, Utah
[] Green River, Utah
[] Price, Utah
[] Helper, Utah
[] Castle Gate, Utah
[] Soldier Summit, Utah
[] Thistle, Utah
[] Provo, Utah
[] Salt Lake City, Utah
[] Elko, Nevada
[] Winnemucca, Nevada
[] Sparks, Nevada
[] Reno, Nevada

* {TURNS_SINCE(-> read_information_booklet) > 3} -> encounter
+ Flip to next page
    -> page_4
+ Flip to previous page
    -> page_2

=== page_4 ===
Page 4:
[] Truckee, California
[] Donner Lake, California
[] Castle Peak, California
[] Soda Springs, California
[] Emigrant Gap, California
[] Gold Run, California
[] Cape Horn, California
[] Colfax, California
[] Auburn California
[] Roseville California
[] Sacramento, California
[] Davis, California
[] Suisun Bay, California
[] Martinez, California
[] Emeryville, California

* {TURNS_SINCE(-> read_information_booklet) > 3} -> encounter
+ Flip to previous page
    -> page_3

=== encounter ===
VAR friend = ""
~ friend = LIST_RANDOM(unusedHackerNames)
~ unusedHackerNames -= friend

As you are flipping through the pages, you notice {friend} walking toward you.

// ~ PLAYER_NAME = AllHackers(RANDOM(1, 52))