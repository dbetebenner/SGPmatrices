`addBaselineMatrices` <-
function(state,
         year,
         add.matrices.to.which.state=NULL) {

        SGPstateData <- SGP::SGPstateData ### Needed due to assignment of values to SGPstateData

        ### Utility function
        getMatrixLabel <- function(state, year, add.matrices.to.which.state) {
             if (!paste(state, "Baseline_Matrices", sep="_") %in% names(SGPmatrices::SGPmatrices)) {
                 stop(paste("\tNOTE: Baseline matrices for state:", state, "not in SGPmatrices. Contact package maintainer to have baseline matrices added to package."))
             }
             tmp.years <- names(SGPmatrices::SGPmatrices[[paste(state, "Baseline_Matrices", sep="_")]])
             if (year < sort(tmp.years)[1]) stop("NOTE: Supplied year precedes years associated with baseline matrices in package. Contact package developer if you think this is in error.")
             if (!year %in% tmp.years) year <- tmp.years[which(year==sort(c(tmp.years, year)))-1L]
             matrix.label <- paste0("SGPmatrices::SGPmatrices[['", paste(state, "Baseline_Matrices", sep="_"), "']][['", year, "']]")
             message(paste0("\tNOTE: Adding ", SGP::getStateAbbreviation(state, type="Long"), " (", state, ") ", year, " baseline matrices to SGPstateData for state ",
			add.matrices.to.which.state))
             return(matrix.label)
        }

	if (is.null(add.matrices.to.which.state)) add.matrices.to.which.state <- state

        SGPstateData[[add.matrices.to.which.state]][["Baseline_splineMatrix"]][["Coefficient_Matrices"]] <- eval(parse(text=getMatrixLabel(state, year, add.matrices.to.which.state)))
        return(SGPstateData)
} ### END addBaselineMatrices
