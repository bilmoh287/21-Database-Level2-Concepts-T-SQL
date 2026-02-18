

DECLARE static_cursor CURSOR STATIC FORWARD_ONLY FOR
SELECT StudentID, Name, Grade FROM Students;

OPEN static_cursor; 

DECLARE @StudentID INT, @Name NVARCHAR(50), @Grade INT;

FETCH NEXT FROM static_cursor INTO @StudentID, @Name, @Grade;

-- Enter a loop that will continue as long as the previous fetch was successful.
-- @@FETCH_STATUS returns 0 if the fetch was successful.
WHILE @@FETCH_STATUS = 0
BEGIN
	    PRINT 'Student Name: ' + @Name + ', Grade: ' + CAST(@Grade AS NVARCHAR(10));

    -- Fetch the next row of data from the cursor.
    -- The loop will continue until there are no more rows to fetch.
    FETCH NEXT FROM static_cursor INTO @StudentID, @Name, @Grade;  
END;

-- Once the loop is finished (no more rows to fetch), close the cursor.
-- Closing the cursor releases the current result set.
CLOSE static_cursor;

-- Deallocate the cursor.
-- This step is important to free up resources used by the cursor.
DEALLOCATE static_cursor;
