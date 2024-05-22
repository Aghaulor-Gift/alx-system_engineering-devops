#!/usr/bin/python3
"""Python script that extends script from Task 0
and exports data in JSON formatted file.
File must have all records.
"""
import json
import requests
import sys

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: ./script.py <EMPLOYEE_ID>")
        sys.exit(1)

    EMPLOYEE_ID = sys.argv[1]

    try:
        EMPLOYEE_ID = int(EMPLOYEE_ID)
    except ValueError:
        print("EMPLOYEE_ID must be an integer")
        sys.exit(1)

    USERNAME = requests.get(
        f"https://jsonplaceholder.typicode.com/users/{EMPLOYEE_ID}"
    ).json().get("username")

    ALL_TASKS = []
    tasks = requests.get("https://jsonplaceholder.typicode.com/todos").json()

    for task in tasks:
        if task.get("userId") == EMPLOYEE_ID:
            task_dict = {}
            task_dict["task"] = task.get("title")
            task_dict["completed"] = task.get("completed")
            task_dict["username"] = USERNAME
            ALL_TASKS.append(task_dict)

    with open(f"{EMPLOYEE_ID}.json", 'w') as jsonfile:
        json.dump({EMPLOYEE_ID: ALL_TASKS}, jsonfile)
