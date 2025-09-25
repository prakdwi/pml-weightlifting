# URLs for the datasets
training_url <- "https://d396qusza40orc.cloudfront.net/predmachlearn/pml-training.csv"
testing_url <- "https://d396qusza40orc.cloudfront.net/predmachlearn/pml-testing.csv"

# Download paths
training_path <- "data/pml-training.csv"
testing_path <- "data/pml-testing.csv"

# Download the files if they don't already exist
if (!file.exists(training_path)) {
  download.file(training_url, destfile = training_path, method = "curl")
}
if (!file.exists(testing_path)) {
  download.file(testing_url, destfile = testing_path, method = "curl")
}

print("Data download complete!")

