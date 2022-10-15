# First time coding in Julia
# Hopefully this will be a long a prosperous endeavour c:

# Starting with the introductory exercises on rosalind to learn how to code
# with Julia. I want a specific emphasis on bioinformatics, so here we go.

"""
# 1. Variables and some arithmetic

Problem: Given a right triangle of lengths a, b, compute the square of the hypotaneuse

Solution: return a^2 + b^2
"""

function compute_hypotaneuse(a::Int, b::Int)
    return a^2 + b^2
end

# Testing function
compute_hypotaneuse(2, 4)

# Solving roslaind question
compute_hypotaneuse(920, 906)

"""
# 2. Strings and Lists

Problem: Given a string and 4 integers (a, b, c, d), slice through string at indices a-b, c-d.

Solution: 
read string from work directory
create function(string::string, a, b, c, d)
    splice1 = string[a:b]
    splice2 = string[c:d]
    return(join([spice1, splice2]))
end

"""

function splice_string_at_given_points(file_name::String, a::Int, b::Int, c::Int, d::Int)

    # Opening txt from work directory
    text = open(file_name) do file
        read(file, String)
    end

    # Splicing string at given points
    return println(join([text[a:b], text[c:d]], " "))
end


# Testing function
splice_string_at_given_points("test.txt", 1, 4, 10, 15)

# Solving rosalind problem
splice_string_at_given_points("split_string_at_point.txt", 38, 45, 65, 72)


"""
# 3. 