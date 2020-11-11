load_practical <- function (name = NULL) {
  tutorialnames <- c("logisticregressionone",
                     "logisticregressiontwo",
                     "logisticregressionthree",
                     "conditionallogistictutorial",
                     "poissontutorial",
                     "ordinaltutorial"
                     )
  aliasnames <- c('EP03_logisticregression_Practical1',
                  'EP03_logisticregression_Practical2',
                  'EP03_logisticregression_Practical3',
                  'EP03_logisticregression_Practical4',
                  'EP03_logisticregression_Practical5',
                  'EP03_logisticregression_Practical6')
  if (is.numeric(name)){
    name <- tutorialnames[name]
  }
  if (name %in% tutorialnames){
    learnr::run_tutorial(name, package = "EP03logistic")
  }else if (name %in% aliasnames){
    o <- match(name , aliasnames)
    learnr::run_tutorial(tutorialnames[o], package = "EP03logistic")
  }else if("EP03Survival" %in% .packages()){
    ep03::load_practical(name)
  }else{
    stop('Unknown practical')
  }
}

