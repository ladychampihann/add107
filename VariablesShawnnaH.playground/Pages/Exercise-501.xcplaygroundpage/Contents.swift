let outerBullsEye = 20
let innerBullsEye = 50

var overallScore = 501
var roundScore = 0

var currentScore = overallScore

//Round 1
currentScore -= 60
currentScore -= 40
currentScore -= 10

roundScore = currentScore
print("Ha, I beat your Round 1 Score of \(roundScore)")

roundScore = 0

//Round 2
currentScore -= innerBullsEye
currentScore -= outerBullsEye
currentScore -= 5

roundScore = currentScore
print("Good job on your first 2 throws but I still am beating your Round 2 Score of \(roundScore)")

roundScore = 0

//Round 3
currentScore -= 40
currentScore -= innerBullsEye
currentScore -= innerBullsEye

roundScore = currentScore
print("I can't beleive your Round 3 Score is \(roundScore)! Wow you had me fooled in Round 1 and 2!")



/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Previous](@previous)  |  page 13 of 13
