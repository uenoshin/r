
# which.max、which.min は前方からの最大値・最小値検索であるため、
# 同値が複数存在するベクトル内では最初に登場するものしか検索できません。
# 後方検索があればいいのに、と思ったので関数を用意しました。

# a == 1 : 前方からの最大値検索（which.maxと同じ）
# a == 2 : 前方からの最小値検索（which.minと同じ）
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

