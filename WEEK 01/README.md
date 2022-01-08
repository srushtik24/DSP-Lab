# **MATLAB BASICS-Week 1:**
Results of our code (with screenshots)

## 1. Basic Matrix Operations:
* Create a simple vector with 10 elements called A
* Add 3 to each element of vector A and store the result in a new vector ’B’.
* Creating a 5 x 5 matrix ’X’ using semicolons (;) to separate the rows of a matrix.
* Find the transpose of the matrix X and store the result in a new matrix ’Y’.
* Multiply these two matrices, ’X’ and ’Y’
* Multiply the corresponding elements of two matrices
* Create a column vector X1, from the elements of the 4th row of the matrix ’X’. To refer all the elements in the mth column we type X(:,m).
* Select the elements in the mth through nth columns of matrix ’X’.
* Create a sub-matrix ’X2’ taking the inner sub-part of matrix ’X’.
* Delete a Row or a Column in a Matrix ’X’.

<img src="Results\P1_1.PNG">
<img src="Results\P1_2.PNG">
<img src="Results\P1_3.PNG">

## 2. MATLAB Commands: Graph, Save, and Read:
* Generate elementary signals and display using plot, subplot and stem commands in MATLAB. Also add xlabel, ylabel, axis tight, grid on, legend to the figure.
* save, load, xlsread, xlswrite, audioread and audiowrite commands.
    1. Create and save two variables, A and B, to a file called ABfile.mat.
    2. Create and save two variables, A and B, to a file called AB1file.txt.
    3. Create and save two variables, A and B, to a file called AB1file.xls.
    4. Create two variables, save them to an ASCII file, and then view the contents of the file.
    5. Create a structure, s1, that contains three fields, a, b, and c. Save the fields of structure s1 as individual variables in a file called newstruct.mat.
    6. Save two variables to ’example.mat’. Then, append a third variable to the same file.
* readcell and writecell commands: (writes to a file with the name and extension specified as .txt, .dat, .xls or .csv for delimited text files)
* writematrix, write a matrix to a file and readmatrix, read matrix from file: (writes to a file with the name and extension specified as .txt, .dat, .xls or .csv for delimited text files)
* Read audio files in a range of different file formats, including .wav, .mp4,.au, .ogg, etc. and also write sound files in different formats, including .wav,.mp4, .au,.ogg, etc. (will play on MATLAB)

<img src="Results\P2_1.PNG">
<img src="Results\P2_2.PNG">
<img src="Results\P2_3.PNG">
<img src="Results\P2_4_ReadWriteCell.PNG">
<img src="Results\P2_5_writematrix.PNG">


## 3. Writing Expressions:
* Express the quadratic equation with ”a”, ”b”, and ”c” and its quadratic formula in MATLAB. Also find the roots of the quadratic equation by assumingthe weights ”a”, ”b”, and ”c” of the expression.
* Plot the function y = x^2 + 0.5x + 2 over the range x = [-5, 10].

<img src="Results\P3_1.PNG">
<img src="Results\P3_2.PNG">

## 4. MATLAB Commands: Create, Combine Arrays, Manipulations:
* repelem - Repeat copies of array elements (vector elements, matrix elements, and matrix columns)
* repmat- Repeat copies of array
* eye-Identity matrix
* zeros - Create array of all zeros
* ones - Create array of all ones
* rand - Uniformly distributed random numbers
* reshape - Reshape array (Vector into Matrix, Matrix to Have Specified Number of Columns, Multidimensional Array into Matrix)

* cat- Concatenate arrays
* horzcat - Concatenate arrays horizontally
* vertcat - Concatenate arrays vertically
* diag - Create diagonal matrix or get diagonal elements of matrix
* blkdiag- Block diagonal matrix
* fliplr - Flips a matrix left to right.
* flipud - Flips a matrix up and down.
* rot90 - counterclockwise
* tril - Extracts lower triangular part
* triu - Extracts upper triangular part
* permute - Permute array dimensions
* circshift - Shift array circularly
* length - Length of largest array dimension
* size - Array size
* ndims - Number of array dimensions
* numel - Number of array elements
* isempty- Determine whether array is empty

<img src="Results\P4_1.PNG">
<img src="Results\P4_2.PNG">
<img src="Results\P4_3.PNG">
<img src="Results\P4_4.PNG">
<img src="Results\P4_5.PNG">
<img src="Results\P4_6.PNG">
<img src="Results\P4_7.PNG">
<img src="Results\P4_8.PNG">
<img src="Results\P4_9.PNG">
<img src="Results\P4_10.PNG">

## 5. MATLAB - Loop Types:
Concept of While Loop, For Loop, Nested Loops, 
1. While Loop, Break and continue concepts:
<img src="Results\P5_1.PNG">
2. For and Nested For loop:
<img src="Results\P5_2.PNG">

## 6. MATLAB - Decision Making:
* if ... end statement
* if...else...end statement
* If... elseif...elseif...else...end statements
* The Nested if Statements
* switch statement
* Nested switch Statements
<img src="Results\P6_1.PNG">
<img src="Results\P6_2.PNG">
<img src="Results\P6_3.PNG">
<img src="Results\P6_4.PNG">
<img src="Results\P6_5.PNG">
