#!/usr/bin/python3
""" a function that queries the Reddit API and prints the titles of the first
10 hot posts listed for a given subreddit.
"""
import requests


def top_ten(subreddit):
    """Print the titles of the first 10 hot posts"""
    url = f"https://www.reddit.com/r/{subreddit}/hot.json"
    headers = {'User-Agent': '0x16-api_advanced/1.0'}

    try:
        response = requests.get(url, headers=headers, allow_redirects=False)
        if response.status_code == 200:
            data = response.json()
            posts = data['data']['children']
            if len(posts) > 0:
                for post in posts[:10]:
                    print(post['data']['title'])
            else:
                print(f"No posts found in /r/{subreddit}")
        else:
            print(f"Error: {response.status_code}")
    except requests.RequestException as e:
        print(f"RequestException: {e}")
