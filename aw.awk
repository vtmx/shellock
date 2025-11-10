  
/^\s*"[^"]+": \{/ {
  site = gensub(/^\s*"([^"]+)": \{/, "\\1", "g")
}

/"url":/ {
  url = gensub(/.*"url": "(.*)",?/, "\\1", "g")
  print site, url
}
