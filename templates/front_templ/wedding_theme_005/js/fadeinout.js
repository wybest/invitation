// JavaScript Document for Fade in Out effect

jQuery(document).ready(function () {

if (jQuery.browser.msie && jQuery.browser.version < 7) return; // Don't execute code if it's IE6 or below cause it doesn't support it.


  jQuery(".fadetoicon").fadeTo(1, 1);
  jQuery(".fadetoicon").hover(
    function () {
      jQuery(this).stop().fadeTo("fast", 0.3);
    },
    function () {
      jQuery(this).stop().fadeTo("slow", 1);
    }
  );
  
  jQuery(".fadein").fadeTo(1, 0.3);
  jQuery(".fadein").hover(
    function () {
      jQuery(this).stop().fadeTo("fast", 1);
    },
    function () {
      jQuery(this).stop().fadeTo("slow", 0.3);
    }
  );
 
  
});
