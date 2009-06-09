def mock_inlink_data_successful_response
<<-RESPONSE
HTTP/1.1 200 OK
Date: Mon, 08 Jun 2009 18:36:57 GMT
P3P: policyref="http://info.yahoo.com/w3c/p3p.xml", CP="CAO DSP COR CUR ADM DEV TAI PSA PSD IVAi IVDi CONi TELo OTPi OUR DELi SAMi OTRi UNRi PUBi IND PHY ONL UNI PUR FIN COM NAV INT DEM CNT STA POL HEA PRE LOC GOV"
Cache-Control: private
Connection: close
Transfer-Encoding: chunked
Content-Type: text/xml; charset=utf-8

<?xml version='1.0' encoding='UTF-8'?>
<ResultSet
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns="urn:yahoo:srch"
    xsi:schemaLocation="urn:yahoo:srch http://api.search.yahoo.com/SiteExplorerService/V1/InlinkDataResponse.xsd"
    totalResultsAvailable="941822"
    firstResultPosition="1"
    totalResultsReturned="2">
        <Result>
        <Title>Common Dreams News Center</Title>
        <Url>http://www.commondreams.org/</Url>
        <ClickUrl>http://www.commondreams.org/</ClickUrl>
    </Result>
    <Result>
        <Title>Scrub The Web</Title>
        <Url>http://www.scrubtheweb.com/</Url>
        <ClickUrl>http://www.scrubtheweb.com/</ClickUrl>
    </Result>
</ResultSet>
<!-- fe02.sitex.search.ac2.yahoo.com uncompressed/chunked Mon Jun  8 11:36:57 PDT 2009 -->
<!-- ws01.ydn.re2.yahoo.com uncompressed/chunked Mon Jun  8 11:36:57 PDT 2009 -->
RESPONSE
end

def mock_inlink_data_successful_response_set_1
<<-RESPONSE
HTTP/1.1 200 OK
Date: Tue, 09 Jun 2009 19:40:49 GMT
P3P: policyref="http://info.yahoo.com/w3c/p3p.xml", CP="CAO DSP COR CUR ADM DEV TAI PSA PSD IVAi IVDi CONi TELo OTPi OUR DELi SAMi OTRi UNRi PUBi IND PHY ONL UNI PUR FIN COM NAV INT DEM CNT STA POL HEA PRE LOC GOV"
Cache-Control: private
Connection: close
Transfer-Encoding: chunked
Content-Type: text/xml; charset=utf-8

<?xml version='1.0' encoding='UTF-8'?>
<ResultSet
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns="urn:yahoo:srch"
    xsi:schemaLocation="urn:yahoo:srch http://api.search.yahoo.com/SiteExplorerService/V1/InlinkDataResponse.xsd"
    totalResultsAvailable="99"
    firstResultPosition="1"
    totalResultsReturned="50">
        <Result>
        <Title>PHP: Hypertext Preprocessor</Title>
        <Url>http://www.php.net/</Url>
        <ClickUrl>http://www.php.net/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo!</Title>
        <Url>http://www.yahoo.com/</Url>
        <ClickUrl>http://www.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Flickr</Title>
        <Url>http://www.flickr.com/</Url>
        <ClickUrl>http://www.flickr.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Babel Fish</Title>
        <Url>http://babelfish.yahoo.com/</Url>
        <ClickUrl>http://babelfish.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Mighty Seek - Web Application Security Podcast and Blog &quot; PodPress</Title>
        <Url>http://www.mightyseek.com/podpress/</Url>
        <ClickUrl>http://www.mightyseek.com/podpress/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Groups</Title>
        <Url>http://groups.yahoo.com/</Url>
        <ClickUrl>http://groups.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Mail</Title>
        <Url>http://mail.yahoo.com/</Url>
        <ClickUrl>http://mail.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Sign in to Yahoo!</Title>
        <Url>https://login.yahoo.com/config/login?.src=flickr&amp;.pc=5134&amp;.scrumb=0&amp;.pd=c%3DE0.GahOp2e4MjkX.5l2HgAoLkpmyPvccpVM-&amp;.intl=us&amp;.done=https%3A%2F%2Flogin.yahoo.com%2Fconfig%2Fvalidate%3F.src%3Dflickr%26.pc%3D5134%26.scrumb%3D0%26.pd%3Dc%253DE0.GahOp2e4MjkX.5l2HgAoLkpmyPvccpVM-%26.intl%3Dus%26.done%3Dhttp%253A%252F%252Fwww.flickr.com%252Fsignin%252Fyahoo%252F%253Fredir%253D%25252Fbadge.gne</Url>
        <ClickUrl>https://login.yahoo.com/config/login?.src=flickr&amp;.pc=5134&amp;.scrumb=0&amp;.pd=c%3DE0.GahOp2e4MjkX.5l2HgAoLkpmyPvccpVM-&amp;.intl=us&amp;.done=https%3A%2F%2Flogin.yahoo.com%2Fconfig%2Fvalidate%3F.src%3Dflickr%26.pc%3D5134%26.scrumb%3D0%26.pd%3Dc%253DE0.GahOp2e4MjkX.5l2HgAoLkpmyPvccpVM-%26.intl%3Dus%26.done%3Dhttp%253A%252F%252Fwww.flickr.com%252Fsignin%252Fyahoo%252F%253Fredir%253D%25252Fbadge.gne</ClickUrl>
    </Result>
    <Result>
        <Title>Refdesk.com</Title>
        <Url>http://www.refdesk.com/</Url>
        <ClickUrl>http://www.refdesk.com/</ClickUrl>
    </Result>
    <Result>
        <Title>My Yahoo!</Title>
        <Url>http://my.yahoo.com/</Url>
        <ClickUrl>http://my.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Weather</Title>
        <Url>http://weather.yahoo.com/</Url>
        <ClickUrl>http://weather.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Chevrolet</Title>
        <Url>http://www.chevrolet.com/</Url>
        <ClickUrl>http://www.chevrolet.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! People Search</Title>
        <Url>http://people.yahoo.com/</Url>
        <ClickUrl>http://people.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Privacy Policy</Title>
        <Url>http://privacy.yahoo.com/privacy/us/</Url>
        <ClickUrl>http://privacy.yahoo.com/privacy/us/</ClickUrl>
    </Result>
    <Result>
        <Title>Arts &amp;amp; Letters Daily</Title>
        <Url>http://www.aldaily.com/</Url>
        <ClickUrl>http://www.aldaily.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Answers</Title>
        <Url>http://answers.yahoo.com/</Url>
        <ClickUrl>http://answers.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>DreamHost Blog</Title>
        <Url>http://blog.dreamhost.com/</Url>
        <ClickUrl>http://blog.dreamhost.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Search.travel .:Search the Web for all your Travel needs!:.</Title>
        <Url>http://www.search.travel/</Url>
        <ClickUrl>http://www.search.travel/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Pipes</Title>
        <Url>http://pipes.yahoo.com/</Url>
        <ClickUrl>http://pipes.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Signatunes - add music signatunes to your emails, blog and forum posts ...</Title>
        <Url>http://www.foxytunes.com/signatunes/</Url>
        <ClickUrl>http://www.foxytunes.com/signatunes/</ClickUrl>
    </Result>
    <Result>
        <Title>1 2 3 Submit PRO</Title>
        <Url>http://websitesubmit.hypermart.net/</Url>
        <ClickUrl>http://websitesubmit.hypermart.net/</ClickUrl>
    </Result>
    <Result>
        <Title>Thermoforming Machine,Thermoforming Equipment,Plastic Machinery,Plastic ...</Title>
        <Url>http://www.plastic-thermoforming-machine.com/</Url>
        <ClickUrl>http://www.plastic-thermoforming-machine.com/</ClickUrl>
    </Result>
    <Result>
        <Title>James Randi Educational Foundation</Title>
        <Url>http://www.randi.org/</Url>
        <ClickUrl>http://www.randi.org/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! TV</Title>
        <Url>http://tv.yahoo.com/</Url>
        <ClickUrl>http://tv.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Jumpcut</Title>
        <Url>http://www.jumpcut.com/</Url>
        <ClickUrl>http://www.jumpcut.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Plastic Thermoforming Machinery,thermoforming Equipment,cup making ...</Title>
        <Url>http://www.plastic-thermoforming-machine.com/product.htm</Url>
        <ClickUrl>http://www.plastic-thermoforming-machine.com/product.htm</ClickUrl>
    </Result>
    <Result>
        <Title>Zimbra</Title>
        <Url>http://www.zimbra.com/</Url>
        <ClickUrl>http://www.zimbra.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Site Explorer - Yahoo! Site Explorer</Title>
        <Url>http://siteexplorer.search.yahoo.com/</Url>
        <ClickUrl>http://siteexplorer.search.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Flickr: Explore interesting photos from the last 7 days in FlickrLand...</Title>
        <Url>http://www.flickr.com/explore/interesting/7days/</Url>
        <ClickUrl>http://www.flickr.com/explore/interesting/7days/</ClickUrl>
    </Result>
    <Result>
        <Title>Plastic Machine,Vacuum Forming Equipment,Vacuum Forming Machines ...</Title>
        <Url>http://www.plastic-thermoforming-machine.com/about.htm</Url>
        <ClickUrl>http://www.plastic-thermoforming-machine.com/about.htm</ClickUrl>
    </Result>
    <Result>
        <Title>Phoca</Title>
        <Url>http://www.phoca.cz/</Url>
        <ClickUrl>http://www.phoca.cz/</ClickUrl>
    </Result>
    <Result>
        <Title>CEOExpress</Title>
        <Url>http://www.ceoexpress.com/</Url>
        <ClickUrl>http://www.ceoexpress.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Small Business</Title>
        <Url>http://smallbusiness.yahoo.com/</Url>
        <ClickUrl>http://smallbusiness.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Flickr: Creative Commons</Title>
        <Url>http://www.flickr.com/creativecommons/</Url>
        <ClickUrl>http://www.flickr.com/creativecommons/</ClickUrl>
    </Result>
    <Result>
        <Title>AT&amp;amp;T</Title>
        <Url>http://www.att.net/s/s.dll?ep=16504&amp;only=y&amp;ch=wh&amp;_lid=677&amp;_lnm=yahoo+smallbiz+webhosting&amp;site=attportal</Url>
        <ClickUrl>http://www.att.net/s/s.dll?ep=16504&amp;only=y&amp;ch=wh&amp;_lid=677&amp;_lnm=yahoo+smallbiz+webhosting&amp;site=attportal</ClickUrl>
    </Result>
    <Result>
        <Title>Web site promotion directory, Professional webdesign services - website ...</Title>
        <Url>http://www.allthewebsites.org/</Url>
        <ClickUrl>http://www.allthewebsites.org/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Voice - Make Free and Low Cost Calls From Your PC</Title>
        <Url>http://www.dialpad.com/</Url>
        <ClickUrl>http://www.dialpad.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Search</Title>
        <Url>http://search.yahoo.com/</Url>
        <ClickUrl>http://search.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Personals - Online Dating for Singles</Title>
        <Url>http://personals.yahoo.com/</Url>
        <ClickUrl>http://personals.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Flickr: Photos &amp;amp; video from everyone in Flickr</Title>
        <Url>http://www.flickr.com/photos/</Url>
        <ClickUrl>http://www.flickr.com/photos/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo!</Title>
        <Url>http://podcasts.yahoo.com/</Url>
        <ClickUrl>http://podcasts.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>About Applications that Use Yahoo! Web Services</Title>
        <Url>http://developer.yahoo.net/about</Url>
        <ClickUrl>http://developer.yahoo.net/about</ClickUrl>
    </Result>
    <Result>
        <Title>Popular Tags on Flickr</Title>
        <Url>http://www.flickr.com/photos/tags/</Url>
        <ClickUrl>http://www.flickr.com/photos/tags/</ClickUrl>
    </Result>
    <Result>
        <Title>Camera Finder - Flickr</Title>
        <Url>http://www.flickr.com/cameras</Url>
        <ClickUrl>http://www.flickr.com/cameras</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! YSlow for Firebug</Title>
        <Url>http://developer.yahoo.com/yslow/</Url>
        <ClickUrl>http://developer.yahoo.com/yslow/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Publisher Network</Title>
        <Url>http://publisher.yahoo.com/</Url>
        <ClickUrl>http://publisher.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Search Engine Optimization - PageRank</Title>
        <Url>http://www.pagerank.net/</Url>
        <ClickUrl>http://www.pagerank.net/</ClickUrl>
    </Result>
    <Result>
        <Title>Flickr: Explore!</Title>
        <Url>http://www.flickr.com/explore/</Url>
        <ClickUrl>http://www.flickr.com/explore/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Developer Network</Title>
        <Url>http://developer.yahoo.com/</Url>
        <ClickUrl>http://developer.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Calendar</Title>
        <Url>http://calendar.yahoo.com/</Url>
        <ClickUrl>http://calendar.yahoo.com/</ClickUrl>
    </Result>
</ResultSet>
<!-- fe03.sitex.search.sk1.yahoo.com uncompressed/chunked Tue Jun  9 12:40:49 PDT 2009 -->
<!-- ws02.ydn.gq1.yahoo.com uncompressed/chunked Tue Jun  9 12:40:49 PDT 2009 -->
RESPONSE
end

def mock_inlink_data_successful_response_set_2
<<-RESPONSE
HTTP/1.1 200 OK
Date: Tue, 09 Jun 2009 19:39:54 GMT
P3P: policyref="http://info.yahoo.com/w3c/p3p.xml", CP="CAO DSP COR CUR ADM DEV TAI PSA PSD IVAi IVDi CONi TELo OTPi OUR DELi SAMi OTRi UNRi PUBi IND PHY ONL UNI PUR FIN COM NAV INT DEM CNT STA POL HEA PRE LOC GOV"
Cache-Control: private
Connection: close
Transfer-Encoding: chunked
Content-Type: text/xml; charset=utf-8

<?xml version='1.0' encoding='UTF-8'?>
<ResultSet
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns="urn:yahoo:srch"
    xsi:schemaLocation="urn:yahoo:srch http://api.search.yahoo.com/SiteExplorerService/V1/InlinkDataResponse.xsd"
    totalResultsAvailable="99"
    firstResultPosition="51"
    totalResultsReturned="49">
        <Result>
        <Title>Yahoo! Developer Network</Title>
        <Url>http://developer.yahoo.com/</Url>
        <ClickUrl>http://developer.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Calendar</Title>
        <Url>http://calendar.yahoo.com/</Url>
        <ClickUrl>http://calendar.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Mail: The best web-based email!</Title>
        <Url>https://login.yahoo.com/config/login_verify2?.intl=us&amp;.src=ym</Url>
        <ClickUrl>https://login.yahoo.com/config/login_verify2?.intl=us&amp;.src=ym</ClickUrl>
    </Result>
    <Result>
        <Title>Declare Yourself</Title>
        <Url>http://www.declareyourself.com/</Url>
        <ClickUrl>http://www.declareyourself.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Welcome to Yahoo! Careers</Title>
        <Url>http://careers.yahoo.com/</Url>
        <ClickUrl>http://careers.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>The Paperboy</Title>
        <Url>http://www.thepaperboy.com/</Url>
        <ClickUrl>http://www.thepaperboy.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Upcoming - Discover and Share Local Events</Title>
        <Url>http://upcoming.yahoo.com/</Url>
        <ClickUrl>http://upcoming.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Atlanta DJ-DJ&quot;E The Music Man Wedding, Disc Jockeys,Georgia,Disc Jockey ...</Title>
        <Url>http://www.djethemusicmaster.com/</Url>
        <ClickUrl>http://www.djethemusicmaster.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Local Internet Marketing | Online Advertising | SEO | SEM ...</Title>
        <Url>http://www.planetsearch.com/</Url>
        <ClickUrl>http://www.planetsearch.com/</ClickUrl>
    </Result>
    <Result>
        <Title>My Web Beta from Yahoo! Search</Title>
        <Url>http://myweb2.search.yahoo.com/</Url>
        <ClickUrl>http://myweb2.search.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Eric Conveys an Emotion</Title>
        <Url>http://www.emotioneric.com/</Url>
        <ClickUrl>http://www.emotioneric.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Profiles</Title>
        <Url>http://profiles.yahoo.com/</Url>
        <ClickUrl>http://profiles.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Not Milk!</Title>
        <Url>http://www.notmilk.com/</Url>
        <ClickUrl>http://www.notmilk.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Search Blog</Title>
        <Url>http://www.ysearchblog.com/</Url>
        <ClickUrl>http://www.ysearchblog.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Flickr: Explore everyone&apos;s photos on a Map</Title>
        <Url>http://www.flickr.com/map/</Url>
        <ClickUrl>http://www.flickr.com/map/</ClickUrl>
    </Result>
    <Result>
        <Title>Map Builder::Rapid mashup development tool for Google and Yahoo maps!</Title>
        <Url>http://www.mapbuilder.net/</Url>
        <ClickUrl>http://www.mapbuilder.net/</ClickUrl>
    </Result>
    <Result>
        <Title>Flickr Services</Title>
        <Url>http://www.flickr.com/services/api/</Url>
        <ClickUrl>http://www.flickr.com/services/api/</ClickUrl>
    </Result>
    <Result>
        <Title>Best Practices for Speeding Up Your Web Site</Title>
        <Url>http://developer.yahoo.com/performance/rules.html</Url>
        <ClickUrl>http://developer.yahoo.com/performance/rules.html</ClickUrl>
    </Result>
    <Result>
        <Title>Fire Eagle</Title>
        <Url>http://fireeagle.yahoo.net/</Url>
        <ClickUrl>http://fireeagle.yahoo.net/</ClickUrl>
    </Result>
    <Result>
        <Title>Site Explorer - Yahoo! Site Explorer</Title>
        <Url>https://siteexplorer.search.yahoo.com/</Url>
        <ClickUrl>https://siteexplorer.search.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Sign in to Yahoo!</Title>
        <Url>https://login.yahoo.com/config/login?.src=flickr&amp;.scrumb=0&amp;new=1&amp;.pd=c%3DE0.GahOp2e4MjkX.5l2HgAoLkpmyPvccpVM-&amp;.intl=us&amp;.logout=1&amp;.direct=1&amp;.done=https%3A%2F%2Flogin.yahoo.com%2Fconfig%2Fvalidate%3F.src%3Dflickr%26.pc%3D5134%26.scrumb%3D0%26.pd%3Dc%253DE0.GahOp2e4MjkX.5l2HgAoLkpmyPvccpVM-%26.intl%3Dus%26.done%3Dhttp%253A%252F%252Fwww.flickr.com%252Fsignin%252Fyahoo%252F</Url>
        <ClickUrl>https://login.yahoo.com/config/login?.src=flickr&amp;.scrumb=0&amp;new=1&amp;.pd=c%3DE0.GahOp2e4MjkX.5l2HgAoLkpmyPvccpVM-&amp;.intl=us&amp;.logout=1&amp;.direct=1&amp;.done=https%3A%2F%2Flogin.yahoo.com%2Fconfig%2Fvalidate%3F.src%3Dflickr%26.pc%3D5134%26.scrumb%3D0%26.pd%3Dc%253DE0.GahOp2e4MjkX.5l2HgAoLkpmyPvccpVM-%26.intl%3Dus%26.done%3Dhttp%253A%252F%252Fwww.flickr.com%252Fsignin%252Fyahoo%252F</ClickUrl>
    </Result>
    <Result>
        <Title>Hot Sheet</Title>
        <Url>http://www.hotsheet.com/</Url>
        <ClickUrl>http://www.hotsheet.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Mail: The best web-based email!</Title>
        <Url>https://login.yahoo.com/config/login_verify2?&amp;.src=ym</Url>
        <ClickUrl>https://login.yahoo.com/config/login_verify2?&amp;.src=ym</ClickUrl>
    </Result>
    <Result>
        <Title>Flickr Services</Title>
        <Url>http://www.flickr.com/services/</Url>
        <ClickUrl>http://www.flickr.com/services/</ClickUrl>
    </Result>
    <Result>
        <Title>Carnegie Mellon University - Department of Computer Science</Title>
        <Url>http://www.cs.cmu.edu/</Url>
        <ClickUrl>http://www.cs.cmu.edu/</ClickUrl>
    </Result>
    <Result>
        <Title>FoxyTunes</Title>
        <Url>http://www.foxytunes.com/</Url>
        <ClickUrl>http://www.foxytunes.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Flickr Community Guidelines</Title>
        <Url>http://www.flickr.com/guidelines.gne</Url>
        <ClickUrl>http://www.flickr.com/guidelines.gne</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Mail: The best web-based email!</Title>
        <Url>https://login.yahoo.com/config/mail?.intl=us</Url>
        <ClickUrl>https://login.yahoo.com/config/mail?.intl=us</ClickUrl>
    </Result>
    <Result>
        <Title>Search Engine Marketing Professional Organization</Title>
        <Url>http://www.sempo.org/</Url>
        <ClickUrl>http://www.sempo.org/</ClickUrl>
    </Result>
    <Result>
        <Title>Flickr: Tour</Title>
        <Url>http://www.flickr.com/tour/</Url>
        <ClickUrl>http://www.flickr.com/tour/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Image Search</Title>
        <Url>http://images.search.yahoo.com/</Url>
        <ClickUrl>http://images.search.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Gallery - Discover and share applications that use Yahoo! ...</Title>
        <Url>http://gallery.yahoo.com/</Url>
        <ClickUrl>http://gallery.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Flickr: Upgrade to a pro account</Title>
        <Url>http://www.flickr.com/upgrade/</Url>
        <ClickUrl>http://www.flickr.com/upgrade/</ClickUrl>
    </Result>
    <Result>
        <Title>ScrappleFace</Title>
        <Url>http://www.scrappleface.com/</Url>
        <ClickUrl>http://www.scrappleface.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Famous Birthdays</Title>
        <Url>http://www.famousbirthdays.com/</Url>
        <ClickUrl>http://www.famousbirthdays.com/</ClickUrl>
    </Result>
    <Result>
        <Title>AddToAny - Share / Bookmark Button, Email Button, Subscribe Button Widgets</Title>
        <Url>http://www.addtoany.com/share_save</Url>
        <ClickUrl>http://www.addtoany.com/share_save</ClickUrl>
    </Result>
    <Result>
        <Title>Flickr: Search</Title>
        <Url>http://www.flickr.com/search/</Url>
        <ClickUrl>http://www.flickr.com/search/</ClickUrl>
    </Result>
    <Result>
        <Title>Flickr: Tools to upload and share</Title>
        <Url>http://www.flickr.com/tools/</Url>
        <ClickUrl>http://www.flickr.com/tools/</ClickUrl>
    </Result>
    <Result>
        <Title>Sign in to Yahoo!</Title>
        <Url>https://login.yahoo.com/config/login?.src=flickr&amp;.pc=5134&amp;.scrumb=0&amp;.pd=c%3DE0.GahOp2e4MjkX.5l2HgAoLkpmyPvccpVM-&amp;.intl=us&amp;.done=https%3A%2F%2Flogin.yahoo.com%2Fconfig%2Fvalidate%3F.src%3Dflickr%26.pc%3D5134%26.scrumb%3D0%26.pd%3Dc%253DE0.GahOp2e4MjkX.5l2HgAoLkpmyPvccpVM-%26.intl%3Dus%26.done%3Dhttp%253A%252F%252Fwww.flickr.com%252Fsignin%252Fyahoo%252F</Url>
        <ClickUrl>https://login.yahoo.com/config/login?.src=flickr&amp;.pc=5134&amp;.scrumb=0&amp;.pd=c%3DE0.GahOp2e4MjkX.5l2HgAoLkpmyPvccpVM-&amp;.intl=us&amp;.done=https%3A%2F%2Flogin.yahoo.com%2Fconfig%2Fvalidate%3F.src%3Dflickr%26.pc%3D5134%26.scrumb%3D0%26.pd%3Dc%253DE0.GahOp2e4MjkX.5l2HgAoLkpmyPvccpVM-%26.intl%3Dus%26.done%3Dhttp%253A%252F%252Fwww.flickr.com%252Fsignin%252Fyahoo%252F</ClickUrl>
    </Result>
    <Result>
        <Title>About Flickr</Title>
        <Url>http://www.flickr.com/about/</Url>
        <ClickUrl>http://www.flickr.com/about/</ClickUrl>
    </Result>
    <Result>
        <Title>Flickr: Do more!</Title>
        <Url>http://www.flickr.com/do/more/</Url>
        <ClickUrl>http://www.flickr.com/do/more/</ClickUrl>
    </Result>
    <Result>
        <Title>Flickr: Help</Title>
        <Url>http://www.flickr.com/help/faq/</Url>
        <ClickUrl>http://www.flickr.com/help/faq/</ClickUrl>
    </Result>
    <Result>
        <Title>Flickr: Help</Title>
        <Url>http://www.flickr.com/help/</Url>
        <ClickUrl>http://www.flickr.com/help/</ClickUrl>
    </Result>
    <Result>
        <Title>Site Explorer - Submit</Title>
        <Url>https://siteexplorer.search.yahoo.com/submit</Url>
        <ClickUrl>https://siteexplorer.search.yahoo.com/submit</ClickUrl>
    </Result>
    <Result>
        <Title>Yahoo! Avatars</Title>
        <Url>http://avatars.yahoo.com/</Url>
        <ClickUrl>http://avatars.yahoo.com/</ClickUrl>
    </Result>
    <Result>
        <Title>Flickr: The Commons</Title>
        <Url>http://www.flickr.com/commons</Url>
        <ClickUrl>http://www.flickr.com/commons</ClickUrl>
    </Result>
    <Result>
        <Title>Flickr</Title>
        <Url>http://www.flickr.com/privacy_policy.gne</Url>
        <ClickUrl>http://www.flickr.com/privacy_policy.gne</ClickUrl>
    </Result>
    <Result>
        <Title>Flickr: Search for a group</Title>
        <Url>http://www.flickr.com/search/groups/</Url>
        <ClickUrl>http://www.flickr.com/search/groups/</ClickUrl>
    </Result>
    <Result>
        <Title>All My Faves | Why Search?</Title>
        <Url>http://www.allmyfaves.com/</Url>
        <ClickUrl>http://www.allmyfaves.com/</ClickUrl>
    </Result>
</ResultSet>
<!-- fe03.sitex.search.ac2.yahoo.com uncompressed/chunked Tue Jun  9 12:39:54 PDT 2009 -->
<!-- ws02.ydn.re2.yahoo.com uncompressed/chunked Tue Jun  9 12:39:54 PDT 2009 -->
RESPONSE
end