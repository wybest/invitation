

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>结婚相册</title>
    <meta name="author" content="Ste Brennan - Code Computerlove - http://www.codecomputerlove.com/" />
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <link href="style/style16/photoswipe.css" type="text/css" rel="stylesheet">

    <script type="text/javascript" src="style/style16/klass.min.js"></script>
    <script type="text/javascript" src="style/style16/code.photoswipe-3.0.5.min.js"></script>
</head>
<body>
<script type="text/javascript">

    (function(window, PhotoSwipe){

        document.addEventListener('DOMContentLoaded', function(){

            var
                    options = {
                        preventHide: true,
                        getImageSource: function(obj){
                            return obj.url;
                        },
                        getImageCaption: function(obj){
                            return obj.caption;
                        }
                    },
                    instance = PhotoSwipe.attach(
                            [
                                {#section name=customer loop=$images #}
                                { url: 'marryimg/{#$images[customer]#}'},
                                {#/section#}
                            ],






                            options
                    );

            instance.show(0);

        }, false);


    }(window, window.Code.PhotoSwipe));

</script>

</body>
</html>