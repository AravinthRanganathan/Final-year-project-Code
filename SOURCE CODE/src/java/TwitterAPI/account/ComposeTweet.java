/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TwitterAPI.account;

/**
 *
 * @author Kavi Raja
 */
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.auth.AccessToken;

public class ComposeTweet {

	static String consumerKeyStr = "icrsGUpLGLFLW49K6cfpRq2od";
	static String consumerSecretStr = "2baepf1Q45BgsVcrWi7sQ31jpetyUuDTXJsz9EWBXpdO59NZFQ";
	static String accessTokenStr = "759307560369303553-OvnCjh1jxksMqcmJtTRF4n3W6ZpS1mR";
	static String accessTokenSecretStr = "yW3TdLIrEZ0I6nEUO0z7Z8rx1bXZT9LPKqLiRPf87J1NQ";

	public void PostTweets(String msg) {

		try {
			Twitter twitter = new TwitterFactory().getInstance();

			twitter.setOAuthConsumer(consumerKeyStr, consumerSecretStr);
			AccessToken accessToken = new AccessToken(accessTokenStr,
					accessTokenSecretStr);

			twitter.setOAuthAccessToken(accessToken);

			twitter.updateStatus(msg);

			System.out.println("Successfully Tweet's in Twitter.");
		} catch (TwitterException te) {
			te.printStackTrace();
		}
	}

}
