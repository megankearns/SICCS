library(shiny)
library(igraph)
library(tidygraph)
library(ggraph)
library(tidyverse)
library(visNetwork)  # for interactive network display

nodes <- read_csv("trump-nodes.csv")
edges <- read_csv("trump-edges.csv")

# Rename columns if needed for visNetwork compatibility
nodes <- nodes %>%
  rename(id = name, label = Label)

edges <- edges %>%
  rename(from = Source, to = Target)

