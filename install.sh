#!/bin/sh
ulimit -c unlimited
#ulimit -u unlimited

base_dir="$(cd "$(dirname "$0")";pwd)"

$(unalias cp)

$(cd "${base_dir}")
# $(yum -y groupinstall "Development tools")
# $(yum remove "gcc")

echo "copy file usr/bin/*"
$(cp -rf usr/bin/* /usr/local/bin/)
$(cp -rf usr/bin/* /usr/bin/)
echo "copy file usr/share/man/*"
$(cp -rf usr/share/man/* /usr/share/man/)

echo "copy file usr/share/vim/*"
$(cp -rf usr/share/vim/* /usr/share/vim/)


echo ""
echo "==============================="
echo ""
echo "install vim74 success"
echo ""
echo "==============================="
echo ""
