<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// 아티스트 정보 

Map<String, Object> artistInfo = new HashMap<>();
artistInfo.put("name", "아이유");
artistInfo.put("debute", 2008);
artistInfo.put("agency", "EDAM엔터테인먼트");
artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");

// 아이유 노래 리스트 
List<Map<String, Object>> musicList = new ArrayList<>();

Map<String, Object> musicInfo = new HashMap<>();
musicInfo.put("id", 1);
musicInfo.put("title", "팔레트");
musicInfo.put("album", "Palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 2);
musicInfo.put("title", "좋은날");
musicInfo.put("album", "Real");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
musicInfo.put("time", 233);
musicInfo.put("composer", "이민수");
musicInfo.put("lyricist", "김이나");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 3);
musicInfo.put("title", "밤편지");
musicInfo.put("album", "palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 253);
musicInfo.put("composer", "제휘,김희원");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 4);
musicInfo.put("title", "삐삐");
musicInfo.put("album", "삐삐");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "이종훈");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 5);
musicInfo.put("title", "스물셋");
musicInfo.put("album", "CHAT-SHIRE");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
musicInfo.put("time", 194);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 6);
musicInfo.put("title", "Blueming");
musicInfo.put("album", "Love poem");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);
%>
<div>
	<h4 class="mt-2 font-weight-bold">곡 정보</h4>
</div>
<div class="border border-success p-3 d-flex">
	<%
	//1. id로 넘어오는 경우
	Map<String, Object> item = null;
	if(request.getParameter("no") != null){
		int no = Integer.parseInt(request.getParameter("no"));
		for(Map<String, Object> music : musicList){
			if(no == (int)music.get("id")){
				item = music;
				break;
			}
		}
	}
	
	if(request.getParameter("search") != null){
		String search = request.getParameter("search");
		for(Map<String, Object> music : musicList){
			if(search.equals(music.get("title"))){
				item = music;
				break;
			}
		}
	}
	%>
	<img alt="앨범사진" src="<%=item.get("thumbnail")%>" width="200px">
	<div class="ml-3">
		<h1><%=item.get("title")%></h1>
		<div class="text-success pt-2 pr-2 pb-2">
			<h5 class="font-weight-bold"><%=item.get("singer")%></h5>
		</div>
		<div>
			<table class="text-secondary">
				<tr>
					<td>앨범</td>
					<td class="pl-2"><%=item.get("album")%></td>
				</tr>
				<tr>
					<td>재생시간</td>
					<td class="pl-2"><%=(int)item.get("time") / 60%> : <%=(int)item.get("time") % 60%></td>
				</tr>
				<tr>
					<td>작곡가</td>
					<td class="pl-2"><%=item.get("composer")%></td>
				</tr>
				<tr>
					<td>작사가</td>
					<td class="pl-2"><%=item.get("lyricist")%></td>
				</tr>
			</table>
		</div>
	</div>
</div>
<div>
	<h4 class="mt-4 font-weight-bold">가사</h4>
</div>
<hr>
<div>가사 정보 없음</div>