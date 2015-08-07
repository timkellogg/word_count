# Count Word

##### Hosted at: **https://intense-bayou-7483.herokuapp.com/** 

##### Breaks down word use and optionally looks up phrase occurances 

## Description

Count Word is a Sinatra application that allows users to input text and it will breakdown the frequency, ranking, and percentage of those words used in the passage.  It does not count punctuation but when you pass in a phrase, it will count the seperate characters.  This was thought to be a bonus because the application already generates findings for specific words.  

The biggest problem with the project is that it relies on too many dependencies as a result of time pressure.  jQuery and Bootstrap should be taken out and replaced with smaller and more efficient code.  jQuery is only used for 2 lines of code at the moment so that may come later.  

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
* Front-End Framework: Bootstrap 
* JavaScript: jQuery 

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
