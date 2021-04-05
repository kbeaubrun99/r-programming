#install.packages("GGally")
library(GGally)
#install.packages("network")
library(network)
#install.packages("sna")
library(sna)
library(ggplot2)
library(RColorBrewer)

#random graph
net = rgraph(10, mode = "graph", tprob = 0.5)
net = network(net, directed = FALSE)
food = c("strawberry", "banana", "pear", "apple", "orange", "spinach", 
        "carrot", "tomato", "broccoli", "corn" )
network.vertex.names(net) = food
ggnet2(net)

#simple colored graph
ggnet2(net, node.size = 6, node.color = "pink", edge.size = 1, 
       edge.color = "skyblue")

#colored graph with legend
net %v% "healthy food" = ifelse(food %in% c("strawberry", "banana", "pear", 
                                            "apple", "orange"), 
                         "fruit", "vegetable")
ggnet2(net, color = "healthy food", palette = "Pastel1")

#graph with labels
ggnet2(net, label = TRUE)
ggnet2(net, label = "healthy food")
ggnet2(net, label = food)
ggnet2(net, label = c("spinach", "carrot", "tomato", "broccoli", "corn"), 
       color = "healthy food", label.color = "black")
