from bs4 import BeautifulSoup
import requests
from lxml import html


payload = {
	"login": "<username>", 
	"password": "<password>", 
	"authenticity_token": "<auth_token>"
}

session_requests = requests.session()

login_url = "https://github.ubc.ca/ubc-mds-2017/jharmse_home"
result = session_requests.get(login_url)

tree = html.fromstring(result.text)

# print(result.text)

authenticity_token = list(set(tree.xpath("//input[@name='authenticity_token']/@value")))[0]
print(authenticity_token)

result = session_requests.post(
	login_url, 
	data = payload, 
	headers = dict(referer=login_url)
)

# r = requests.get('https://github.ubc.ca/ubc-mds-2017/jharmse_home')
# data = r.text
# soup = BeautifulSoup(data)

# print(soup.prettify)

# for link in soup.find_all('a'):
#     print(link.get('href'))