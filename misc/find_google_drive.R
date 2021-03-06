# This script assigns the Google Drive directory based on the user's info
# Path is saved as the drive_dir variable

# The user must already be in the find_google_drive_paths.txt tab;e for it to work
# That means we need to update the table for each new user

# Import user table
users <- read.table("misc/find_google_drive_paths.txt", 
                    sep = ",", header = T)

# Detect username
username = as.character(Sys.info()["user"])

# Set google drive folder (to be appended to path)
drive_folder = "American_Whitewater_EEIS/"

# Set path based on user
drive_dir = paste0(subset(users, user == username)$drive_path,
                   drive_folder)
