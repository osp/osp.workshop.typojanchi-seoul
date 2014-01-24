\version "2.7.40"
\header {
	crossRefNumber = "1"
	footnotes = ""
	tagline = "Lily was here 2.14.2 -- automatically converted from ABC"
	title = "from korean-song-short.mid"
}
wordsBVA = \lyricmode {
반알이 급지딘거냐 제힌되는 불품 ° 총꾀모으틈꾀 _ 도검 등 "무7흥튤-" , 실탄 및 호뺨류 방폐칭썰엠뭡괄' 틈짭좁꿈 등 _ "머|스임끄1|드}민 0땐'허[로인 " 대미둥 다판약류및 오 _ 놈옹 으|읽괌픔 ' 국헌 _ 공쫙안 틱둥- 속욜 곳둡페듭꺼나 짐쁘닦으| "7" |밀누설이나 첩보에 츠봄되는 들풀 。 "위죄7" 꿈폈줌썰줌 둥 폈짭폈썰권 침좁|{콜줌) 우훅꾀폐 및 위 ' 변조된 유겟 흠권 _ 응담' _ }항' 녹용- 읽뻬 "7}죽등" 멸종우l기에 처한 "0닭생동^4들" 및 프린 저l품 "3." 렴엮돼샹쿨품 『 _ 실컹겟꿈없꿇드 "돋뭡0폐완견" 됨 및 "수샨돋됨돋고7l" 돋), 코- "7[" 육흥- , "쇠1|지'햄'" 치즈 둥 "육7꿈끙품" _ 흙' 망고 호두, 장노}삼, "송0|," 오렌지 체리 등 생고}일, 견고관류 및 굿페- 꽈느류빡 른_|_^l`l다^큽덥 튼넘튼튼- 늙 틈째힝/'썰틈춘뮈펩째듭 "l`l0)674" 힌 가 가 가 개 거 거 거 겨 보고고과과=구퀘 뷔딥그꼬히갸나내 대냐너너녀녀노노 느놓느느나나다다 다 |:|| 뎌 떠 데 토 토 록| _ 록- 두- 록뎌라라리래 리리려르르르르르그 "\"끝|" 리 마 마 때 미 에 멕 대벼모모- 딜므대대 꾀 바 바 배 배 버 벼 배 솔보보브브비바시새 새 깨 시 시 시 깨 소 소힌°〓^ 딘 벌  
}
voiceB =  {
\set Score.defaultBarType = "empty"

% %MIDI program 1
 %  korean-song Pierre
 %  Copyright 0xa9 
   d16    d16    d16    d16    d'16    d'16    d'16    d'16    d'16    d'16    
d'16    d'16    d'16    d'16    d'16    d'16  \bar "|"   d16    d16    d16    
d16    d'16    d'16    d'16    d'16    d'16    d'16    d'16    d'16    d'16    
d'16    d'16    d'16  \bar "|"   d''2   ~    d''8    fis'8    a'8    d''8  
\bar "|"   cis''2   ~    cis''8    e'8    g'8    cis''8  \bar "|"   b'2   ~    
b'8    b'8    fis'8  \bar "|"   
}
voicedefault =  {
\set Score.defaultBarType = "empty"

\time 4/4 \tempo  4=130
 %  2 sharps
 \key d \major %  korean-song Pierre
 %  Copyright 0xa9 
 
}

\score{
    <<

	\context Staff="1"
	{
	    \voicedefault
	    \voiceB 
	}

	\addlyrics {
 \wordsBVA } 
    >>
	\layout {
	}
	\midi {}
}
