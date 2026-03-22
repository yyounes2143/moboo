package com.iab.omid.library.vungle.adsession;

import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.iab.omid.library.vungle.utils.g;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes5.dex */
public final class AdSessionContext {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AdSessionContextType f8534Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8535Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8536Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8537Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<String, VerificationScriptResource> f8538Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<VerificationScriptResource> f8539Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final WebView f8540Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Partner f8541Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public AdSessionContext(Partner partner, WebView webView, String str, List<VerificationScriptResource> list, @Nullable String str2, @Nullable String str3, AdSessionContextType adSessionContextType) {
        ArrayList arrayList = new ArrayList();
        this.f8539Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayList;
        this.f8538Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();
        this.f8541Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = partner;
        this.f8540Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = webView;
        this.f8537Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f8534Wwwwwwwwwwwwwwwwwwwwwwwwwww = adSessionContextType;
        if (list != null) {
            arrayList.addAll(list);
            for (VerificationScriptResource verificationScriptResource : list) {
                String uuid = UUID.randomUUID().toString();
                this.f8538Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(uuid, verificationScriptResource);
            }
        }
        this.f8535Wwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
        this.f8536Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = str3;
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
        return this.f8540Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public List<VerificationScriptResource> Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return Collections.unmodifiableList(this.f8539Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public Partner Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8541Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8537Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public Map<String, VerificationScriptResource> Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Collections.unmodifiableMap(this.f8538Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Nullable
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8536Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8535Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public AdSessionContextType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8534Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
