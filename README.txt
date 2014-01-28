Typojanchi 2013
======

Workshop
------

**October 2013** — during the 3rd edition of the [타이포잔치 Typojanchy biennal](http://typojanchi.org/2013/), Open source Publishing set up a 5 day workshop in Seoul. The process by which a computer learns to distinguish letters, OCR (Optical Character Recognition) has already been the subject of OSP projects such as [Fonzie](http://git.constantvzw.org/?p=osp.tools.fonzie.git;a=tree), the image to font processor and the itinerant Dingbats Liberation Fests (a.o. [CASCO](http://ospublish.constantvzw.org/images/dingbats-liberation-fest-2?page=1), [Espace MyMonkey](http://ospublish.constantvzw.org/images/dingbats-liberation-fest-3)). In Seoul, OSP and 10 Korean participants went a step further and bashed and trashed the OCR system, teaching it to recognise beyond the alphabet.

**23 January 2014** — Live from [SIN lab](http://www.youtube.com/user/collectifsin1/videos), inside [De La Charge](http://delacharge.com/) house, OSP reviews the trip that took place 3 months before. 

![The flyer](http://osp.constantvzw.org/visual/cache/osp.workshop.typojanchi-seoul/width..600/465c06f3d84b8556247e2b8b1eb97a18bf160cdc "The flyer")

[Download the flyer in pdf](http://osp.constantvzw.org/workshop/typojanchi-seoul/tree/master/print-party/seoul-fonts-karaoke-outlined.pdf)

The tour is composed by : 

- playing some korean vynils, open up the guts of [Tesseract](http://code.google.com/p/tesseract-ocr/) on pictures from the trip, 
- taking a double Hangul lesson, 
- lauching the cooking of Korean Leek & Onion Pancake, 
- stuffing Fonzie and testing fonts, 
- making our machines speaks Korean with [espeak](http://espeak.sourceforge.net/), 
- listening to the midi files [Bernard Guyot](http://www.jazzinbelgium.com/person/bernard.guyot) transcribed from the vynils music using [Timidity](http://timidity.sourceforge.net/), 
- convert these midi to abc format with midi2abc, 
- and finally inject them to make [ecantorix](https://github.com/divVerent/ecantorix) sings! Proto open source karaoke flavour!

Result : two potential hits,[다누보강의 작울결 Remix 1](http://git.constantvzw.org/?p=osp.workshop.typojanchi-seoul.git;a=blob_plain;f=print-party/hits/seoul-fonts-song_1.wav) and [다누보강의 작울결 Remix 2](http://git.constantvzw.org/?p=osp.workshop.typojanchi-seoul.git;a=blob_plain;f=print-party/hits/seoul-fonts-song_2.wav) to download!
This marks the beginning of a collaboration with Paul Boudeau from Sin, for a future [pure-dated](http://puredata.info/) version of it!


![파전](http://ospublish.constantvzw.org/images/var/resizes/Seoul-Fonts-Karaoke/DSCF0617.JPG?m=1390944692 "Korean pancakes")
![Hangul lesson](http://ospublish.constantvzw.org/images/var/resizes/Seoul-Fonts-Karaoke/DSCF0677.JPG?m=1390944714 "Hangul lesson")
![Funzie Fonzie from a Korean Letraset board](http://ospublish.constantvzw.org/images/var/resizes/Seoul-Fonts-Karaoke/DSCF0708.JPG?m=1390944724 "Funzie Fonzie from a Korean Letraset board")


[Visit more pictures here](http://ospublish.constantvzw.org/images/Seoul-Fonts-Karaoke)


**Workshop description** — By looking at the inner workings of digital text recognition software know as OCR (Optical Character Recognition), there seems to be a space in which we can put comprehension aside, and where we could be able to observe typography in its shapes, before making out it's specificities, or even it's meaning. By declutching some of our digital habits, and taking time to understand and retrace processes that OCR uses to look at shapes, step by step, and over time working out which are characters, which are words, and what they correspond to, this software embodies a digital way of learning to read. We believe there is a lot to take from this, a lot we, as type enthusiasts, can grasp on to. Could we propose a patient manual reverse engineering process of the digitally possible methods to work towards a deeper understanding of our typographic languages and our restitution of the embedable links between content and its forms?

**Info** — Seoul Print Party OSP - Lab sin01
Thursday, January 23, 18:00 — 21:00
Galerie De La Charge

**Line up for humans**  
17:30 — Doors open, korean vynils  
18:00 — Launch and visual intro   
18:20 — Into the OCR eye  
18:45 — Hangul lesson  
19:00 — Kitchen check  
19:05 — Fonts testing  
19:25 — Synthetic poetry  
19:35 — Vynil to midi to abc  
19:40 — Proto karaoke  
19:55 — Singing voice  
20:00 — Score printing  
20:10 — Paul's boutique, tube and dance!  

**Line up for machines**

    tesseract special-offer.jpg special-offer  
    tesseract special-offer.jpg special-offer -l kor  
    mogrify -format jpg *.*  
    for i in *.jpg; do mogrify -type Grayscale -sharpen 0x3.0 -resize 1000x1000 $i `basename $i .jpg`.jpg ; done  
    fonzie tessdata=/home/ludi/src/tesseract/tessdata/kor.traineddata s=100 i=letraset.jpg txt=letraset.txt otf=1 n=letraset
&nbsp;
    cat *.txt > lyrics.txt
    espeak -f lyrics.txt -v Korean -g -p 20
    espeak -f lyrics.txt -v Korean -g -p 99
&nbsp;
    timidity file.mid
    midi2abc korean-song-long-instruments.mid > seoul-fonts-song.abc
    manual edit of the .abc file and adding the words to the notes
    make 
&nbsp;
    midi2ly seoul-fonts.midi
    lilypond seoul-fonts-midi.ly
    evince ./seoul-fonts-midi.pdf

(bonus) custom fonts in the score, add `\override LyricText #'font-name = #"KoreanLetraset"` just after `\lyricmode {` and just before the text you want to style

**Korean Leek & Onion Pancake**

Serving Size: Makes 6-12 medium-sized pancakes

Ingredients:  
2 bundles of Korean leek ( this may be garlic chives- not sure), washed thoroughly and cut into 2 inch segments  
1 yellow onion, peeled and thinly sliced  
2 cups flour or Korean pancake flour: sold at Asian market ( I  recommend the Korean pancake flour because it is already seasoned)  
1 cup water  
Optional: Dipping soy sauce  
Ingredients:  
2 tablespoons soy sauce  
1/2 tablespoon rice vinegar  
1/2 tablespoon sesame oil  
1/4 tablespoon sesame seed  
1/3 cup minced green onion  

Directions:

1. Combine leek and onion in mixing bowl.
2. Add enough flour to cover all of the leeks and onions, but not too much that it buries it.
3. Add water to make batter thin consistency.
4. Heat pan with tablespoon of oil on high heat.
5.  Scoop batter with leek and onion and pour onto pan into medium-sized circle; spread veggies out evenly.
6.  After batter has cooked on one side, quickly flip over and begin flattening out pancake. Turn heat to medium high.
7. Continue to flip and press until outside is crispy, golden.
8. Optional: Mix Dipping soy sauce ingredients and serve on the side with pancakes.

Two things I learned from my mom that changed my pancake-making:

1. Initial High heat : this is what gets that nice crispness
2. Just enough pancake flour: I always thought it was like making  American pancakes- you need lots of batter. But it’s quite the opposite.  You need just enough to hold the veggies together. This way you can  really taste the veggies and still enjoy the crispness of the pancake  batter.

**Colophon**
Seoul Font Karaoke was made possible with the following additional tools:

- The font manipulation software in use is Fontforge
- The pictures have been converted to grayscale, sharpend and resized thanks to Imagemagick
- The midi file was manually created by Bernard Guyot on basis of a vynil recoding using non-free Sibelius software
- The lyrics have been sung and recorded by espeak with an additional korean voice courtesy of Kyung-hown Chung
- The music-score layout as has been produced by Lilypond
- The booklet was laid-out using Inkscape
