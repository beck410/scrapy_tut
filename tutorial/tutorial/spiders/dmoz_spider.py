import os
import scrapy

class DmozSpider(scrapy.Spider):
    name = 'dmoz'
    allowed_domains = ['domoz.org']
    start_urls = [
        'http://www.dmoz.org/Computers/Programming/Languages/Python/Books/',
        'http://www.dmoz.org/Computers/Programming/Languages/Python/Resources/'
    ]

    def parse(self, response):
        path = os.path.join('tutorial', 'spiders', 'content')
        filename = response.url.split("/")[-2] + '.html'

        if not os.path.exists(path):
            os.makedirs(path)

        with open(os.path.join(path, filename), 'wb') as f:
            f.write(response.body)
