//
//  ViewController.swift
//  TestLineChart
//
//  Created by Hung Cao on 6/14/18.
//  Copyright © 2018 hnc. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController {
    
    @IBOutlet weak var lineChartView: LineChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        renderChart()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func renderChart() {
        var entries: [ChartDataEntry] = []
        
        let sampleData = [(1006.5384, 252.07004),
                        (1246.1904, 1067.7164),
                        (1258.173, 1067.7164),
                        (1042.4862, 1067.7164),
                        (1090.4166, 1358.8011),
                        (1150.3296, 1898.2981),
                        (1156.3209, 2325.019),
                        (1162.3123, 2553.6196),
                        (1150.3296, 2804.4707),
                        (1222.2252, 3097.6885),
                        (1294.1208, 3104.394),
                        (1258.173, 3104.394),
                        (1354.0338, 3104.394),
                        (1342.0511, 3176.6318),
                        (1401.9642, 3315.6208),
                        (1449.8947, 3479.299)]
        for data in sampleData {
            let chartDataEntry = ChartDataEntry(x: data.0, y: data.1)
            entries.append(chartDataEntry)
        }
        
        let dataSet = LineChartDataSet(values: entries, label: "Test Line Chart")
        dataSet.setColor(.yellow)
        dataSet.setCircleColor(.blue)
        dataSet.lineWidth = 3.0
        dataSet.highlightColor = .green
        dataSet.circleRadius = 1
        dataSet.drawCirclesEnabled = true
        dataSet.drawValuesEnabled = true
        dataSet.valueTextColor = .white
        
        var dataSets: [LineChartDataSet] = []
        dataSets.append(dataSet)
        
        let chartData = LineChartData(dataSets: dataSets)
        lineChartView.data = chartData
        lineChartView.backgroundColor = .darkGray
    }
}

