#!/usr/bin/python3
""" Queries the Reddit API and returns the number of subscribers (not active
users, total subscribers) for a given subreddit.
returns 0 If an invalid subreddit is given, the function.
"""

import requests


def number_of_subscribers(subreddit):
    """ Represent the number of subcribers"""
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    headers = {'User-Agent': '0x16-api_advanced/0.1'}

    try:
        response = requests.get(url, headers=headers, allow_redirects=False)
        if response.status_code == 200:
            data = response.json()
            if 'data' in data and 'subscribers' in data['data']:
                return data['data']['subscribers']
            else:
                return 0
        else:
            return 0
    except requests.RequestException:
        return 0
