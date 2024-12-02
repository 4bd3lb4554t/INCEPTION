
NAME = megaphone

SRC = megaphone.cpp

OBJ = $(SRC:.cpp=.o)

CMP  = c++

CFLAGS = -Wall -Wextra -Werror -std=c++98 



all: $(NAME)

$(NAME): $(OBJ)
	$(CMP) $(CFLAGS) $(OBJ) -o $(NAME) 

%.o:%.cpp
	$(CMP) $(CFLAGS) -o $@ -c $<

clean:
	@rm -rf $(OBJ)

fclean: clean 
	@rm -rf $(NAME)

re: fclean	all

.SECONDARY: $(OBJ)
