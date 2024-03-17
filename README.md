# Rename_Extensions
A Bash script that renames all the files inside a specified folder path, into a desired file extension(assuming you know they are compatible e.g. dont try to convert a .mp3 file into .jpg or a video .vid file into png (and vice versa).
Useful if you have multiple files of .png that you want to make .jpeg or .vid that you want to make .mp4...
Or more commonly, converting multiple .web into .png , for those times you fine a nice website that only downloads .web images.


## How to use

- type: 
``` 
./rename_extensions.sh 'path/to/your/folder' + desired_new_extension.
```
- Dont forget to place the path inside single quotes (' ').
- Ommit the dot (.) from the extension  (e.g. type png not .png).


## Prerequisites

To use this script, ensure a Bash environment is set up on your system:

- **Linux or macOS:** Utilize the default Terminal.
- **Windows:** Install and utilize Git Bash, Cygwin, or WSL.

## Installation

### Clone the Repository

Clone your repository with the command:
```

```

### Navigate to the Script Directory

Change to your repository's directory:
```
cd your-repository-name
```

### Making the Script Executable

To run the script, it must first be made executable. This grants your system the permission to recognize and execute.
```
chmod +x rename_extensions.sh
```

### Run script Example:

To rename all files in /c/Users/MonyPython/images to have a .jpg extension:
```
./rename_extensions.sh '/c/Users/MontyPython/images' + jpg
```

###Important Notes

- The script solely renames the file extension and does not convert file contents.
- Backup your files prior to batch processing to prevent irreversible changes.
- The path format might vary based on your Bash environment (e.g., Git Bash, WSL, Cygwin). Adjust accordingly.