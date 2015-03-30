//fixes social addthis links
var addthis;
addthis = function() {
    var script = 'http://s7.addthis.com/js/300/addthis_widget.js#pubid=ra-55181f164231a203#async=1';
      // Remove all global properties set by addthis, otherwise it won't reinitialize
      for (var i in window) {
        if (/^addthis/.test(i) || /^_at/.test(i)) {
          delete window[i];
        }
      }
      window.addthis_share = null;

      // Remove all global properties set by addthis, otherwise it won't reinitialize
      if(window.addthis) {
           window.addthis = null;
            window._adr = null;
            window._atc = null;
            window._atd = null;
            window._ate = null;
            window._atr = null;
            window._atw = null;
      }

      // Finally, load addthis
      $.getScript(script, function(){
        addthis.toolbox('.addthis_toolbox');
      });
}

$(document).ready(addthis);
$(document).on('page:load', addthis);
$(document).on('page:change', addthis);


// // turbolinks addthis
// var initAdthis;
 
// initAdthis = function(){
//     // Remove all global properties set by addthis, otherwise it won't reinitialize
//     for (var i in window) {
//         if (/^addthis/.test(i) || /^_at/.test(i)) {
//             delete window[i];
//         }
//     }
//     window.addthis_share = null;
 
//     // Finally, load addthis
//     $.getScript("http://s7.addthis.com/js/300/addthis_widget.js#pubid=YOUR-PUBLISHER-ID");
// }
 
// // Trigger the function on both jquery's ready event and turbolinks page:change event
// $(document).on('ready page:change', function() {
//     initAdthis();
// });