remotes::install_github('edenian-prince/translatemd', force = TRUE)

require_transformers <- function(...){
  reticulate::py_require(packages = c("torch", "sentencepiece","transformers"))
  transformers <<- reticulate::import('transformers', delay_load = TRUE)

}

translatemd::require_transformers()
transformers <- reticulate::import("transformers")

library(reticulate)
library(translatemd)
Sys.setenv("RETICULATE_PYTHON" = "managed")
reticulate::py_require("torch")
check <- import("torch")

transformers <- import("transformers")
