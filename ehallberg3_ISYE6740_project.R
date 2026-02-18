library(worldfootballR)
setwd('/Users/khallberg/Documents/ISYE6740')



years <- seq(2018,2019,1)


stat_types <- list('standard',
'shooting',
'passing',
'passing_types',
'gca',
'defense',
'possession',
#'playing_time',
'misc')
# 'keepers',
#'keepers_adv'
#')

for (year in years){
  dir.create(paste0('fbref_data/',year))
  for (stat in stat_types){
    data <- fb_big5_advanced_season_stats(
      season_end_year = year,
      stat_type = stat,
      team_or_player = "player"
    )
    write.csv(data,paste0('fbref_data/',year,'/',stat,'.csv'))
  }
}

