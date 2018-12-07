For our project we used Xcode and Swift.
Our design decisions fell broadly into two cateogires: UI desicions that were made and implemented on Xcode's main.storyboard. This is where we created
the views that our users see when they use the app. Our design decisions for this portion were mostly stylistic. We thought through creating a loading screen,
the home page where users can choose a grill, the fact page, and each grills menus. In terms of style, we created custom google map images two show the locations
of the various grills. These images were then linked to buttons on Xcode that would redirect to the respective grill's menu. We also created custom emblems for
the order and grill info buttons. Other than that we used mostly default Xcode styling on our buttons and text.

We made design decisions in our swift code as well: We had the option of using one table view and segue all the grill info into that or creating seperate table
views for each of the grills. We opted to to the latter because we intially intended to have diffferent UI elements for the seperate grills.
We also disabled the submit function on the menu page if user hasnt entered their name.
We created a stepper on the menu that the user can see so they can edit and keep track of how many of each menu item they order.
Another important desiogn decision we made was to have the ordering handled by redirecting to iMessage. We considered having the message go to a seperate grill
employee interface. We decided that this would be to complex and that an iMessage sent to a phone at the grill would serve the same purpose. The grill phone's
iMessage would serve as the queque. Once orders are completed the grill emlpoyee can delete the message and clear the queque.
