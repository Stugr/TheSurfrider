<%
	Session.LCID = 3081
	dim popup, section, sectiontitle
	sub openPage(sec,sectitle)
		section = sec
		sectiontitle = sectitle
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>The Surf Rider - <%=sectiontitle%></title>
	<meta name="Title" name="The Surf Rider" />
	<meta name="description" content="The Surf Rider is a restaurant in Torquay, Victoria" />
	<meta name="keywords"content="torquay,restaurant,surf,rider,cafe" />
	<meta name="robots" content="index,follow" />
	<meta name="revisit-after" content="5 days" />
	<meta name="distribution" content="global" />
	<style type="text/css" media="screen">
		@import url(includes/style.css);
	</style>
	<style type="text/css" media="print">
		@import url(includes/print.css);
	</style>
	<script type="text/javascript" src="includes/swfobject.js"></script>
	<script>
		function PopupWindow(path,h,w) {
			bob = window.open(path, "media", "resizable=yes,top=20,left=20,height="+h+",width="+w);
			if(bob) bob.focus();
		}
	</script>
<%
		if popup then
%>
	<style>
		body, html { background-image: none; }
		body { background-color: #efefef; }
	</style>
<%
		end if
	end sub
	
	sub openBody()
%>
</head>
<body>
	<div id="main">
		<div id="flashheader">
		  <a href="about.asp">About</a> | <a href="head_chef.asp">Head Chef</a> | <a href="history.asp">History</a> | <a href="menus.asp">Menus</a> | <a href="functions.asp">Functions</a> | <a href="purchase.asp">Purchase</a>
		</div>
		<script type="text/javascript">
		  var so = new SWFObject("flash/header6.swf", "header", "800", "350", "8", "#000000");
			so.addVariable("section", "<%=section%>");
			so.addVariable("slideshowEndNumber", "6");
			so.addVariable("slideshowHowMany", "6");
			so.addVariable("testimonialsHowMany", "2");
		  so.write("flashheader");
		</script>
		
		<% insertTitle sectionTitle,1 %>
	<div id="content">
<%
	end sub
	
	sub closeBody()
%>
		</div>
	</div>
<%
		closePage
	end sub
	
	sub closePage()
%>
</body>
</html>
<%
'		closeDB
	end sub
	
	dim titleNumber
	titleNumber = 0
	
	sub insertTitle(theTitle, theSize)
		align = "left"
		underline = false
		hr = false
		width = 700
		select case theSize
			case 2
				theSize = 20
			case 3
				theSize = 16
			case 4
				theSize = 14
			case 5
				theSize = 14
				align = "center"
				underline = true
			case 6
				theSize = 20
				align = "center"
				underline = true
			case 7
				theSize = 16
				margintop = 20
			case 8
				theSize = 35
				width = 260
				align = "center"
			case else
				theSize = 30
		end select
%>
		<div class="flashtitlewrapper"><div id="flashtitle<%=titleNumber%>" class="flashtitle"<% if len(margintop) > 0 then %> style="margin-top:<%=margintop%>px;"<% end if %>>
		  <%=theTitle%>
		</div></div>
		<script type="text/javascript">
		  var so = new SWFObject("flash/titles.swf", "titles", "<%=width%>", "30", "8", "#ededed");
			so.addVariable("titles", "<%=theTitle%>");
			so.addVariable("size", "<%=theSize%>");
			so.addVariable("align", "<%=align%>");
			so.addVariable("underline", "<%=underline%>");
			so.addParam("wmode", "transparent");
		  so.write("flashtitle<%=titleNumber%>");
		</script>
<%
		titleNumber = titleNumber + 1
	end sub
%>