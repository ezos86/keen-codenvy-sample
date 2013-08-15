<%
    com.codenvy.KeenIO keenIO = new com.codenvy.KeenIO();
    keenIO.onInitialize();
%>

<!DOCTYPE>
<html>
 <head>
  <title>KeenIO</title>
   <script type="text/javascript">
     var Keen=Keen || {configure:function(e){this._cf=e},addEvent:function(e,t,n,i){this._eq=this._eq||[],this._eq.push([e,t,n,i])},setGlobalProperties:function(e){this._gp=e},onChartsReady:function(e){this._ocrq=this._ocrq||[],this._ocrq.push(e)}};(function(){var e=document.createElement("script");e.type="text/javascript",e.async=!0,e.src=("https:"==document.location.protocol?"https://":"http://")+"dc8na2hxrj29i.cloudfront.net/code/keen-2.1.0-min.js";var t=document.getElementsByTagName("script")[0];t.parentNode.insertBefore(e,t)})();
     
     Keen.configure({
        projectId: "51e6875038433153ff000002",
        readKey: "250145b2d3da98e640a5b4860ee7222c1625ac9d17913a5bc6b8740ee8aba5ebbd7abcf5c0d747cc52c50f551bee73160d5dbc73fc76c48e85929ccb53511670e6940cac96ac793367c44d3ed72891164091a3259983ce69affc5175ca3523486330a623073961dae904667dea0b2e05",
        writeKey: "f3097eaa409601a1fd08b6e7647dec2eae48982c5076e7e04adb63a0541d4223ffad8fa5c255034ab3a266f0ab5a86171ecdfb0b328011d819f4726e3de37068463de5769b8324ce60081a8f1c56541d119a161acdfd447044b79e1017eb963c808f38cdce89c098a70e18c4fc2caa58"
     });
     
     Keen.onChartsReady(function() {
       
       //Code for Pie Chart
      var myMetric = new Keen.Metric("purchaseitems", {
            analysisType: "count",
            targetProperty: "item",
            groupBy: "item"
      });
        var myPieChart = new Keen.PieChart(myMetric, {
            height: 300,
            width: 600,
            minimumSlicePercentage: 5,
            colors: ["red", "green", "#fef584"],
            backgroundColor: "transparent",
            title: "count of items",    
        });
    
       //Draw the visualization into a div
       myPieChart.draw(document.getElementById("visualization-test"));
       
       
       //Code for Number Chart
       var myMetric = new Keen.Metric("purchaseitems", {
            analysisType: "count"
           
        });

       myMetric.draw(document.getElementById("visualization-test"));
       
       //Code for Line Chart
      var series = new Keen.Series("purchaseitems", {
            analysisType: "count",
            timeframe: "previous_7_days",
            interval: "daily"
       });
       series.draw(document.getElementById("visualization-test"));
       
       //Code for MultiLine Chart 
       var series = new Keen.Series("purchaseitems", {
            analysisType: "count",
            timeframe: "previous_7_days",
            interval: "daily",
            groupBy: "item"
       });
       series.draw(document.getElementById("visualization-test"));
         
         
      });
     
     
   </script>
 </head>
 
  <body>
    <div id="visualization-test"></div>
  </body>
  
</html>

 

