# from bs4 import BeautifulSoup
# import requests
# from lxml import html


# payload = {
# 	"login": "<username>", 
# 	"password": "<password>", 
# 	"authenticity_token": "<auth_token>", 
#     "utf8": "<utf8>"
# }

# session_requests = requests.session()

# login_url = "https://github.ubc.ca/ubc-mds-2017/jharmse_home"
# result = session_requests.get(login_url)

# print(result.cookies)

# tree = html.fromstring(result.text)

# # print(result.text)

# authenticity_token = list(set(tree.xpath("//input[@name='authenticity_token']/@value")))[0]
# print(authenticity_token)
# utf = list(set(tree.xpath("//input[@name='utf8']/@value")))[0]
# print(utf)

# #secret

# payload['authenticity_token'] = authenticity_token
# payload['utf8'] = utf

# result = session_requests.post(
# 	login_url, 
# 	data = payload, 
# 	headers = dict(referer=login_url)
# )

# print(result.text)

# # print(result.ok)
# # print(result.status_code)

# url = "https://github.ubc.ca/ubc-mds-2017/jharmse_home"

# result_new = session_requests.get(
# 	url, 
# 	headers = dict(referer = url)
# )

# tree = html.fromstring(result.content)
# # bucket_names = tree.xpath("//div[@class='repo-list--repo']/a/text()")

# # print(result_new.text)

# r = requests.get('https://github.ubc.ca/ubc-mds-2017/jharmse_home')
# data = r.text
# soup = BeautifulSoup(data)

# # print(soup.prettify)

# # for link in soup.find_all('a'):
# #     print(link.get('href'))