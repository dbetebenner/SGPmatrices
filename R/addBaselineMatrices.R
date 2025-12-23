`addBaselineMatrices` <-
function(state,
         year,
         add.matrices.to.which.state=NULL,
         SGPt = FALSE) {

        SGPstateData <- SGP::SGPstateData ### Needed due to assignment of values to SGPstateData

        ### Utility function
        getMatrixLabel <- function(state, year, add.matrices.to.which.state, SGPt) {
            ifelse(SGPt, state.label <- paste(state, "SGPt_Baseline_Matrices", sep="_"), state.label <- paste(state, "Baseline_Matrices", sep="_"))
             if (!state.label %in% names(SGPmatrices::SGPmatrices)) {
                 stop(paste("\tNOTE: Baseline matrices for state:", state, "not in SGPmatrices. Contact package maintainer to have baseline matrices added to package."))
             }
             tmp.years <- names(SGPmatrices::SGPmatrices[[state.label]])
             if (year < sort(tmp.years)[1]) stop("NOTE: Supplied year precedes years associated with baseline matrices in package. Contact package developer if you think this is in error.")
             if (!year %in% tmp.years) year <- tmp.years[which(year==sort(c(tmp.years, year)))-1L]
             if (!SGPt) {
                 matrix.label <- paste0("SGPmatrices::SGPmatrices[['", state.label, "']][['", year, "']]")
                 message(paste0("\tNOTE: Adding ", SGP::getStateAbbreviation(state, type="Long"), " (", state, ") ", year, " baseline matrices to SGPstateData for state ",
			add.matrices.to.which.state))
             } else {
                 matrix.label <- paste0("SGPmatrices::SGPmatrices[['", state.label, "']][['", year, "']]")
                 message(paste0("\tNOTE: Adding ", SGP::getStateAbbreviation(state, type="Long"), " (", state, ") ", year, " SGPt baseline matrices to SGPstateData for state ",
			add.matrices.to.which.state))
             }
             return(matrix.label)
        }

	if (is.null(add.matrices.to.which.state)) add.matrices.to.which.state <- state

        SGPstateData[[add.matrices.to.which.state]][["Baseline_splineMatrix"]][["Coefficient_Matrices"]] <- eval(parse(text=getMatrixLabel(state, year, add.matrices.to.which.state, SGPt)))
        return(SGPstateData)
} ### END addBaselineMatrices
