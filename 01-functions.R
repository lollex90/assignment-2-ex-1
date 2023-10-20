# this function works for the mtcars dataset
manipulate_data <- function(data, change_to_kg = F){
  "
  Compute the weight to gross horsepower ratio
    data: a dataframe with columns called wt and hp corresponding
      to the car's weight and gross horsepower
    change_to_kg: bool indicating whether to change the units from lbs to kg, 
      default = False
  "
  
  data_manipulated <- data %>% 
    mutate(weight_per_hp = wt/hp)
  
  # change weight units to kg
  if(change_to_kg == T){
    data_manipulated <- data_manipulated %>% 
      mutate(wt = wt*0.4536,
             weight_per_hp = weight_per_hp*0.4536)
  }
  
  return(data_manipulated)
}