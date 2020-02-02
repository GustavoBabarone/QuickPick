<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8' />
    <title>Display driving directions</title>
    <meta name='viewport' content='initial-scale=1,maximum-scale=1,user-scalable=no' />

<!-- Framework -->
    
<!-- ---------------------- --------------------------------------- -------------------------->

    <script src='css/mapbox-gl.js'></script>
    <link href='css/mapbox-gl.css' rel='stylesheet' />
    <style>
        body { margin:0; padding:0; }
        #map { position:absolute; top:0; bottom:0; width:100%; }
    </style>

<link rel="stylesheet" href="css/estilosmapa.css">  

</head>
<body>

<script src='css/mapbox-gl-directions.js'></script>
<link rel='stylesheet' href='css/mapbox-gl-directions.css' type='text/css' />
<div id='map'></div>

<script>
mapboxgl.accessToken = 'pk.eyJ1IjoiYWRyaWFuNDQ4IiwiYSI6ImNqejhuYTFoODAzdHUzY2xvanNzdzVwZzgifQ.Bd4gPL7d7ne1GmanV9okeA';
var map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v11',
    center: [-79.4512, 43.6568],
    zoom: 13
});

map.addControl(new MapboxDirections({
    accessToken: mapboxgl.accessToken
}), 'top-left');
</script>
</body>


</html>