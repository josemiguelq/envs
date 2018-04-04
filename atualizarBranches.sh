# !/bin/bash

PASTA_PROJETO=pwd

branch_name=$(git symbolic-ref -q HEAD)
branch_name=${branch_name##refs/heads/}
branch_name=${branch_name:-HEAD}

echo $branch_name
{
   /usr/bin/git stash
   /usr/bin/git checkout develop
   /usr/bin/git pull origin develop -X theirs
  
   /usr/bin/git checkout master
   /usr/bin/git pull origin master -X theirs
}||{
  echo "Coisas ainda nao comitadas"
}

/usr/bin/git checkout $branch_name
/usr/bin/git stash apply
