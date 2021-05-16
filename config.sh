# Sourced by deploy-dotfiles.sh
# User created file to override program defaults.

# How to identify this computer. E.g., which config options to load? Should be a
# descriptive 'class' that accepts a common config. E.g., "macos" or "ubuntu".
# Or maybe "personal" vs. "work". Impacts which configuration variables are
# sourced from the config/files/$filetype/{options,additions}
class='linux'

# Methodology by which to 'deploy' the dotfiles to their respective location.
#  slink :: `ln -sr` (symlink)
#  hlink :: `ln -r`  (hard link)
#  icopy :: `cp -i`  (interactive copy)
#  copy  :: `cp`     (non-interactive copy)
# Default is icopy'
deploy_mode='icopy'

# If there is an existing file at the $destination, should (and if so, how) the
# existing file be backed up?
#  dir  :: `mv` existing file to backup/$filename (removing leading '.')
#  bak  :: `mv` in place, append '.bak' suffix
#  rm   :: Exiting file is removed, then replaced
#  irm  :: Existing file is interactively removed, then replaced
# Default is 'dir'
backup_mode='dir'

# How to handle missing keys? i.e., if class[key] is undefined
#  warn  :: warn user errors were found, but leave text as is
#  repl  :: warn & replace text with 'KEY_ERROR($key)'
#  rm    :: warn & replace with empty string
#  quiet :: do not warn user, leave text as is
# Default is 'repl'
missing_key='repl'
