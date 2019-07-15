
package TwitterAPI;
import TwitterAPI.TwitterAPI;
import javax.net.ssl.SSLEngineResult;
import twitter4j.TwitterFactory;
import twitter4j.conf.ConfigurationBuilder;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import twitter4j.Status;
import twitter4j.TwitterException;
import ActionPage.DBConnection;
import TwitterAPI.account.GetTimeLineStatuss;
import java.sql.Connection;
import java.sql.*;
public class GetTimeLineStatus {

    Connection con = DBConnection.getConnection();

    public void GetTweetsFromTimeLine(String ckey, String cskey, String tkey, String toskey) {
        ConfigurationBuilder cob = new ConfigurationBuilder();
        GetTimeLineStatuss gtls = new GetTimeLineStatuss();
        System.out.println(ckey);
        System.out.println(cskey);
        System.out.println(tkey);
        System.out.println(toskey);
        cob.setDaemonEnabled(true)
                .setOAuthConsumerKey(ckey)
                .setOAuthConsumerSecret(cskey)
                .setOAuthAccessToken(tkey)
                .setOAuthAccessTokenSecret(toskey);
        TwitterFactory tf = new TwitterFactory(cob.build());
        gtls.GetTweetsFromTimeLine(ckey, cskey, tkey, toskey);
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

