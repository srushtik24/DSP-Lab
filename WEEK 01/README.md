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
(a) repelem - Repeat copies of array elements (vector elements, matrix elements,
and matrix columns)
(b) repmat- Repeat copies of array
(c) eye-Identity matrix
(d) zeros - Create array of all zeros
(e) ones - Create array of all ones
(f) rand - Uniformly distributed random numbers

(g) reshape - Reshape array (Vector into Matrix, Matrix to Have Specified Num-
ber of Columns, Multidimensional Array into Matrix)

(h) cat- Concatenate arrays
(i) horzcat - Concatenate arrays horizontally
(j) vertcat - Concatenate arrays vertically
(k) diag - Create diagonal matrix or get diagonal elements of matrix
(l) blkdiag- Block diagonal matrix
(m) fliplr - Flips a matrix left to right.
(n) flipud - Flips a matrix up and down.
(o) rot90 - counterclockwise
(p) tril - Extracts lower triangular part
(q) triu - Extracts upper triangular part
(r) permute - Permute array dimensions
(s) circshift - Shift array circularly
(t) length - Length of largest array dimension
(u) size - Array size
(v) ndims - Number of array dimensions
(w) numel - Number of array elements
(x) isempty- Determine whether array is empty

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

## 6. MATLAB - Decision Making:

