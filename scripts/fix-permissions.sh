
# Get the absolute path of the script
SCRIPT_PATH="$(realpath "$0")"

# Get the directory where the script is located
SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"

cd $SCRIPT_DIR/../
#Docker UID
USERNAME="501"
sudo setfacl -R -m u:$USERNAME:rwx ./projects
sudo setfacl -d -m u:$USERNAME:rwx ./projects
sudo setfacl -R -m u:$USERNAME:rwx ./hop-config
sudo setfacl -d -m u:$USERNAME:rwx ./hop-config

USERNAME="$UID"
sudo setfacl -R -m u:$USERNAME:rwx ./projects
sudo setfacl -d -m u:$USERNAME:rwx ./projects
sudo setfacl -R -m u:$USERNAME:rwx ./hop-config
sudo setfacl -d -m u:$USERNAME:rwx ./hop-config
