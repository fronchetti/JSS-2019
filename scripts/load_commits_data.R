atom_commits_info <- load_data(paste0(working_directory, "metrics/full/atom_commits_info.csv"))
atom_commits_info$user <- gsub('\\s+', '', atom_commits_info$user)
atom_commits_info$user <- tolower(atom_commits_info$user)
electron_commits_info <- load_data(paste0(working_directory, "metrics/full/electron_commits_info.csv"))
electron_commits_info$user <- gsub('\\s+', '', electron_commits_info$user)
electron_commits_info$user <- tolower(electron_commits_info$user)
gitlfs_commits_info <- load_data(paste0(working_directory, "metrics/full/gitlfs_commits_info.csv"))
gitlfs_commits_info$user <- gsub('\\s+', '', gitlfs_commits_info$user)
gitlfs_commits_info$user <- tolower(gitlfs_commits_info$user)
hubot_commits_info <- load_data(paste0(working_directory, "metrics/full/hubot_commits_info.csv"))
hubot_commits_info$user <- gsub('\\s+', '', hubot_commits_info$user)
hubot_commits_info$user <- tolower(hubot_commits_info$user)
linguist_commits_info <- load_data(paste0(working_directory, "metrics/full/linguist_commits_info.csv"))
linguist_commits_info$user <- gsub('\\s+', '', linguist_commits_info$user)
linguist_commits_info$user <- tolower(linguist_commits_info$user)

atom_commits_info <- create_intervals_date(atom_commits_info)
electron_commits_info <- create_intervals_date(electron_commits_info)
gitlfs_commits_info <- create_intervals_date(gitlfs_commits_info)
hubot_commits_info <- create_intervals_date(hubot_commits_info)
linguist_commits_info <- create_intervals_date(linguist_commits_info)

atom_commits_info_employee <- subseting(atom_commits_info, atom_commits_info$site_admin, "TRUE", "commits")
atom_commits_info_volunter <- subseting(atom_commits_info, atom_commits_info$site_admin, "FALSE", "commits")
electron_commits_info_employee <- subseting(electron_commits_info, electron_commits_info$site_admin, "TRUE", "commits")
electron_commits_info_volunter <- subseting(electron_commits_info, electron_commits_info$site_admin, "FALSE", "commits")
gitlfs_commits_info_employee <- subseting(gitlfs_commits_info, gitlfs_commits_info$site_admin, "TRUE", "commits")
gitlfs_commits_info_volunter <- subseting(gitlfs_commits_info, gitlfs_commits_info$site_admin, "FALSE", "commits")
hubot_commits_info_employee <- subseting(hubot_commits_info, hubot_commits_info$site_admin, "TRUE", "commits")
hubot_commits_info_volunter <- subseting(hubot_commits_info, hubot_commits_info$site_admin, "FALSE", "commits")
linguist_commits_info_employee <- subseting(linguist_commits_info, linguist_commits_info$site_admin, "TRUE", "commits")
linguist_commits_info_volunter <- subseting(linguist_commits_info, linguist_commits_info$site_admin, "FALSE", "commits")
