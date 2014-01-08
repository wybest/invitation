<!DOCTYPE html>
<html>
<head>
    <title>PhotoSwipe</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />

    <link href="style/style10/styles.css" type="text/css" rel="stylesheet" />
    <link href="style/style10/photoswipe.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="style/style10/klass.min.js"></script>
    <script type="text/javascript" src="style/style10/code.photoswipe-3.0.5-dys.js"></script>

</head>
<body>


<div id="MainContent">
    <ul id="Gallery" class="gallery">
        {#section name=customer loop=$images #}
        <li ><div class="marryimg/{#$images[customer]#}"><img src="marryimg/{#$images[customer]#}" /></div></li>

        {#/section#}
    </ul>

</div>


<script type="text/javascript">
    (function(window, PhotoSwipe){
        var
                options = {},
                instance = PhotoSwipe.attach( window.document.querySelectorAll('#Gallery div'), options );
        instance.show(0);
    }(window, window.Code.PhotoSwipe));
</script>

</body>
</html>
