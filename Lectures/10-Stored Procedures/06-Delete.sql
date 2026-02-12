CREATE PROCEDURE SP_DeletePerson
    @PersonID INT
AS
BEGIN
    DELETE FROM People WHERE PersonID = @PersonID
END

-------------------

USE C21_DB1;

EXEC	 SP_DeletePerson
		@PersonID = 4