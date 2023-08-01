`.onLoad` <-
function(libname, pkgname) {
}


`.onAttach` <-
function(libname, pkgname) {
	if (interactive()) {
		packageStartupMessage('SGPmatrices ', paste(paste0(unlist(strsplit(as.character(packageVersion("SGPmatrices")), "[.]")), c(".", "-", ".", "")), collapse=""),' (8-1-2023). For help: >help("SGPmatrices") or visit https://centerforassessment.github.io/SGPmatrices')
	}
}
