// documentation forked from http://jsfiddle.net/highcharts/kh5jY/;
// scripts that jazzed up the chart adapted from http://www.highcharts.com/docs/chart-concepts/;
// scripts for dropdown legend adapted from http://jsfiddle.net/b8chchjo/ via http://stackoverflow.com/questions/30068197/turn-long-list-of-items-in-highcharts-legend-into-dropdown;

<script type="text/javascript">

    $(document).ready(function() {
    $('#container').highcharts({

      title: {
        text: 'How many times has @realDonaldTrump mentioned the media?'
      },

      subtitle: {
        text: 'Play around with the tool below to see how many times Donald Trump has tweeted about the media as candidate, PEOTUS and POTUS.'
      },

      xAxis: {
        categories: ['as candidate', 'as president-elect', 'as president'],
        gridLineWidth: 1
      },

      yAxis: {
        title: {
          text: 'Number of mentions',
          step: 2,
        },
        tickInterval: 2
      },

      series: [{
        type: 'line',
        name: 'CNN',
        id: 'CNN',
        color: 'green',
        data: [7, 13, 6]
      }, {
        type: 'line',
        name: 'NYTimes',
        id: 'NYTimes',
        color: 'blue',
        data: [1, 10, 12]
      }, {
        type: 'line',
        name: 'fake',
        id: 'fake',
        color: 'black',
        data: [0, 11, 26]
      }, {
        type: 'line',
        name: 'Fox',
        id: 'Fox',
        color: 'red',
        data: [1, 9, 12]
      }],
    }, function(chart) {

      var $customLegend = $('#customLegend').append('<select id="customSelect"></select>').find('select'),
        $option,
        serie;
        
          $customLegend.append('<option>Hide/show term</option>');

          $.each(chart.series, function(i, serie) {
            $customLegend.append('<option>' + serie.name + '</option>');
      });

      $customLegend.change(function() {
        $option = $(this).val();
        serie = chart.get($option);
        if (serie.visible) {
          serie.hide();
        } else {
          serie.show();
        }
      });
    });

    });

  </script>
