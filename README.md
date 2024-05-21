This bash script is designed to perform system maintenance and cleaning tasks. It is only compatible with Debian-based operating systems (Ubuntu, Linux Mint, etc.).

## Usage

1. Make sure you have the necessary packages installed: `apt-get`.
2. Save the contents of the script to the `cleanup.sh` file.
3. Make the file executable: `chmod +x cleanup.sh`.
4. Run the script with superuser privileges: `sudo ./cleanup.sh`.

## Functionality

The script performs the following actions:

1. **System Update**:
   - Performs a package list update and installs available updates using `apt-get update` and `apt-get upgrade`.

2. **Clearing the Firefox browser cache**:
   - If Firefox is installed, the script clears the browser cache by deleting files from the `~/.cache/mozilla/firefox/*.default-release/cache2/entries` directory.

3. **Clearing the Chrome browser cache**:
   - If Chrome is installed, the script clears the browser cache by deleting files from the `~/.cache/google-chrome/Default/Cache/` directory.

4. **Deleting Temporary Files**:
   - The script deletes all files from the `/tmp/` directory.

5. **Results output**:
   - The script outputs informational messages about the actions performed during the run.

## Notes

- The script is intended to run only on Debian-based systems, as it uses the `apt-get` utility.
- For the script to work correctly, the user must have root privileges.
- When clearing the browser cache, the script checks for the appropriate directories. If the browser is not installed, a corresponding message is displayed.
- The script deletes all files from the `/tmp/` directory, so make sure there is no important data there before running the script.
