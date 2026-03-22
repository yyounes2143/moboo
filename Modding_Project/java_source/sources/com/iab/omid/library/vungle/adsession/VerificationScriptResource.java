package com.iab.omid.library.vungle.adsession;

import com.iab.omid.library.vungle.utils.c;
import com.iab.omid.library.vungle.utils.g;
import java.net.URL;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class VerificationScriptResource {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8561Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final URL f8562Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8563Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public VerificationScriptResource(String str, URL url, String str2) {
        this.f8563Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f8562Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = url;
        this.f8561Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
    }

    public static VerificationScriptResource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, URL url, String str2) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, "VendorKey is null or empty");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(url, "ResourceURL is null");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, "VerificationParameters is null or empty");
        return new VerificationScriptResource(str, url, str2);
    }

    public JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        JSONObject jSONObject = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "vendorKey", this.f8563Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "resourceUrl", this.f8562Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toString());
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "verificationParameters", this.f8561Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        return jSONObject;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8561Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8563Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public URL Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8562Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
