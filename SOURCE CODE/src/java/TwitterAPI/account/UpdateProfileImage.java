package TwitterAPI.account;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import java.io.File;
public final class UpdateProfileImage {
    public static void main(String[] args) {
        if (args.length < 1) {
            System.out.println("Usage: java twitter4j.examples.account.UpdateProfileImage [image file path]");
            System.exit(-1);
        }
        try {
            Twitter twitter = new TwitterFactory().getInstance();
            twitter.updateProfileImage(new File(args[0]));
            System.out.println("Successfully updated profile image.");
            System.exit(0);
        } catch (TwitterException te) {
            te.printStackTrace();
            System.out.println("Failed to update profile image: " + te.getMessage());
            System.exit(-1);
        }
    }
}
