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