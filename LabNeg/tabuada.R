
tabuada <- function(){
    tab <-""
    nums <- c(1:9)
    for (n in nums){
        for (m in nums){
            tab <- paste(tab , n , "x" , m ,"=",(n*m))
        }
        tab <- paste(cat(tab ,sep="\n"))
    }

}

print(tabuada())