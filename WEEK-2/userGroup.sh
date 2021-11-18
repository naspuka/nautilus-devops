#!/bin/bash



# # for i in "$n" ; do sudo id $i ; done

# 

# LINE=1

# while read -r user; do
# #   id=${user:0:2}
#   echo "$LINE: $user"

#   ((LINE++))
# done < "./users.txt"


# groups=('admin' 'hr' 'devops')

# for grp in "${groups[@]}"
# do
#     sudo groupadd $grp;
# done


# users="user"
# for username in {1..15};
#   do  
#     eachuser=$users$username
#     sudo adduser --disabled-password --gecos -r $eachuser
#     for group in {1..5};
#       do
#         sudo useradd -G admin $group
#       done
#   done



for g in admin devops hr
do
sudo groupadd $g
for i in ` seq 100 115`
do
  sudo useradd -g ${g} ${g}${i}
  echo $g"123" |passwd "${g}${i}"
  sudo usermod -G ${g} ${g}${i}
  echo ; echo "useradded & password changed for ${g}${i}"
done
done











































