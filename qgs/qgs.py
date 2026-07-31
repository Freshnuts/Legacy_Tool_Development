import sys
import getopt
import urllib
import urllib2
import webbrowser

# qgs.py stands for "Quick Google Search"
# Google search from Linux terminal, browser automatically opens up
# and provides search page.

# Google needs User-Agent filled out, as it does not accept otherwise
# unfamiliar Agent requests.

user_agent = 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.7) Gecko/2009021910 Firefox/3.0.7'

headers = {'User-Agent' : user_agent,}

try:
    opts, args = getopt.getopt(sys.argv[1:], "s:h", ["search", "help"])
except:
    print "Usage: qgs.py [(--search,-s) key term] [-h help menu]"
    sys.exit()

if len(sys.argv) == 1:
    print "Usage: qgs.py [(--search,-s) key term] [-h help menu]"
    sys.exit()

search = sys.argv[2:]
search = str(search).replace('[','').replace(']','').replace(',','').replace('\'','')
for o, a in opts:
    if o == "-h":
        print "Usage: qgs.py [(--search, -s) key term] [-h help menu]"
        sys.exit()
    elif o == "--search" or "-s":
        data = urllib.urlencode({'q': search})
        url = 'https://google.com/search'
        full_url = url + '?' + data
        request = urllib2.Request(full_url, None, headers)
        response = urllib2.urlopen(request)
        print "Opening browser & searching, %s" % search
        webbrowser.open(full_url)
        sys.exit()
    else:
        print "Error. WTF did you you?!"
