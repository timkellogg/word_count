# Count Word

##### Hosted at: ** https://intense-bayou-7483.herokuapp.com/ ** 

##### Breaks down word use and optionally looks up phrase occurances 

## Description

Count Word is a Sinatra application that allows users to input text and it will breakdown the frequency, ranking, and percentage of those words used in the passage.  It does not count punctuation. 

There's an optional choice for finding a phrase in the text.  If the user wants to find both "Lorem ipsum" in "Lorem ipsum" they can fill out the optional field.

## Setup

###### To Run:

* Download the repository 
* Extract the files 
* `cd` into the directory 
* Install dependencies through `bundle install`
* Run the application through `shotgun ruby.app` which will automatically update changes as they occur

###### To Test:

* Assuming you have downloaded the repo, `cd` into the directory
* Run unit testing via `rspec spec\{name_of_file}`
* Run integration testing via `rspec`

## Technologies Used

* Testing: Rspec/Capybara
* Server: Puma
* Stack: Ruby/Sinatra
* Gems: listed in Gemfile

### Legal 

Copyright (c) 2015 **Tim Kellogg**

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
