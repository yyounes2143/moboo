package com.iab.omid.library.unity3d.adsession;

import com.iab.omid.library.unity3d.utils.c;
import java.net.URL;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class VerificationScriptResource {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8406Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final URL f8407Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8408Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        JSONObject jSONObject = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "vendorKey", this.f8408Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "resourceUrl", this.f8407Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toString());
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "verificationParameters", this.f8406Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        return jSONObject;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8406Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8408Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public URL Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8407Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
