package com.trendyol;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@KarateOptions(features = "src/test/java/Features")

//Bu kısımda feautes= yaptığımız gibi tags= yapılır ve istenilen tag'ler çağrılabilir.
//Böylece istediğimiz ölçütte testlerimizi gruplayabiliriz.

/**
 * @author Semih Saydam
 * */
public class testRunner {
}
