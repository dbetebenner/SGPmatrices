`addBaselineMatrices` <-
function(state,
         year) {

         SGPstateData <- SGP::SGPstateData ### Needed due to assignment of values to SGPstateData

         matrix.label <- paste0(paste(state, "Baseline_Matrices", sep="_"), "$", paste(state, "Baseline_Matrices", year, sep="_"))
         SGPstateData[[state]][["Baseline_splineMatrix"]][["Coefficient_Matrices"]] <- eval(parse(text=matrix.label))
         return(SGPstateData)
} ### END addBaselineMatrices
