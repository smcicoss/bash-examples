
# Print 5 .
printf '%s\n' {1..5} | mapfile -c 1 -C 'printf . \#'
echo " "
# Print odd and even number
{ printf 'input%s\n' {1..10} | mapfile -c 1 -C '>&$(( (${#x[@]} % 2) + 3 )) printf -- "%.sprefix %s"' x; } 3>outfile0 4>outfile1
cat outfile{0,1}
echo " "
# print odd and even numbers
y=( 'odd[j]' 'even[j++]' ); printf 'input%s\n' {1..10} | { mapfile -tc 1 -C 'printf -v "${y[${#x[@]} % 2]}" -- "%.sprefix %s"' x; printf '%s\n' "${odd[@]}" '' "${even[@]}"; }
