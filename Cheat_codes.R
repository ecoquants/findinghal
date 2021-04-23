Bookdown cheat codes
 https://bookdown.org/yihui/rmarkdown/rmarkdown-site.html)

# 10.5.3.2 R scripts ------------------------------------------------------
If you have R code that you would like to share across multiple 
R Markdown documents within your site, 
you can create an R script (e.g., utils.R) 
and source it within your Rmd files. For example:
  
  ```{r}
source("utils.R")
```

# 10.5.3.3 Rmd partials ---------------------------------------------------
You may have common fragments of R Markdown that you want to share 
across pages within your site. 
To share Rmd fragments, you should name them with 
a leading underscore (_), 
and then include them within their parent Rmd document 
using the child chunk option. 

For example:
  
  about.Rmd:
  
  ---
  title: "About This Website"
---
  
  More about this website.

```{r, child="_session-info.Rmd"}
```
_session-info.Rmd:
  
  
  Session information:
  
  ```{r}
sessionInfo()
```
# 10.5.7 Publishing websites ----------------------------------------------
R Markdown websites are static HTML sites that can be deployed 
to any standard web server. 
All site content (generated documents and supporting files) 
are copied into the _site directory, 
so deployment is simply a matter of moving that directory 
to the appropriate directory of a web server.



