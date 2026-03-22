package com.changdu.component.webviewcache;

import com.changdu.component.webviewcache.config.CacheMode;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class CacheRequest {
    private CacheMode cacheMode;
    private String key;
    private Map<String, String> mHeaders;
    private String mUserAgent;
    private int mWebViewRawCacheMode;
    private String mimeType;
    private String url;

    private static String generateKey(String str) {
        try {
            byte[] digest = MessageDigest.getInstance(SameMD5.TAG).digest(URLEncoder.encode(str).getBytes());
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < digest.length; i++) {
                int i2 = digest[i];
                if (i2 < 0) {
                    i2 += 256;
                }
                if (i2 < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i2));
            }
            return stringBuffer.toString().toLowerCase();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public CacheMode getCacheMode() {
        return this.cacheMode;
    }

    public Map<String, String> getHeaders() {
        return this.mHeaders;
    }

    public String getKey() {
        return this.key;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public String getUrl() {
        return this.url;
    }

    public String getUserAgent() {
        return this.mUserAgent;
    }

    public int getWebViewRawCacheMode() {
        return this.mWebViewRawCacheMode;
    }

    public void setCacheMode(CacheMode cacheMode) {
        this.cacheMode = cacheMode;
    }

    public void setHeaders(Map<String, String> map) {
        this.mHeaders = map;
    }

    public void setMimeType(String str) {
        this.mimeType = str;
    }

    public void setUrl(String str) {
        this.url = str;
        this.key = generateKey(str);
    }

    public void setUserAgent(String str) {
        this.mUserAgent = str;
    }

    public void setWebViewRawCacheMode(int i) {
        this.mWebViewRawCacheMode = i;
    }
}
