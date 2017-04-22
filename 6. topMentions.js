<script>

(function ($) {
    $.fn.clickToggle = function (func1, func2) {
        var funcs = [func1, func2];
        this.data('toggleclicked', 0);
        this.click(function () {
            var data = $(this).data();
            var tc = data.toggleclicked;
            $.proxy(funcs[tc], this)();
            data.toggleclicked = (tc + 1) % 2;
        });
        return this;
    };
}(jQuery));

// code developed thanks to this forum: http://stackoverflow.com/questions/554273/changing-the-image-source-using-jquery

$('#btnCandidate').on({
	'click': function(){
  	$('#placeholder').attr('src', 'https://github.com/alexandrama/scraping-twitter-for-mentions/blob/master/wordsAsCandidate_Rplot.jpeg?raw=true');
  }
});

$('#btnPeotus').on({
	'click': function(){
  	$('#placeholder').attr('src', 'https://github.com/alexandrama/scraping-twitter-for-mentions/blob/master/wordsAsPeotus_Rplot.jpeg?raw=true');
  }
});

$('#btnPotus').on({
	'click': function(){
  	$('#placeholder').attr('src', 'https://github.com/alexandrama/scraping-twitter-for-mentions/blob/master/wordsAsPotus_Rplot.jpeg?raw=true');
  }
});

</script>
