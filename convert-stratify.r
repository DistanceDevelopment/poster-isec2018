library(readdst)
home.dir <- path.expand("~")
stratify.proj.directory <- system.file("Stratify", package="readdst")
stratify.proj.name <- paste0(stratify.proj.directory, "/Vignette-stratify")
stratify.proj <- convert_project(stratify.proj.name)
#  post-conversion, re-run analysis with 'run_analysis'
strat.mrds.a1 <- run_analysis(stratify.proj$'Half-normal cosine no stratification exact')
#  perform same analysis manually, using ds()
library(Distance)
strat.dist.a1 <- ds(key="hn", formula=~1, adj="cos", order=2,
                      data=stratify.proj$'Half-normal cosine no stratification exact'$env$data)
