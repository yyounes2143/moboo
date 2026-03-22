package com.sensorsdata.analytics.android.sdk.internal.beans;

import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.sensorsdata.analytics.android.sdk.SALog;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ServerUrl {
    private String baseUrl;
    private String host;
    private String project;
    private String token;
    private String url;

    private ServerUrl() {
    }

    public boolean check(ServerUrl serverUrl) {
        if (serverUrl != null) {
            try {
                if (getHost().equals(serverUrl.getHost())) {
                    if (getProject().equals(serverUrl.getProject())) {
                        return true;
                    }
                    return false;
                }
                return false;
            } catch (Exception e) {
                SALog.printStackTrace(e);
                return false;
            }
        }
        return false;
    }

    public String getBaseUrl() {
        return this.baseUrl;
    }

    public String getHost() {
        return this.host;
    }

    public String getProject() {
        return this.project;
    }

    public String getToken() {
        return this.token;
    }

    public String getUrl() {
        return this.url;
    }

    public String toString() {
        return "url=" + this.url + ",baseUrl" + this.baseUrl + ",host=" + this.host + ",project=" + this.project + ",token=" + this.token;
    }

    public ServerUrl(String str) {
        this.url = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.baseUrl = getBaseUrl(str);
        Uri parse = Uri.parse(str);
        try {
            try {
                this.host = parse.getHost();
                this.token = parse.getQueryParameter(BidResponsed.KEY_TOKEN);
                this.project = parse.getQueryParameter("project");
                if (TextUtils.isEmpty(this.host)) {
                    this.host = "";
                }
                if (TextUtils.isEmpty(this.project)) {
                    this.project = "default";
                }
                if (TextUtils.isEmpty(this.token)) {
                    this.token = "";
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
                if (TextUtils.isEmpty(this.host)) {
                    this.host = "";
                }
                if (TextUtils.isEmpty(this.project)) {
                    this.project = "default";
                }
                if (TextUtils.isEmpty(this.token)) {
                    this.token = "";
                }
            }
        } catch (Throwable th) {
            if (TextUtils.isEmpty(this.host)) {
                this.host = "";
            }
            if (TextUtils.isEmpty(this.project)) {
                this.project = "default";
            }
            if (TextUtils.isEmpty(this.token)) {
                this.token = "";
            }
            throw th;
        }
    }

    public String getBaseUrl(String str) {
        int lastIndexOf;
        if (!TextUtils.isEmpty(str) && (lastIndexOf = str.lastIndexOf("/")) != -1) {
            return str.substring(0, lastIndexOf);
        }
        return "";
    }
}
