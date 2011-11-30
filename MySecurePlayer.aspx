<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>

	<%-- This is your flowplayer code.  To set its parameters, please see the code-behind! --%>
    <script type="text/javascript" src="http://player.netromedia.com/flowplayer-3.2.6.min.js"></script> 
	<div id="player" style="display:block;width:540px;height:270px;"></div>
	<script>
		$f("player", "http://player.netromedia.com/flowplayer.commercial-3.2.7.swf", {
			<%= (String.IsNullOrEmpty(sFLOWPLAYER_KEY)) ? "" : "key: '" + sFLOWPLAYER_KEY + "'," %>
			clip: {
				baseUrl: '<%= "rtmp://" + sPRIMARY_DNS + "/" + sPUB_POINT  %>',
				provider: 'netromedia',
				url: escape('<%= sSTREAM_NAME + sQUERY_STRING %>'),
				autoPlay: false
			},
			plugins: {
				netromedia: {
					url: 'http://player.netromedia.com/flowplayer.rtmp-3.2.3.swf',
					netConnectionUrl: '<%= "rtmp://" + sPRIMARY_DNS + "/" + sPUB_POINT  %>'
				}
			}
		});
	</script>

	<br />

	<%-- This anchor links to an http version of the stream (used by HTML5 players, iPads/iPods/iPhones) --%>
	<a href="<%= "http://" + sPRIMARY_DNS + "/" + sPUB_POINT + "/" + sSTREAM_NAME + "/playlist.m3u8" + sQUERY_STRING %>">iPod/iPhone/iPad link</a> 
	
	<br />

	<%-- This anchor links to an rtsp version of the stream (used by Androids and Blackberries) --%>
	<a href="<%= "rtsp://" + sPRIMARY_DNS + "/" + sPUB_POINT + "/" + sSTREAM_NAME + sQUERY_STRING %>">Android/Blackberry link</a>
	
	<br />

</body>
</html>
