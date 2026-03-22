package com.mbridge.msdk.splash.request;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public abstract class d extends com.mbridge.msdk.foundation.same.net.c<JSONObject> {
    private static final String c = "d";

    /* renamed from: a  reason: collision with root package name */
    private int f9491a;
    private String b;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f9492a;
        final /* synthetic */ JSONObject b;
        final /* synthetic */ List c;
        final /* synthetic */ int d;

        /* compiled from: Proguard */
        /* renamed from: com.mbridge.msdk.splash.request.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class RunnableC0160a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CampaignUnit f9493a;

            public RunnableC0160a(CampaignUnit campaignUnit) {
                this.f9493a = campaignUnit;
            }

            @Override // java.lang.Runnable
            public void run() {
                String str;
                CampaignUnit campaignUnit = this.f9493a;
                if (campaignUnit != null && campaignUnit.getAds() != null && this.f9493a.getAds().size() > 0) {
                    a aVar = a.this;
                    d.this.a(aVar.c, this.f9493a);
                    d.this.saveRequestTime(this.f9493a.getAds().size());
                    return;
                }
                CampaignUnit campaignUnit2 = this.f9493a;
                if (campaignUnit2 != null) {
                    str = campaignUnit2.getMsg();
                } else {
                    str = null;
                }
                if (TextUtils.isEmpty(str)) {
                    str = a.this.b.optString(NotificationCompat.CATEGORY_MESSAGE);
                }
                a aVar2 = a.this;
                d.this.a(aVar2.d, str);
            }
        }

        public a(String str, JSONObject jSONObject, List list, int i) {
            this.f9492a = str;
            this.b = jSONObject;
            this.c = list;
            this.d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            CampaignUnit parseCampaignUnit;
            if ("v5".equals(this.f9492a)) {
                parseCampaignUnit = com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(this.b.optJSONObject("data"), d.this.b);
            } else {
                parseCampaignUnit = com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(this.b.optJSONObject("data"), d.this.b);
            }
            com.mbridge.msdk.foundation.same.threadpool.a.c().post(new RunnableC0160a(parseCampaignUnit));
        }
    }

    private void b(List<g> list, JSONObject jSONObject) {
        int optInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
        if (1 == optInt) {
            calcRequestTime(System.currentTimeMillis());
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(jSONObject.optString("version"), jSONObject, list, optInt));
            return;
        }
        a(optInt, jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE));
    }

    public abstract void a(int i, String str);

    public abstract void a(List<Frame> list);

    public abstract void a(List<g> list, CampaignUnit campaignUnit);

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        String str = c;
        o0.b(str, "errorCode = " + aVar.f9025a);
        a(aVar.f9025a, com.mbridge.msdk.foundation.same.net.utils.a.a(aVar));
    }

    @Override // com.mbridge.msdk.foundation.same.net.c
    public void onPreExecute() {
        super.onPreExecute();
    }

    @Override // com.mbridge.msdk.foundation.same.net.c, com.mbridge.msdk.foundation.same.net.b
    public void onSuccess(com.mbridge.msdk.foundation.same.net.e<JSONObject> eVar) {
        com.mbridge.msdk.foundation.same.net.toolbox.a aVar;
        super.onSuccess(eVar);
        if (eVar != null && (aVar = eVar.b) != null) {
            int i = this.f9491a;
            if (i == 0) {
                b(aVar.b, eVar.c);
            } else if (i == 1) {
                a(aVar.b, eVar.c);
            }
        }
    }

    public void a(String str) {
        this.b = str;
    }

    private void a(List<g> list, JSONObject jSONObject) {
        CampaignUnit parseCampaignUnit;
        int optInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
        if (1 == optInt) {
            calcRequestTime(System.currentTimeMillis());
            if ("v5".equals(jSONObject.optString("version"))) {
                parseCampaignUnit = com.mbridge.msdk.foundation.entity.b.parseV5CampaignUnit(jSONObject.optJSONObject("data"), this.b);
            } else {
                parseCampaignUnit = com.mbridge.msdk.foundation.entity.b.parseCampaignUnit(jSONObject.optJSONObject("data"), this.b);
            }
            if (parseCampaignUnit != null && parseCampaignUnit.getListFrames() != null && parseCampaignUnit.getListFrames().size() > 0) {
                List<Frame> listFrames = parseCampaignUnit.getListFrames();
                a(listFrames);
                saveRequestTime(listFrames.size());
                return;
            }
            String msg = parseCampaignUnit != null ? parseCampaignUnit.getMsg() : null;
            if (TextUtils.isEmpty(msg)) {
                msg = jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE);
            }
            a(optInt, msg);
            return;
        }
        a(optInt, jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE));
    }
}
