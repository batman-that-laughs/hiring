### Task 3: Managing Disk Space
**Problem Statement:**
Write a bash script to clean out all the audios in /home/ubuntu/audios/ folder that are older than 48hrs. Also generate a log file with the name deleted-files-<date>-<month>-<year>.log which should contain:

    name of audio file
    time of creation of audio file (ISO Format)
    time of deletion of audio file (ISO Format)

For example: A sample log file deleted-files-12-02-2020.log will contain:

audio_0010023.wav 10-02-2020T08:37:16+05:30 12-02-2020T10:18:40+05:30
audio_0010024.wav 10-02-2020T08:38:16+05:30 12-02-2020T10:18:42+05:30
audio_0010025.wav 10-02-2020T08:38:50+05:30 12-02-2020T10:18:45+05:30
...

**Solution:**
Assumption - 
    1. Time created and time last modified are the same.
    2. All files to be deleted are in the directory /home/ubuntu/audios/ and not in sub-directories
Logic - 
    1. Used find command to list the files to be deleted from the target directory,
        i. Kept -maxdepth in the find command to target only the directory, incase files from any sub-directories are to be deleted as well, could ommit this option altogether. 
        ii. Used -mmin instead of -mtime to get better precision for the timestamp comparision.
    2. Deleted files inside the loop, to provide better precision on deleted time.

**How it works:**
Run ./assignment.sh from the terminal.