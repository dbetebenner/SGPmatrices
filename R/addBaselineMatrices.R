`addBaselineMatrices` <-
function(state,
         year) {

         SGPstateData <- SGP::SGPstateData ### Needed due to assignment of values to SGPstateData

         matrix.label <- paste0(paste(state, "Baseline_Matrices", sep="_"), "$", paste(state, "Baseline_Matrices", year, sep="_"))
         if (is.null(SGPstateData[[state]][["Baseline_splineMatrix"]][["Coefficient_Matrices"]] <- eval(parse(text=matrix.label)))) {
             stop(paste(matrix.label, "are not contained in the SGPmatrices package. Check supplied `state` and `year` arguments."))
         } else {
            return(SGPstateData)
         }
} ### END addBaselineMatrices
