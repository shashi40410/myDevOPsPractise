for a in $(find -type d);
do
  echo "folder list" $a
  if [ -d "test" ]; then
   echo"folder found"
  else
     echo"not found"
  fi
done