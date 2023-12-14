library(WikidataQueryServiceR)


# get URLs from Wikidata --------------------------------------------------


query <- '
SELECT DISTINCT ?item ?itemLabel ?itemDescription ?url WHERE {
  { ?item (wdt:P31/(wdt:P279*)) wd:Q64606659. }
  UNION
  { ?item (wdt:P31/(wdt:P279*)) wd:Q61710689. }
    UNION
  { ?item (wdt:P31/(wdt:P279*)) wd:Q105321449. }
  ?item wdt:P856 ?url
  SERVICE wikibase:label { bd:serviceParam wikibase:language "en". }
}
ORDER BY (?itemLabel)
'

websites <- query_wikidata(query)


# Export txt --------------------------------------------------------------

writeLines(websites$url, "data/urls.txt")

# export outlinks regex ---------------------------------------------------

regex_domains <- unique(gsub("https?://(www.)?|/.+|/", "", websites$url))
regex_domains <- paste0('https?://(www.)?', regex_domains, collapse = "|")
regex_domains <- paste0('"', regex_domains, '"')
writeLines(regex_domains, "data/outlinks_regex.txt")
