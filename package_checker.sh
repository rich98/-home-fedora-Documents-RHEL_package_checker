for pkg in $(yum list installed | awk 'NR>1 {print $1}')
do
    echo "Checking $pkg"
    rpm -q --changelog $pkg | grep 'CVE-2021-44142'
done

