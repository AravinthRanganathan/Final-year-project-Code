/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TwitterAPI.account;

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
import java.sql.Connection;
import java.sql.*;

/**
 *
 * @author Kavi Raja
 */
public class GetTimeLineStatuss {

    Connection con = DBConnection.getConnection();

    public void GetTweetsFromTimeLine(String ckey, String cskey, String tkey, String toskey) {
        ConfigurationBuilder cob = new ConfigurationBuilder();
        cob.setDaemonEnabled(true)
                .setOAuthConsumerKey("icrsGUpLGLFLW49K6cfpRq2od")
                .setOAuthConsumerSecret("2baepf1Q45BgsVcrWi7sQ31jpetyUuDTXJsz9EWBXpdO59NZFQ")
                .setOAuthAccessToken("759307560369303553-OvnCjh1jxksMqcmJtTRF4n3W6ZpS1mR")
                .setOAuthAccessTokenSecret("yW3TdLIrEZ0I6nEUO0z7Z8rx1bXZT9LPKqLiRPf87J1NQ");
        TwitterFactory tf = new TwitterFactory(cob.build());
        twitter4j.Twitter twitter = tf.getInstance();
        try {

            List<Status> status = twitter.getHomeTimeline();
            for (Status st : status) {
                String tweetss = st.getText();
                tweetss = tweetss.replace("'", " ");

                try {
                    Statement stt = con.createStatement();
                    stt.executeUpdate("insert into tweets (idd, name, tweet, retweet, imageurl) values ('" + st.getId() + "', '" + st.getUser().getName() + "', '" + tweetss + "', '" + st.getRetweetCount() + "', '" + st.getUser().get400x400ProfileImageURL() + "')");

                } catch (SQLException sq) {
                    sq.printStackTrace();
                }
            }

        } catch (TwitterException ex) {
            Logger.getLogger(TwitterAPI.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
