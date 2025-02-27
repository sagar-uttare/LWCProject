public class ContactEmailHelper {

    // Method to get the contact email for a given User ID
    public static String getContactEmailForUser(String userId) {
        try {
            // Query the User, Contact, and Account
            User user = [
                SELECT ContactId, Contact.Email 
                FROM User 
                WHERE Id = :userId
                LIMIT 1
            ];

            // Log the User and Contact details
            System.debug('User: ' + user);
            System.debug('ContactId: ' + user.ContactId);

            // Check if the user has an associated contact
            if (user.ContactId == null) {
                return 'No associated contact found for the user.';
            }

            if (user.Contact.Email == null) {
                return 'The associated contact does not have an email.';
            }

            // Return the contact's email
            return user.Contact.Email;

        } catch (Exception e) {
            // Log the exception
            System.debug('Error occurred: ' + e.getMessage());
            return 'An error occurred: ' + e.getMessage();
        }
    }
}