<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="cruxServicesWeb.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.10.2.min.js"></script>
     <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false">
 </script> 

   <script type="text/javascript">
       $(document).ready(function () {
           var map;
           var elevator;
           var myOptions = {
               zoom: 10,
               center: new google.maps.LatLng(6.9215305, 79.8563022),
               mapTypeId: 'roadmap'
           };
           map = new google.maps.Map($('#map_canvas')[0], myOptions);

           var addresses = [<%=HiddenField1.Value%>];

           for (var x = 0; x < addresses.length; x++) {
               $.getJSON('http://maps.googleapis.com/maps/api/geocode/json?address=' + addresses[x] + '&sensor=false', null, function (data) {
                   var p = data.results[0].geometry.location
                   var latlng = new google.maps.LatLng(p.lat, p.lng);
                   new google.maps.Marker({
                       position: latlng,
                       map: map
                   });

               });
           }

       });
    </script>
    <style type="text/css">
        #map_canvas{
        width:800px; 
        height:300px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="map_canvas" ></div>
        <asp:HiddenField ID="HiddenField1" runat="server" />
    </form>
    
</body>
</html>
