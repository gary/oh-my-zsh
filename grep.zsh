#
# Color grep results
# Examples: http://rubyurl.com/ZXv
#
if [ -z $EMACS ]; then
   export GREP_OPTIONS='--color=auto'
   export GREP_COLOR='1;32'
fi
