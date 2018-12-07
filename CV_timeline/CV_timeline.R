devtools::install_github("laresbernardo/lares")


order <- c("Role", "Place", "Type", "Start", "End")
today <- as.character(Sys.Date())
cv <- data.frame(rbind(
  c("Head of Data Science and Analytics", "Comparamejor", "Work Experience", "2016-08-01", today),
  c("Data Scientist Consultant", "MatrixDS", "Work Experience", "2018-09-01", today),
  c("Big Data & Data Science Programme", "UdC", "Academic", "2017-09-01", "2018-02-28"),
  c("Project Engineer", "Polytex", "Work Experience", "2016-05-15", "2016-09-01"),
  c("Big Data Analyst", "MEG", "Work Experience", "2016-01-01", "2016-04-30"),
  c("Advanced Excel Instructor", "ARTS", "Work Experience", "2015-11-01", "2016-04-30"),
  c("Continuous Improvement Intern", "PAVCO", "Work Experience", "2015-04-01", "2015-08-30"),
  c("Mechanical Design Intern", "SIGALCA", "Work Experience", "2013-07-01", "2013-09-30"),
  c("DJs Online Community Owner", "LaresDJ.com -> SoloParaDJs", "Extra", "2010-01-05", today),
  c("Mechanical Engineer Degree", "USB", "Academic", "2009-09-15", "2015-11-20"),
  c("DJ and Composer/Producer", "Legacy Discplay", "Extra", "2009-05-01", "2015-04-30")
))
colnames(cv) <- order



library(lares)
cv <- read.csv("cv.csv")
cv <- cv[order(cv$Type,cv$Start),]
plot_timeline(event = cv$Role, 
              start = cv$Start, 
              end = cv$End, 
              label = cv$Place, 
              group = cv$Type,
              save = TRUE,
              subtitle="Henry Gu")
