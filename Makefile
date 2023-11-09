CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++11
SRC_DIR = ./
OBJ_DIR = ./obj
INP_DIR = input

all: $(OBJ_DIR)/ford_fulkerson

$(OBJ_DIR)/ford_fulkerson: $(SRC_DIR)/ford_fulkerson.cpp
	$(CXX) $(CXXFLAGS) -o $@ $^

rodar_programa: $(OBJ_DIR)/ford_fulkerson
	./$^ < $(INP_DIR)/teste.txt

rodar_programa_saida_arquivo: $(OBJ_DIR)/ford_fulkerson
	./$^ < $(INP_DIR)/teste.txt > output/out.txt

clean:
	rm -f $(OBJ_DIR)/ford_fulkerson

.PHONY: all clean
