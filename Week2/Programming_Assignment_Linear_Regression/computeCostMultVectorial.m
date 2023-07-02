## Copyright (C) 2023 rafae
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} computeCostMultVectorial (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: rafae <rafae@GAMEZ>
## Created: 2023-05-27

function J = computeCostMultVectorial (X, y, theta)

  % Initialize some useful values
  m = length(y); % number of training examples

  % You need to return the following variables correctly
  X1 = [];
  for i = 1:m
    X1 = [X1 [(X(i, :))']];
  endfor

  J = (X1' * theta - y)' * (X1' * theta - y);

endfunction


