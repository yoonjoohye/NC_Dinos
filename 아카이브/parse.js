var request = require('request')
var cheerio = require('cheerio')

var request_option = {
    method: 'GET',
    url: "https://www.koreabaseball.com/teamrank/teamrank.aspx",
    headers: {
        'cache-control': 'no-cache',
        'user-agent': 'node.js'
    }
}

request(request_option, (err, res, body)=>{
    if (err) throw err;
    var $ = cheerio.load(body)
    var JsonArray = new Array()

    for (var i=1;i<=10;i++){
        var team = $('#cphContents_cphContents_cphContents_udpRecord > table > tbody > tr:nth-child('+i+') > td:nth-child(2)').text()
        var rank = $('#cphContents_cphContents_cphContents_udpRecord > table > tbody > tr:nth-child('+i+') > td:nth-child(1)').text()
        var game = $(' #cphContents_cphContents_cphContents_udpRecord > table > tbody > tr:nth-child('+i+') > td:nth-child(8)').text()
        var data = {
            rank : rank,
            team : team,
            game : game
        }

        JsonArray.push(data)
        
    }

    console.log(JsonArray)
})
