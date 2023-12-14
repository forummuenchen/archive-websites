# get 20 random URLs
random_urls=$(sort -R "./data/urls.txt" | head -20)
echo $random_urls

# outlinks regex as variable
outlinks_regex=$(cat "./data/outlinks_regex.txt")

# run main script
./spn.sh \
-a RsKXU9jOP1Y92nMz:ctZ0s3O78tNYXYxX \
-f ./test_logs \
-o $outlinks_regex \
$random_urls