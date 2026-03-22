package com.iab.omid.library.vungle.publisher;

import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.iab.omid.library.vungle.adsession.AdEvents;
import com.iab.omid.library.vungle.adsession.AdSessionConfiguration;
import com.iab.omid.library.vungle.adsession.AdSessionContext;
import com.iab.omid.library.vungle.adsession.VerificationScriptResource;
import com.iab.omid.library.vungle.internal.g;
import com.iab.omid.library.vungle.internal.h;
import com.iab.omid.library.vungle.utils.c;
import com.iab.omid.library.vungle.utils.f;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class AdSessionStatePublisher {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f8628Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public a f8629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AdEvents f8630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.vungle.weakreference.b f8631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f8632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* loaded from: classes5.dex */
    public enum a {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_NOTVISIBLE
    }

    public AdSessionStatePublisher(String str) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f8631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.vungle.weakreference.b(null);
    }

    public void Wwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwww(null);
    }

    public WebView Wwwwwwwwwwwwwwww() {
        return this.f8631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
    }

    public void Wwwwwwwwwwwwwwwww() {
        h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwww(), this.f8632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public void Wwwwwwwwwwwwwwwwww() {
        h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwww(), this.f8632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public boolean Wwwwwwwwwwwwwwwwwww() {
        if (this.f8631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get() != null) {
            return true;
        }
        return false;
    }

    public AdEvents Wwwwwwwwwwwwwwwwwwww() {
        return this.f8630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwww(boolean z) {
        String str;
        if (Wwwwwwwwwwwwwwwwwww()) {
            if (z) {
                str = "locked";
            } else {
                str = "unlocked";
            }
            h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwww(), this.f8632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwww(String str, long j) {
        if (j >= this.f8628Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            this.f8629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = a.AD_STATE_VISIBLE;
            h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwww(), this.f8632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwww() {
        this.f8631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        String str;
        if (Wwwwwwwwwwwwwwwwwww()) {
            if (z) {
                str = "foregrounded";
            } else {
                str = "backgrounded";
            }
            h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwww(), this.f8632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@Nullable JSONObject jSONObject) {
        h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwww(), this.f8632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, jSONObject);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Date date) {
        if (date == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, CampaignEx.JSON_KEY_TIMESTAMP, Long.valueOf(date.getTime()));
        h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwww(), jSONObject);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str, long j) {
        if (j >= this.f8628Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            a aVar = this.f8629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            a aVar2 = a.AD_STATE_NOTVISIBLE;
            if (aVar != aVar2) {
                this.f8629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = aVar2;
                h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwww(), this.f8632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str);
            }
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.vungle.adsession.a aVar, AdSessionContext adSessionContext, JSONObject jSONObject) {
        String Wwwwwwwwwwwwwwwwwwwwwwww2 = aVar.Wwwwwwwwwwwwwwwwwwwwwwww();
        JSONObject jSONObject2 = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "environment", MBridgeConstans.DYNAMIC_VIEW_WX_APP);
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "adSessionType", adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "deviceInfo", com.iab.omid.library.vungle.utils.b.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "deviceCategory", com.iab.omid.library.vungle.utils.a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().toString());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject3, HandleInvocationsFromAdViewer.KEY_OM_PARTNER, adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject3, HandleInvocationsFromAdViewer.KEY_OM_PARTNER_VERSION, adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject4, "libraryVersion", "1.5.3-Vungle");
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject4, RemoteConfigConstants.RequestFieldKey.APP_ID, g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getApplicationContext().getPackageName());
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, MBridgeConstans.DYNAMIC_VIEW_WX_APP, jSONObject4);
        if (adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "contentUrl", adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        if (adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "customReferenceData", adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        JSONObject jSONObject5 = new JSONObject();
        for (VerificationScriptResource verificationScriptResource : adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwww()) {
            c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject5, verificationScriptResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), verificationScriptResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwww2, jSONObject2, jSONObject5, jSONObject);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.vungle.adsession.a aVar, AdSessionContext adSessionContext) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(aVar, adSessionContext, null);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AdSessionConfiguration adSessionConfiguration) {
        h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwww(), this.f8632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, adSessionConfiguration.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AdEvents adEvents) {
        this.f8630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = adEvents;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebView webView) {
        this.f8631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.vungle.weakreference.b(webView);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(float f) {
        h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwww(), this.f8632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, f);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8628Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = a.AD_STATE_IDLE;
    }

    public void Wwwwwwwwwwwwww() {
    }
}
