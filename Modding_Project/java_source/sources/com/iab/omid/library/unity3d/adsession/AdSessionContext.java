package com.iab.omid.library.unity3d.adsession;

import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.iab.omid.library.unity3d.utils.g;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes5.dex */
public final class AdSessionContext {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AdSessionContextType f8396Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8397Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8398Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f8399Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<String, VerificationScriptResource> f8400Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<VerificationScriptResource> f8401Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final WebView f8402Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Partner f8403Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public AdSessionContext(Partner partner, WebView webView, String str, List<VerificationScriptResource> list, @Nullable String str2, String str3, AdSessionContextType adSessionContextType) {
        ArrayList arrayList = new ArrayList();
        this.f8401Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayList;
        this.f8400Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();
        this.f8403Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = partner;
        this.f8402Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = webView;
        this.f8399Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f8396Wwwwwwwwwwwwwwwwwwwwwwwwwww = adSessionContextType;
        if (list != null) {
            arrayList.addAll(list);
            for (VerificationScriptResource verificationScriptResource : list) {
                String uuid = UUID.randomUUID().toString();
                this.f8400Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(uuid, verificationScriptResource);
            }
        }
        this.f8397Wwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
        this.f8398Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = str3;
    }

    public static AdSessionContext Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Partner partner, WebView webView, @Nullable String str, String str2) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(partner, "Partner is null");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(webView, "WebView is null");
        if (str2 != null) {
            g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new AdSessionContext(partner, webView, null, null, str, str2, AdSessionContextType.JAVASCRIPT);
    }

    public static AdSessionContext Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Partner partner, WebView webView, @Nullable String str, String str2) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(partner, "Partner is null");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(webView, "WebView is null");
        if (str2 != null) {
            g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new AdSessionContext(partner, webView, null, null, str, str2, AdSessionContextType.HTML);
    }

    public WebView Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8402Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public List<VerificationScriptResource> Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Collections.unmodifiableList(this.f8401Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public Partner Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8403Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8399Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public Map<String, VerificationScriptResource> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Collections.unmodifiableMap(this.f8400Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8398Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8397Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public AdSessionContextType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8396Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
