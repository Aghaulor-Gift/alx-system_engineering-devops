#!/usr/bin/python3
"""Python script that extends script from Task 0
and exports data in JSON formatted file
File must have all records from all employees
"""
import json
import requests

if __name__ == "__main__":
    url_users = "https://jsonplaceholder.typicode.com/users"
    url_todos = "https://jsonplaceholder.typicode.com/todos"
    ALL_USERS = requests.get(url_users).json()
    ALL_TASKS = requests.get(url_todos).json()
    ALL_RECORDS = {}

    for user in ALL_USERS:
        EMPLOYEE_ID = user.get("id")
        USERNAME = user.get("username")
        USER_TASKS = []

        for task in ALL_TASKS:
            if task.get("userId") == EMPLOYEE_ID:
                task_dict = {
                    "task": task.get("title"),
                    "completed": task.get("completed"),
                    "username": USERNAME
                }
                USER_TASKS.append(task_dict)

        ALL_RECORDS[EMPLOYEE_ID] = USER_TASKS

    with open("todo_all_employees.json", 'w') as jsonfile:
        json.dump(ALL_RECORDS, jsonfile)
