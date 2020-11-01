# author: Jonah Somers
# date: 7/25/19

import urllib2, webbrowser
from datetime import datetime, date, time, timedelta
from bs4 import BeautifulSoup

locs = ['chambana']
URLs = []

# Extract URLs of listings
def get_URLs(location):
	url = 'https://' + location + '.craigslist.org/search/cta?sort=date&auto_make_model=jeep%20cherokee&max_auto_year=2002&min_auto_year=1997'
	page = urllib2.urlopen(url)
	soup = BeautifulSoup(page, 'html.parser')
	now = datetime.now()

	for link in soup.find_all('a', class_='result-image gallery'):
		my_url = link.get('href')
		time = str(link.next_sibling.next_sibling.time['datetime'])
		diff = now - datetime.strptime(time, "%Y-%m-%d %H:%M")
		title = link.next_sibling.next_sibling.a.text.encode('utf-8')
		if diff.days <= 3 and title.find("grand") == -1 and title.find("Grand") == -1 and title.find("GRAND") == -1:
			URLs.append(str(my_url))

for loc in locs:
	get_URLs(loc)

# Remove duplicates
URLs = list(set(URLs))

# Open tabs 
print( "There are " + str(len(URLs)) + " recent listings for a 1997-2002 Jeep Cherokee in your area. Open all in browser? \n y / n")
answer = raw_input()
if answer in ('Y','y'):
	webbrowser.open(URLs[1])
	for x in URLs[1:]:
		webbrowser.open_new_tab(x)
exit()

# HTML format
#body
	#form id='searchform'
		#div class='content' id='sortable-results'
			#ul class='rows'
				#li class='result-row'
					#a href='URL to listing' class="result-image gallery"
					#p class='result-info'
						#time class='result-date' datetime="2019-07-24 22:08"
