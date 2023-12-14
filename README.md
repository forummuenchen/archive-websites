# archive-websites
Send queer-related websites regularly to the Internet Archive


## How it works

- Fetch list of queer related items from Wikidata that have an official website:
  - the item neeeds to be (P31/P279) either Q64606659, Q61710689 or Q105321449 and needs to have a (P856) website.
  
- Use this list of URLs (`data/urls.txt`) as input for a s[ophisticated bash script](https://github.com/overcast07/wayback-machine-spn-scripts) that sends websites to the Internet Archive using the Save Now API. 
  - Download  [spn.sh](https://github.com/overcast07/wayback-machine-spn-scripts/blob/main/spn.sh) file from the [wayback-machine-spn-scripts repository](https://github.com/overcast07/wayback-machine-spn-scripts): 
  ```bash
   wget https://raw.githubusercontent.com/overcast07/wayback-machine-spn-scripts/main/spn.sh
   ``````