# this function works for the mtcars dataset
manipulate_data <- function(data){
  "
  Compute the weight to gross horsepower ratio
    data: a dataframe with columns called wt and hp corresponding
      to the car's weight and gross horsepower
  "
  
  data_manipulated <- data %>% 
    mutate(weight_per_hp = wt/hp)
  
  return(data_manipulated)
}