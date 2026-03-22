package com.iab.omid.library.mmadbridge.adsession;

import com.iab.omid.library.mmadbridge.utils.c;
import com.iab.omid.library.mmadbridge.utils.g;
import java.net.URL;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class VerificationScriptResource {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8255Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final URL f8256Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8257Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public VerificationScriptResource(String str, URL url, String str2) {
        this.f8257Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f8256Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = url;
        this.f8255Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
    }

    public static VerificationScriptResource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(URL url) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(url, "ResourceURL is null");
        return new VerificationScriptResource(null, url, null);
    }

    public static VerificationScriptResource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, URL url, String str2) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, "VendorKey is null or empty");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(url, "ResourceURL is null");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, "VerificationParameters is null or empty");
        return new VerificationScriptResource(str, url, str2);
    }

    public JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        JSONObject jSONObject = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "vendorKey", this.f8257Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "resourceUrl", this.f8256Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toString());
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "verificationParameters", this.f8255Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        return jSONObject;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8255Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8257Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public URL Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8256Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
