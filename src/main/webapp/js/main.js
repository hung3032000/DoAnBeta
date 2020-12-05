$(document).ready(function () {
  // hover
  $("#WOMEN").hover(function () {
    if ($("#WOMEN").hasClass("hover")) {
      $("#WOMEN").removeClass("hover");
    } else {
      $("#WOMEN").addClass("hover");
    }
  });
  $("#MEN").hover(function () {
    if ($("#MEN").hasClass("hover")) {
      $("#MEN").removeClass("hover");
    } else {
      $("#MEN").addClass("hover");
    }
  });
  $("#signin").hover(function () {
    if ($("#signin").hasClass("hover")) {
      $("#signin").removeClass("hover");
    } else {
      $("#signin").addClass("hover");
    }
  });
  $(".miniwishlist").hover(function () {
    if ($(".miniwishlist").hasClass("hover")) {
      $(".miniwishlist").removeClass("hover");
    } else {
      $(".miniwishlist").addClass("hover");
    }
  });
  $(".minicart").hover(function () {
    if ($(".minicart").hasClass("hover")) {
      $(".minicart").removeClass("hover");
    } else {
      $(".minicart").addClass("hover");
    }
  });
  $("#Collections").hover(function () {
    if ($("#Collections").hasClass("hover")) {
      $("#Collections").removeClass("hover");
    } else {
      $("#Collections").addClass("hover");
    }
  });
  //dang test
    $(".product-tile").hover(function () {
    if ($(".product-tile").hasClass("hover")) {
      $(".product-tile").removeClass("hover");
    } else {
      $(".product-tile").addClass("hover");
    }
  });
  // click
  $(".search-link-container").click(function () {
    if ($("#search").hasClass("open")) {
      $("#search").removeClass("open");
    } else {
      $("#search").addClass("open");
    }
  });
  $(".close-search").click(function () {
    $("#search").removeClass("open");
  });
//   $("#1").click(function () {
//     if ($(".form-field-wrapper").hasClass("focus")) {
//         $("#2").addClass("red");
//       } 
//       else if ( $("#2").hasClass("red")){
//         $("#2").removeClass("red");
//       }
//   });

  // login
  const inputs = document.querySelectorAll(".form-field");
  function addcl() {
    let parent = this.parentNode.parentNode;
    parent.classList.add("focus");
  }
  function remcl() {
    let parent = this.parentNode.parentNode;
    if (this.value == "") {
      parent.classList.remove("focus");
    }
  }
  inputs.forEach((input) => {
    input.addEventListener("focus", addcl);
    input.addEventListener("blur", remcl);
  });




  // scroll
  var position = $(window).scrollTop();
  $(window).scroll(function () {
    var scroll = $(window).scrollTop();
    if (scroll > position) {
      $("html").addClass("sticky-header-hidden");
    } else {
      $("html").removeClass("sticky-header-hidden");
    }
    position = scroll;
  });
});
