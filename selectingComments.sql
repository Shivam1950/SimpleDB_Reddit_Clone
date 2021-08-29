--The query to retrieve all the child comments, eg for comment 5
SELECT *
FROM
   Comment AS c
JOIN ParentChildComment p ON c.comment_id = p.childComment_id
WHERE 
   p.parentComment_id = 5
ORDER BY 
   POWER((c.upvote - c.downvote) * c.created_date, 2) DESC;

--The query to retrieve all the parent comments, eg for comment 5
SELECT c.*
FROM
   Comment AS c
JOIN ParentChildComment p ON c.comment_id = p.childComment_id
WHERE 
   p.childComment_id = 5
ORDER BY 
   POWER((c.upvote - c.downvote) * c.created_date, 2) DESC;
--Note the code will work for all comment id we just need to put it inside a loop
--where value of p.childComment_id keep on inc (as seen in line 18)
--we run the loop till all comments are retrieved.
