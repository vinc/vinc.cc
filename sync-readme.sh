projects="
ansible-playbook-digitalocean
arduino-decimal-clock
dasort
forecaster
geodate
goelo.eu
internet-freedom-list
littlewing
memorious
oximon
pi.ctu.re
pollen.vinc.cc
purplehaze
rddt.cc
rgb.vinc.cc
"

index="source/projects/index.html.md"
cat << EOF > $index
---
title: Projects
---

# List of projects

EOF

for project in $projects
do
  src="/home/v/src/vinc/$project/README.*"
  dest="source/projects/$project.html.md"
  echo "Generating '$dest'"
  echo "- [$project](/projects/$project.html)" >> $index
  cat << EOF > $dest
---
title: $(head -n 1 $src | sed "s/^[=#] //")
---

$(cat $src)
EOF
done
