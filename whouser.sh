echo "Who are you?"
read user
echo $user
name=$(whoami)
if[$user == $name]
then
  top -u $user
else
  echo "not logged in"
fi
