## What Does It do
-Data model to store users, posts and comments where comments are nested; similar to reddit. Posts have an associated "poster" (the user who posted that post) and associated comments. comments will also have an associated score which is calculated by the number of users who upvoted minus the number of users that downvoted.

-And, query to fetch the post along with its poster and all comments. The comments are sorted by the product of the square of their score and their time of posting in descending order.
