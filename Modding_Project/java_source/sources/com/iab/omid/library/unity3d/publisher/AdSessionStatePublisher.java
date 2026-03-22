package com.iab.omid.library.unity3d.publisher;

import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.iab.omid.library.unity3d.adsession.AdEvents;
import com.iab.omid.library.unity3d.adsession.AdSessionConfiguration;
import com.iab.omid.library.unity3d.adsession.AdSessionContext;
import com.iab.omid.library.unity3d.adsession.VerificationScriptResource;
import com.iab.omid.library.unity3d.internal.f;
import com.iab.omid.library.unity3d.internal.g;
import com.iab.omid.library.unity3d.utils.c;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class AdSessionStatePublisher {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f8467Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public a f8468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AdEvents f8469Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.unity3d.weakreference.b f8470Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f8471Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* loaded from: classes5.dex */
    public enum a {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_NOTVISIBLE
    }

    public AdSessionStatePublisher(String str) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8471Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f8470Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.unity3d.weakreference.b(null);
    }

    public void Wwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwww(null);
    }

    public WebView Wwwwwwwwwwwwwwwww() {
        return this.f8470Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
    }

    public void Wwwwwwwwwwwwwwwwww() {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwww(), this.f8471Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public void Wwwwwwwwwwwwwwwwwww() {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwww(), this.f8471Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public boolean Wwwwwwwwwwwwwwwwwwww() {
        if (this.f8470Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get() != null) {
            return true;
        }
        return false;
    }

    public AdEvents Wwwwwwwwwwwwwwwwwwwww() {
        return this.f8469Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwwww(String str, long j) {
        if (j >= this.f8467Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            this.f8468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = a.AD_STATE_VISIBLE;
            g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwww(), this.f8471Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwww() {
        this.f8470Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        String str;
        if (Wwwwwwwwwwwwwwwwwwww()) {
            if (z) {
                str = "foregrounded";
            } else {
                str = "backgrounded";
            }
            g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwww(), this.f8471Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@Nullable JSONObject jSONObject) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwww(), this.f8471Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, jSONObject);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Date date) {
        if (date == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, CampaignEx.JSON_KEY_TIMESTAMP, Long.valueOf(date.getTime()));
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwww(), jSONObject);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str, long j) {
        if (j >= this.f8467Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            a aVar = this.f8468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            a aVar2 = a.AD_STATE_NOTVISIBLE;
            if (aVar != aVar2) {
                this.f8468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = aVar2;
                g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwww(), this.f8471Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str);
            }
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.unity3d.adsession.a aVar, AdSessionContext adSessionContext, JSONObject jSONObject) {
        String Wwwwwwwwwwwwwwwwwwww2 = aVar.Wwwwwwwwwwwwwwwwwwww();
        JSONObject jSONObject2 = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "environment", MBridgeConstans.DYNAMIC_VIEW_WX_APP);
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "adSessionType", adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "deviceInfo", com.iab.omid.library.unity3d.utils.b.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "deviceCategory", com.iab.omid.library.unity3d.utils.a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().toString());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject3, HandleInvocationsFromAdViewer.KEY_OM_PARTNER, adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject3, HandleInvocationsFromAdViewer.KEY_OM_PARTNER_VERSION, adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject4, "libraryVersion", "1.4.9-Unity3d");
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject4, RemoteConfigConstants.RequestFieldKey.APP_ID, f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getApplicationContext().getPackageName());
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, MBridgeConstans.DYNAMIC_VIEW_WX_APP, jSONObject4);
        if (adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "contentUrl", adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        if (adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "customReferenceData", adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        JSONObject jSONObject5 = new JSONObject();
        for (VerificationScriptResource verificationScriptResource : adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
            c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject5, verificationScriptResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), verificationScriptResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwww2, jSONObject2, jSONObject5, jSONObject);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.unity3d.adsession.a aVar, AdSessionContext adSessionContext) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(aVar, adSessionContext, null);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AdSessionConfiguration adSessionConfiguration) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwww(), this.f8471Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, adSessionConfiguration.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AdEvents adEvents) {
        this.f8469Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = adEvents;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebView webView) {
        this.f8470Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.unity3d.weakreference.b(webView);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(float f) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwww(), this.f8471Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, f);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8467Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = com.iab.omid.library.unity3d.utils.f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8468Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = a.AD_STATE_IDLE;
    }

    public void Wwwwwwwwwwwwwww() {
    }
}
