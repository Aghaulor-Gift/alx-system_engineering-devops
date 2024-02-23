# Processes and Signals Project

This project focus on processes and signals in Unix-like operating systems.

## Table of Contents

1. [Task 0: What is my PID](#task-0-what-is-my-pid)
2. [Task 1: List your processes](#task-1-list-your-processes)
3. [Task 2: Show your Bash PID](#task-2-show-your-bash-pid)
4. [Task 3: Show your Bash PID made easy](#task-3-show-your-bash-pid-made-easy)
5. [Task 4: To infinity and beyond](#task-4-to-infinity-and-beyond)
6. [Task 5: Don't stop me now!](#task-5-dont-stop-me-now)
7. [Task 6: Stop me if you can](#task-6-stop-me-if-you-can)
8. [Task 7: Highlander](#task-7-highlander)
9. [Task 8: Beheaded process](#task-8-beheaded-process)
10. [Repository Information](#repository-information)

## Task 0: What is my PID

**Objective:** Write a Bash script that displays its own PID.

- **Script:** `0-what-is-my-pid`
- **Usage:** `./0-what-is-my-pid`
- **Example Output:** `4120`

## Task 1: List your processes

**Objective:** Write a Bash script that displays a list of currently running processes.

- **Script:** `1-list_your_processes`
- **Requirements:**
  - Display all processes, for all users, including those which might not have a TTY.
  - Display in a user-oriented format.
  - Show process hierarchy.
- **Example Output:** Displays a list of processes with various details like PID, CPU usage, memory usage, command, etc.

## Task 2: Show your Bash PID

**Objective:** Write a Bash script that displays lines containing the word "bash", allowing to easily get the PID of your Bash process.

- **Script:** `2-show_your_bash_pid`
- **Requirements:**
  - Cannot use pgrep.
  - The third line of the script must disable Shellcheck warning SC2009.
- **Example Output:** Displays lines containing "bash" along with their PIDs.

## Task 3: Show your Bash PID made easy

**Objective:** Write a Bash script that displays the PID and process name of processes whose name contains the word "bash".

- **Script:** `3-show_your_bash_pid_made_easy`
- **Requirements:**
  - Cannot use ps.
- **Example Output:** Displays PIDs and names of processes containing "bash".

## Task 4: To infinity and beyond

**Objective:** Write a Bash script that displays "To infinity and beyond" indefinitely.

- **Script:** `4-to_infinity_and_beyond`
- **Requirements:**
  - Add a sleep of 2 seconds between each iteration.
- **Example Output:** Continuously displays "To infinity and beyond" with a 2-second delay between each iteration.

## Task 5: Don't stop me now!

**Objective:** Write a Bash script that stops the `4-to_infinity_and_beyond` process.

- **Script:** `5-dont_stop_me_now`
- **Requirements:**
  - Must use kill.
- **Example Output:** Stops the `4-to_infinity_and_beyond` process.

## Task 6: Stop me if you can

**Objective:** Write a Bash script that stops the `4-to_infinity_and_beyond` process.

- **Script:** `6-stop_me_if_you_can`
- **Requirements:**
  - Cannot use kill or killall.
- **Example Output:** Stops the `4-to_infinity_and_beyond` process.

## Task 7: Highlander

**Objective:** Write a Bash script that displays "To infinity and beyond" indefinitely, and prints "I am invincible!!!" when receiving a SIGTERM signal.

- **Script:** `7-highlander`
- **Requirements:**
  - Continuously displays "To infinity and beyond".
  - Prints "I am invincible!!!" upon receiving a SIGTERM signal.
- **Example Output:** Displays "To infinity and beyond" with occasional "I am invincible!!!" messages. Can be terminated using Ctrl+C.

## Task 8: Beheaded process

**Objective:** Write a Bash script that kills the `7-highlander` process.

- **Script:** `8-beheaded_process`
- **Example Output:** Kills the `7-highlander` process.

## Repository Information

- **GitHub Repository:** [alx-system_engineering-devops](https://github.com/Aghaulor-Gift/alx-system_engineering-devops)
- **Directory:** 0x05-processes_and_signals

Each script file mentioned above is located within the specified directory in the repository.
