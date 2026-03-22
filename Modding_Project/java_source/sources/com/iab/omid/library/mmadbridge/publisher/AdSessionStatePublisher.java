package com.iab.omid.library.mmadbridge.publisher;

import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.iab.omid.library.mmadbridge.adsession.AdEvents;
import com.iab.omid.library.mmadbridge.adsession.AdSessionConfiguration;
import com.iab.omid.library.mmadbridge.adsession.AdSessionContext;
import com.iab.omid.library.mmadbridge.adsession.VerificationScriptResource;
import com.iab.omid.library.mmadbridge.adsession.media.MediaEvents;
import com.iab.omid.library.mmadbridge.internal.g;
import com.iab.omid.library.mmadbridge.internal.h;
import com.iab.omid.library.mmadbridge.utils.c;
import com.iab.omid.library.mmadbridge.utils.f;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class AdSessionStatePublisher {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f8327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public a f8328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MediaEvents f8329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AdEvents f8330Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.mmadbridge.weakreference.b f8331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f8332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* loaded from: classes5.dex */
    public enum a {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_NOTVISIBLE
    }

    public AdSessionStatePublisher(String str) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f8331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.mmadbridge.weakreference.b(null);
    }

    public void Wwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwww(null);
    }

    public WebView Wwwwwwwwwwww() {
        return this.f8331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
    }

    public void Wwwwwwwwwwwww() {
        h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwww(), this.f8332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public void Wwwwwwwwwwwwww() {
        h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwww(), this.f8332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public boolean Wwwwwwwwwwwwwww() {
        if (this.f8331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get() != null) {
            return true;
        }
        return false;
    }

    public MediaEvents Wwwwwwwwwwwwwwww() {
        return this.f8329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public AdEvents Wwwwwwwwwwwwwwwww() {
        return this.f8330Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwww(boolean z) {
        String str;
        if (Wwwwwwwwwwwwwww()) {
            if (z) {
                str = "locked";
            } else {
                str = "unlocked";
            }
            h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwww(), this.f8332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str);
        }
    }

    public void Wwwwwwwwwwwwwwwwwww(String str, long j) {
        if (j >= this.f8327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            this.f8328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = a.AD_STATE_VISIBLE;
            h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwww(), this.f8332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwww() {
        this.f8331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
    }

    public void Wwwwwwwwwwwwwwwwwwwww(boolean z) {
        String str;
        if (Wwwwwwwwwwwwwww()) {
            if (z) {
                str = "foregrounded";
            } else {
                str = "backgrounded";
            }
            h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwww(), this.f8332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwww(@Nullable JSONObject jSONObject) {
        h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwww(), this.f8332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, jSONObject);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwww(@NonNull Date date) {
        if (date == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, CampaignEx.JSON_KEY_TIMESTAMP, Long.valueOf(date.getTime()));
        h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwww(), jSONObject);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwww(String str, @Nullable JSONObject jSONObject) {
        h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwww(), this.f8332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str, jSONObject);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwww(String str, long j) {
        if (j >= this.f8327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            a aVar = this.f8328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            a aVar2 = a.AD_STATE_NOTVISIBLE;
            if (aVar != aVar2) {
                this.f8328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = aVar2;
                h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwww(), this.f8332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str);
            }
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        Wwwwwwwwwwwwwwwwwwwwwwww(str, null);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(MediaEvents mediaEvents) {
        this.f8329Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = mediaEvents;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.mmadbridge.adsession.a aVar, AdSessionContext adSessionContext, JSONObject jSONObject) {
        String Wwwwwwwwwwwwwwww2 = aVar.Wwwwwwwwwwwwwwww();
        JSONObject jSONObject2 = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "environment", MBridgeConstans.DYNAMIC_VIEW_WX_APP);
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "adSessionType", adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "deviceInfo", com.iab.omid.library.mmadbridge.utils.b.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "deviceCategory", com.iab.omid.library.mmadbridge.utils.a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().toString());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject3, HandleInvocationsFromAdViewer.KEY_OM_PARTNER, adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject3, HandleInvocationsFromAdViewer.KEY_OM_PARTNER_VERSION, adSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject4, "libraryVersion", "1.4.13-Mmadbridge");
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
            c.Wwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject5, verificationScriptResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), verificationScriptResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwww(), Wwwwwwwwwwwwwwww2, jSONObject2, jSONObject5, jSONObject);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.mmadbridge.adsession.a aVar, AdSessionContext adSessionContext) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(aVar, adSessionContext, null);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AdSessionConfiguration adSessionConfiguration) {
        h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwww(), this.f8332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, adSessionConfiguration.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AdEvents adEvents) {
        this.f8330Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = adEvents;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WebView webView) {
        this.f8331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.mmadbridge.weakreference.b(webView);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(float f) {
        h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwww(), this.f8332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, f);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8327Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = a.AD_STATE_IDLE;
    }

    public void Wwwwwwwwww() {
    }
}
