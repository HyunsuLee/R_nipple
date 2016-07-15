RNAseq <- function(x_data){
  require(preprocessCore)
  x_mat <-as.matrix(x_data[3:16])
  x_mat = x_mat + 1
  x_mat_log = log10(x_mat)
  x_mat_log_nq = normalize.quantiles(x_mat_log)
  colnames(x_mat_log_nq) <- colnames(x_mat_log)
  rownames(x_mat_log_nq) <- t(x_data[1])
  return(x_mat_log_nq)
}
