# IOS-QuizTime
CodePath IOS group project

Unit 8: Group Milestone - README 
===

# QUIZTIME
 ## Milestone 1 - Build Progress

## Table of Contents
1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)
5. [Milestone 1 Build Progress](#Milestone-1-Build-Progress)
6. [Milestone 2 Build Progress](#Milestone-2-Build-Progress)
7. [Milestone 3 Build Progress](#Milestone-3-Build-Progress)

## Overview
### Description
Quiz Time is an application that allows users to create, save, delete, edit, and take their own quizzes. Once created, the user should be able to see their own library of saved quizzes as well as other people's quizzes. The user will be able to search through other people's quizzes by author, quiz name, or quiz question using a filtered search bar. 

### App Evaluation

- **Category:** Education
- **Mobile:**  Because it is mobile, users will be able to use the app's features from any location and reload all recently added quiz sets from other users.
- **Story:** Once a quiz set is created or a set from another user is found, this app will allow users to study for any topic, anywhere.
- **Market:** Anyone who needs to study for something can use this app to support them. It can help people study by allowing them to create quiz sets or find existing quiz sets to study for their topic.
- **Habit:** This app could be used as frequently or infrequently as the user desires, depending on how much they need to study for and what exactly they are looking for.
- **Scope:** To begin, we would allow users to modify their quiz library in any way they see fit, as well as view other people's libraries and search the local library. More features, such as cloning other users' quiz sets, randomizing questions when the user quizzes themselves, and interactive profiles, will have a large potential use.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

- [x] User can login
- [x] User can logout
- [x] User can create a new account
- [x] Set up parse server
- [x] User can create a quiz set with description
- [x] User can add questions and answers to specific quiz sets
- [x] User can save quiz sets
- [ ] User can delete quiz sets
- [ ] User can delete quiz questions/answers
- [ ] User can edit quiz set names and descriptions
- [ ] User can edit quiz questions/answers
- [x] User can view all the quiz sets they have created 
- [x] User can view all the quiz sets other users have created
- [ ] User can view all selected quiz set questions and answers 
- [ ] User can take a quiz from their library
- [ ] User can take a quiz that other users have posted
- [ ] User can search through feed with filtered search bar

**Optional Nice-to-have Stories**

- [x] User can stay logged in 
- [ ] User can clone other user quiz sets
- [ ] Quiz questions/answers will be randomizes

### 2. Screen Archetypes

* Login
   * User can create a new account
   * User can login
   * User can logout
   * [Optional] User can stay logged in 
* Landing Page - Left Navigation Button
   * User can view all the quiz sets they have created 
* Create New Quiz Set
   * User can create a quiz set with name and description
   * User can save quiz sets
   * User will be prompted to View Quiz Set Q/A 
* Edit Quiz Set Name & Description
   * Upon selecting edit button next to specific quiz set from the landing page
   * User can edit quiz set name and description
* View Quiz Set Questions/Answers
   * Upon user selecting specific quiz set from the landing page
   * User can delete selected quiz set
   * User can delete quiz questions/answers
* Create New Question/Answer
   * User can add questions and answers to selected quiz set
* Edit Quiz Set Questions/Answers
   * Upon selection of specific question/answer in View Quiz Set Q/A
   * User can edit quiz questions/answers
* Landing Page - Right Navigation Button
   * User can view all the quiz sets other users have created
   * User can search through feed with filtered search bar (3 options)
   * User can take a quiz that other users have posted upon selection
   * [Optional] User can clone other user quiz sets (popup)
* Quiz Time
   * User can take the quiz from selected quiz set
   * [Optional] Quiz questions/answers will be randomizes
   
### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Landing Page - Left Navigation Button
* Landing Page - Right Navigation Button

**Flow Navigation** (Screen to Screen)

* Login Screen
   => Landing Page - Left Navigation Button
* User Creates Account Screen
   => Landing Page - Left Navigation Button
* Landing Page - Left Navigation Button
   => Create New Quiz Set
    => Edit Quiz Set Name & Description
   => View Quiz Set Questions/Answers
* View Quiz Set Questions/Answers
   => Create New Question/Answer
   => Edit Quiz Set Questions/Answers
   => Quiz Time
* Landing Page - Right Navigation Button
   => Quiz Time
   => [Optional] Clone Set popup
* [Optional] Clone Set popup
   => [Optional] Landing Page - Left Navigation Button

## Wireframes
<img src="https://cdn.discordapp.com/attachments/759943736766758962/961042667872088094/20220320_234840.jpg" width=600>

### [BONUS] Digital Wireframes & Mockups
<img src="https://cdn.discordapp.com/attachments/759943736766758962/961042505468637234/IOS-group-project-digital-mockup.JPG" width=600>
### [BONUS] Interactive Prototype

 ## Schema 

### Models

User
| Property  | Type | Description |
| ------------- | ------------- | ------------- |
| user_name  |  String  | unique username for each user |
| password  | String  | Password for every user |

Quiz
| Property | Type | Description |
| ------------- | ------------- | ------------- |
| objectID  | String  | Unique id for each quiz set |
| author| User | To keep track of who created quiz set | 
| description | String | Description for quiz set |
| Questions | Array[Strings] | Keep track of corresponding Q/A |
| createdAt | DateTime | Allow user to see when user created quiz |

### Networking
* Login 
   * (Read/GET) Fetch user credentials
   * (Create/POST) Create a new user
* Landing Page - Left Navigation Button
    * (Read/GET) List quiz set names and descriptions that current user has created
* Create New Quiz Set
   * (Create/POST) Create new quiz set with name and description
* Edit Quiz Set Name & Description
   * (Update/PUT) Change quiz set name and description
*  View Quiz Set Questions/Answers
   * (Read/GET) List of questions and answers is current set
   * (Delete) Delete selected question and answer
   * (Delete) Delete entire quiz set
*  Create New Question/Answer
   * (Create/POST) Create new question and answer in current quiz set
*  Edit Quiz Set Questions/Answers
   * (Update/PUT) Change question or answer form current card in quiz set
*  Landing Page - Right Navigation Button
   * (Read/GET) Fetch all quiz set names, descriptions, author, and time stamps
   * (Read/GET) From query, use LIKE keyword to use filtered search bar
* Quiz Time
   * (Read/GET) Fetch quiz set name, description, questions and answers

Create basic snippets for each Parse network request]
// iOS
// (Read/GET) Query all posts where user is author
let query = PFQuery(className:"Post")
query.whereKey("author", equalTo: currentUser)
query.order(byDescending: "createdAt")
query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
   if let error = error {
      print(error.localizedDescription)
   } else if let posts = posts {
      print("Successfully retrieved \(posts.count) posts.")
      // TODO: Do something with posts...
   }
}

- [OPTIONAL: List endpoints if using existing API such as Yelp]

 ## Milestone 1 Build Progress
 
<img src='http://g.recordit.co/PyD0lTt1xx.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />
<img src='http://g.recordit.co/C4Y8850uLQ.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />
<img src='http://g.recordit.co/FukCe3tOmg.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

 ## Milestone 2 Build Progress
 
<img src='http://g.recordit.co/W0TB16lyzO.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />
<img src='http://g.recordit.co/9KtgFxBGFn.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />
<img src='http://g.recordit.co/rDL6zNEGkv.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />
<img src='http://g.recordit.co/LNN8IsNJxs.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />
<img src='http://g.recordit.co/HKjj19m3BM.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

 ## Milestone 3 Build Progress
 
<img src='http://g.recordit.co/eGoocrSlfj.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />
