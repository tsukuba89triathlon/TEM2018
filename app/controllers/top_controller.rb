class TopController < ApplicationController
  def index
    @today = Date.today
    # (...データベースからのデータ取得処理...)
    # ダミーのデータを用意
    days = []
    14.downto(2) do |day|
      days << "#{day}日前"
    end
    days << "昨日"
    total_distances = [100,120,230,180,160,80,175,100,120,230,180,160,80,175]
    distances_per_person = [20,11.1,25,9.0,26.7,16,25,4,7,8,8,9,10,18]
    int_distances = [100,220,450,630,790,870,1045,1145,1265,1495,1675,1835,1915,2090]
    # グラフ（チャート）を作成
    @chart = LazyHighCharts::HighChart.new("graph") do |c|
      c.title(text: "最近2週間の推移")
      c.xAxis(categories: days, title: {text: '日'})
      c.options[:yAxis] = [{title: {text: '距離(km)'}},{title: {text: "積算距離(km)"}}]
      c.series(name: "積算走行距離(km)", data: int_distances, type: 'area', yAxis: 1, color: "#663498")
      c.series(name: "走行距離(km)", data: total_distances, yAxis: 0, color: "#1097FF")
      c.series(name: "一人当たり走行距離(km)", data: distances_per_person, yAxis: 0, color: "#2525ff")
    end
  end

  def progress
  end
end
