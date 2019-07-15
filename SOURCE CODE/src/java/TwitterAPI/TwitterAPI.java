package TwitterAPI;
import javax.net.ssl.SSLEngineResult;
import twitter4j.TwitterFactory;
import twitter4j.conf.ConfigurationBuilder;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import twitter4j.Status;
import twitter4j.TwitterException;
public class TwitterAPI {
    public static void main(String[] args) {
        // TODO code application logic here

        ConfigurationBuilder cob = new ConfigurationBuilder();
        cob.setDaemonEnabled(true)
                .setOAuthConsumerKey("XRhsvRbCadstZLxNgULJNnCGIvQ")
                .setOAuthConsumerSecret("9ONDMXtEbsdIpInFjufznt9vRMUfW3kGA281OCNqFkknHukKPTTm")
                .setOAuthAccessToken("1048193346361905152-j62SHiVfie6gFwEhjFezRe1pE5LIk8")
                .setOAuthAccessTokenSecret("plyoHbLCd1b1AZUjwMCAAdflTvkrrXca0wXz4EqvkQTijA");
        TwitterFactory tf = new TwitterFactory(cob.build());
        twitter4j.Twitter twitter = tf.getInstance();
        try {
            List<Status> status = twitter.getHomeTimeline();
            for (Status st : status) {
             
            }
        } catch (TwitterException ex) {
            Logger.getLogger(TwitterAPI.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}


