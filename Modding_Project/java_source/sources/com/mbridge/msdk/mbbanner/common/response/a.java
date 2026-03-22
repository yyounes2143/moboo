package com.mbridge.msdk.mbbanner.common.response;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.entity.b;
import com.mbridge.msdk.foundation.same.net.c;
import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public abstract class a extends c<JSONObject> {
    private static final String b = "a";

    /* renamed from: a  reason: collision with root package name */
    private String f9205a = "";

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.mbbanner.common.response.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class RunnableC0118a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f9206a;
        final /* synthetic */ JSONObject b;
        final /* synthetic */ int c;

        /* compiled from: Proguard */
        /* renamed from: com.mbridge.msdk.mbbanner.common.response.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class RunnableC0119a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CampaignUnit f9207a;

            public RunnableC0119a(CampaignUnit campaignUnit) {
                this.f9207a = campaignUnit;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str;
                CampaignUnit campaignUnit = this.f9207a;
                if (campaignUnit != null && campaignUnit.getAds() != null && this.f9207a.getAds().size() > 0) {
                    a.this.a(this.f9207a);
                    if (!TextUtils.isEmpty(a.this.f9205a)) {
                        a.this.saveHbState(1);
                    }
                    a.this.saveRequestTime(this.f9207a.getAds().size());
                    return;
                }
                CampaignUnit campaignUnit2 = this.f9207a;
                if (campaignUnit2 != null) {
                    str = campaignUnit2.getMsg();
                } else {
                    str = null;
                }
                if (TextUtils.isEmpty(str)) {
                    str = RunnableC0118a.this.b.optString(NotificationCompat.CATEGORY_MESSAGE);
                }
                RunnableC0118a runnableC0118a = RunnableC0118a.this;
                a.this.a(runnableC0118a.c, str);
            }
        }

        public RunnableC0118a(String str, JSONObject jSONObject, int i) {
            this.f9206a = str;
            this.b = jSONObject;
            this.c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            CampaignUnit parseCampaignUnit;
            if ("v5".equals(this.f9206a)) {
                parseCampaignUnit = b.parseV5CampaignUnit(this.b.optJSONObject("data"), a.this.f9205a);
            } else {
                parseCampaignUnit = b.parseCampaignUnit(this.b.optJSONObject("data"), a.this.f9205a);
            }
            com.mbridge.msdk.foundation.same.threadpool.a.c().post(new RunnableC0119a(parseCampaignUnit));
        }
    }

    public abstract void a(int i, String str);

    public abstract void a(CampaignUnit campaignUnit);

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        String str = b;
        o0.c(str, "onFailed errorCode = " + aVar.f9025a);
        a(aVar.f9025a, com.mbridge.msdk.foundation.same.net.utils.a.a(aVar));
    }

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onSuccess(e<JSONObject> eVar) {
        super.onSuccess(eVar);
        a(eVar.b.b, eVar.c);
    }

    public void a(String str) {
        this.f9205a = str;
    }

    private void a(List<g> list, JSONObject jSONObject) {
        String str = b;
        o0.c(str, "parseLoad content = " + jSONObject);
        int optInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
        if (1 == optInt) {
            calcRequestTime(System.currentTimeMillis());
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new RunnableC0118a(jSONObject.optString("version"), jSONObject, optInt));
            return;
        }
        a(optInt, jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE));
    }
}
