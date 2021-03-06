// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs

//= require_tree .

$(document).ready(function(){
    $('.contact').on('click',function(){
        $(this).toggleClass('current');
        $('.contact_container').slideToggle();
        if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
            if (target.length) {
                $('html,body').animate({
                    scrollTop: target.offset().top
                }, 1000);
                return false;
            }
        }
    });
    $('.close').on('click', function(){
        $('.contact_container').slideToggle();
        $('.contact').toggleClass('current');
    });


    $('a[href*=#]:not([href=#])').click(function() {
        if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
            if (target.length) {
                if (navigator.userAgent.match(/(iPod|iPhone|iPad|Android)/)) {
                    window.scrollTo(target.offset().left,target.offset().top);
                }else{
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                }
                return false;
            }
        }
    });

    if($('.contact_container .errors, .contact_container .success').length > 0){
        $('.contact').click();
    }

});

//= require turbolinks
