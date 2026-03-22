package com.iab.omid.library.mmadbridge.adsession;

import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.iab.omid.library.mmadbridge.utils.g;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes5.dex */
public final class AdSessionContext {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AdSessionContextType f8228Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8229Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8231Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<String, VerificationScriptResource> f8232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<VerificationScriptResource> f8233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final WebView f8234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Partner f8235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public AdSessionContext(Partner partner, WebView webView, String str, List<VerificationScriptResource> list, @Nullable String str2, @Nullable String str3, AdSessionContextType adSessionContextType) {
        ArrayList arrayList = new ArrayList();
        this.f8233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayList;
        this.f8232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();
        this.f8235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = partner;
        this.f8234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = webView;
        this.f8231Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f8228Wwwwwwwwwwwwwwwwwwwwwwwwwww = adSessionContextType;
        if (list != null) {
            arrayList.addAll(list);
            for (VerificationScriptResource verificationScriptResource : list) {
                String uuid = UUID.randomUUID().toString();
                this.f8232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(uuid, verificationScriptResource);
            }
        }
        this.f8229Wwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
        this.f8230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = str3;
    }

    public static AdSessionContext Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Partner partner, String str, List<VerificationScriptResource> list, @Nullable String str2, @Nullable String str3) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(partner, "Partner is null");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, "OM SDK JS script content is null");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list, "VerificationScriptResources is null");
        if (str3 != null) {
            g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str3, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new AdSessionContext(partner, null, str, list, str2, str3, AdSessionContextType.NATIVE);
    }

    public static AdSessionContext Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Partner partner, WebView webView, @Nullable String str, @Nullable String str2) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(partner, "Partner is null");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(webView, "WebView is null");
        if (str2 != null) {
            g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new AdSessionContext(partner, webView, null, null, str, str2, AdSessionContextType.JAVASCRIPT);
    }

    public static AdSessionContext Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Partner partner, WebView webView, @Nullable String str, @Nullable String str2) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(partner, "Partner is null");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(webView, "WebView is null");
        if (str2 != null) {
            g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new AdSessionContext(partner, webView, null, null, str, str2, AdSessionContextType.HTML);
    }

    public WebView Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public List<VerificationScriptResource> Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return Collections.unmodifiableList(this.f8233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public Partner Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8231Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public Map<String, VerificationScriptResource> Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Collections.unmodifiableMap(this.f8232Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Nullable
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8229Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public AdSessionContextType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8228Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
