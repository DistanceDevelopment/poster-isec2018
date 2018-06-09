> library(readdst)
> stratify.proj
  ID                                       Name            Status
1 13 Half-normal cosine no stratification exact            Ran OK
2 16            Half-normal cosine pooled detfn            Ran OK
3 15    Half-normal cosine strat-specific detfn Ran with warnings
> stratify.proj[[1]]
Model name  : Half-normal cosine no stratification exact
ID          : 13
Data filter :
mrds call   : mrds::ddf(dsmodel=~cds(key="hn", formula=~1,
              adj.series="cos", adj.order=NULL),
              meta.data=list(width=NA,left=0),
              control=list(mono=TRUE, mono.strict=TRUE),
              method="ds", data=data)
