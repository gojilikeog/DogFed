![Hack the Northeast Beyond - 2021](https://raw.githubusercontent.com/gojilikeog/DogFed/main/1604363361327.jpeg)

# FeedDog
App designed for Hack The Northeast - 2021

Category: Inconvienet App

Function:
- iOS app developed to remind the user if they have already fed the dog for their current meal.
  - Screen is red with "NO" displayed right in the middle to inform the user that the dog had not been fed for the time period.
  - Screen is green with "YES" displayed if the dog had already been fed for that meal period.
  - Clicking the screen changes the screen to mark the meal as complete - pop up with a message when switching to "YES"
 
 Ideas for functionality:
 - Settings feature to input the number of meals the dog gets per day
  - Time periods of when the meal would be served
    - Asks if supplements/medicine was given for this meal
      - Perhaps a toggle in the settings if you wish for this prompt?
    - Ability to notify user if the dog has missed a meal within the designated time periold
    - Ability to reset for the next meal while notifying the user that the dog has not had their current meal
      - Would require a variable (perhaps an optional) in order to this as it would take up memory to have the variable sitting.
 - Designating name of Dog that is missing meal (Multiple Dog Compatibility)
 - Ability to share dog profile with multiple devices so household can mark the meal complete
   - Name of household member that fed the dog
   - Instead of directly asking the person, why not do it through the app? Less talking to people!

Languages Used:
- Swift

**Recap: Post Hackathon**-------------------------------------------

- Summary: 
Designing this application allowed for an accelerated learning of using XCode/Swift to develop an application. FeedDod (At the time of this update) consists of 4 Scenes w/ 2 Navigation Controllers.
    - Title Screen: Main screen w/ button that moves user to the following menu.
    - Dog House: Table View consisting of data user inputs to represents current dogs the user cares for. Screen contains two paths: Plus button to add another dog or selecting a cell proceeds to screen with information of dog's meal status
    - Add Dog Info: Table View with four cells to input information
      - Photo
      - Name
      - Breed
      - Notes
   - Current Status: Screen with text in the center displaying the current status of the dogs meal. Screen has background colors coresponsding with each status
     - "YES" - Green background color w/ a popup thanking the user for feeding the dog
     - "NO" - Red background color w/ a popup appearing if you press the button while displaying "YES"
     - Color and Message changes upon pressing the button!
          
**- Problems encounted:**

I determined my current skill level with Swift to be beginner at best, having spent about 10 days getting familiar with syntax/variables/classes. Ultimately, as my knowledge developed, so did the application as well as the complications that came with it. The inability to properly apply CoreData upon the final day, plus exhaustion from 15 hour stints learning/practicing/developing from the past two days led to Compiler Errors that broke the app. Application worked using Arrays/Dictionarys to store the data, but without storing the information with CoreData, the information was lost immediately after navigating away from the screens.

**- The future:**

Moving forward, I'll continue working on the application to fix and deploy for local use. The current problems that need to be solved:
  - CoreData implementation
  - Different animations while chaning screens instead of a screen that is able to be pulled down.
  - Ability to share household info with other uses, allowing a household to inform one another if they've fed the dog. This goes into the main purpose for this app.
  - The knowledge gained from this two day hackathon absolutely get me excited for the future, and the potential applications of the ideas practiced here.
