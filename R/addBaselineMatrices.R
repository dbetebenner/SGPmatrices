`addBaselineMatrices` <-
function(state,
         add.matrices.to.state=NULL,
         year) {

        SGPstateData <- SGP::SGPstateData ### Needed due to assignment of values to SGPstateData

        ### Utility function
        getMatrixLabel <- function(state, year) {
             if (!paste(state, "Baseline_Matrices", sep="_") %in% names(SGPmatrices::SGPmatrices)) {
                 stop("\tNOTE: Baseline matrices for state:", state, "not in SGPmatrices. Contact package maintainer to have baseline matrices added to package.")
             }
             tmp.years <- names(SGPmatrices::SGPmatrices[[paste(state, "Baseline_Matrices", sep="_")]])
             if (!year %in% tmp.years) year <- tmp.years[which(year==sort(c(tmp.years, year)))-1L]
             matrix.label <- paste0("SGPmatrices::SGPmatrices[['", paste(state, "Baseline_Matrices", sep="_"), "']][['", year, "']]")
             message(paste0("\tNOTE: Adding ", SGP::getStateAbbreviation(state, type="Long"), " (", state, "), ", year, " baseline matrices to SGPstateData."))
             return(matrix.label)
        }

	if (is.null(add.matrices.to.state)) add.matrices.to.state <- state

        SGPstateData[[add.matrices.to.state]][["Baseline_splineMatrix"]][["Coefficient_Matrices"]] <- eval(parse(text=getMatrixLabel(state, year)))
        return(SGPstateData)
} ### END addBaselineMatrices
