
# a == 1 : 前方からの最大値検索
# a == 2 : 前方からの最小値検索
# a == 3 : 後方からの最大値検索
# a == 4 : 後方からの最小値検索

FUNC_findpeak <- function(vec,a)
{
  if ( ! is.vector(vec) ) return (0)

  if (a==1) {
    return(which.max(vec))
  } 
  else if (a==2){
    return(which.min(vec))
  }
  else if (a==3){
    vec <- rev(vec)
    p <- which.max(vec)
    p <- length(vec) - p + 1
    return(p)
  }
  else if (a==4){
    vec <- rev(vec)
    p <- which.min(vec)
    p <- length(vec) - p + 1
    return(p)
  }
  else {
    return (0)
  }
}

x<-iris$Sepal.Length
FUNC_findpeak(x,1)
FUNC_findpeak(x,2)
FUNC_findpeak(x,3)
FUNC_findpeak(x,4)



