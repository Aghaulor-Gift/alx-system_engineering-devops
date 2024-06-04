#!/usr/bin/python3
"""A recursive function that queries the Reddit API, parses the title of all
hot articles, and prints a sorted count of given keywords.
"""
import requests
from collections import Counter


def count_words(subreddit, word_list, after=None, counts=None):
    """Recursively count occurrences of keywords in hot article titles"""
    url = f"https://www.reddit.com/r/{subreddit}/hot.json"
    headers = {'User-Agent': '0x16-api_advanced/1.0'}
    params = {'after': after} if after else {}

    if counts is None:
        counts = Counter()

    try:
        response = requests.get(url, headers=headers,
                                params=params, allow_redirects=False)
        if response.status_code == 200:
            data = response.json()
            posts = data['data']['children']
            after = data['data']['after']

            for post in posts:
                title = post['data']['title']
                for word in word_list:
                    if word.lower() in title.lower().split():
                        counts[word.lower()] += 1

            if after:
                return count_words(subreddit, word_list, after, counts)
            else:
                sorted_counts = sorted(counts.items(), key=lambda x: (-x[1], x[0]))
                for word, count in sorted_counts:
                    print(f"{word}: {count}")
        elif response.status_code == 404:
            print(f"Subreddit '/r/{subreddit}' not found.")
        else:
            print(f"Error: {response.status_code}")
    except requests.RequestException as e:
        print(f"RequestException: {e}")
