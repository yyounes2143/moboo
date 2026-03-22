package com.mbridge.msdk.splash.signal;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.base.d;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.l;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a implements com.mbridge.msdk.mbsignalcommon.mraid.b {
    private WeakReference<Context> b;
    private List<CampaignEx> c;
    private String d;
    private String e;
    private int f;
    private int g;
    private int i;
    private com.mbridge.msdk.splash.middle.a j;
    private SplashExpandDialog k;

    /* renamed from: a  reason: collision with root package name */
    protected String f9502a = "SplashSignalCommunicationImpl";
    private int h = 5;

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.splash.signal.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class RunnableC0161a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList f9503a;

        public RunnableC0161a(ArrayList arrayList) {
            this.f9503a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                j a2 = j.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                ArrayList arrayList = this.f9503a;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    a2.b((String) obj);
                }
            } catch (Exception unused) {
                o0.b(a.this.f9502a, "campain can't insert db");
            }
        }
    }

    public a(Context context, String str, String str2) {
        this.e = str;
        this.d = str2;
        this.b = new WeakReference<>(context);
    }

    public void a(Context context) {
        this.b = new WeakReference<>(context);
    }

    public void b(int i) {
        this.h = i;
    }

    public void c(int i) {
        this.i = i;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void close() {
        o0.b(this.f9502a, "close");
        try {
            com.mbridge.msdk.splash.middle.a aVar = this.j;
            if (aVar != null) {
                aVar.close();
            }
        } catch (Throwable th) {
            o0.b(this.f9502a, "close", th);
        }
    }

    public void d(Object obj, String str) {
        String str2 = this.f9502a;
        o0.a(str2, "sendImpressions:" + str);
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONArray jSONArray = new JSONArray(str);
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < jSONArray.length(); i++) {
                    String string = jSONArray.getString(i);
                    for (CampaignEx campaignEx : this.c) {
                        if (campaignEx.getId().equals(string)) {
                            com.mbridge.msdk.foundation.same.buffer.b.a(this.d, campaignEx, "splash");
                            arrayList.add(string);
                        }
                    }
                }
                new Thread(new RunnableC0161a(arrayList)).start();
            }
        } catch (Throwable th) {
            o0.b(this.f9502a, "sendImpressions", th);
        }
    }

    public void e(Object obj, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("code", 0);
            jSONObject.put("message", "Call pause count down success.");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("countdown", this.i);
            jSONObject.put("data", jSONObject2);
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e) {
            o0.b(this.f9502a, e.getMessage());
        }
        com.mbridge.msdk.splash.middle.a aVar = this.j;
        if (aVar != null) {
            aVar.a(1, -1);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void expand(String str, boolean z) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString("url", str);
            bundle.putBoolean("shouldUseCustomClose", z);
            WeakReference<Context> weakReference = this.b;
            if (weakReference != null && weakReference.get() != null) {
                SplashExpandDialog splashExpandDialog = this.k;
                if (splashExpandDialog == null || !splashExpandDialog.isShowing()) {
                    SplashExpandDialog splashExpandDialog2 = new SplashExpandDialog(this.b.get(), bundle, this.j);
                    this.k = splashExpandDialog2;
                    splashExpandDialog2.setCampaignList(this.d, this.c);
                    this.k.show();
                    com.mbridge.msdk.splash.middle.a aVar = this.j;
                    if (aVar != null) {
                        aVar.a(true);
                    }
                    com.mbridge.msdk.splash.report.a.a(this.d, getMraidCampaign(), str);
                }
            }
        } catch (Throwable th) {
            o0.b(this.f9502a, "expand", th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void f(java.lang.Object r3, java.lang.String r4) {
        /*
            r2 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            r1 = 0
            if (r0 != 0) goto L2c
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Exception -> L22
            r0.<init>(r4)     // Catch: java.lang.Exception -> L22
            java.lang.String r4 = "countdown"
            int r4 = r0.optInt(r4)     // Catch: java.lang.Exception -> L22
            com.mbridge.msdk.mbsignalcommon.windvane.f r0 = com.mbridge.msdk.mbsignalcommon.windvane.f.a()     // Catch: java.lang.Exception -> L1f
            java.lang.String r1 = com.mbridge.msdk.splash.signal.c.a(r1)     // Catch: java.lang.Exception -> L1f
            r0.b(r3, r1)     // Catch: java.lang.Exception -> L1f
            r1 = r4
            goto L2c
        L1f:
            r3 = move-exception
            r1 = r4
            goto L23
        L22:
            r3 = move-exception
        L23:
            java.lang.String r4 = r2.f9502a
            java.lang.String r3 = r3.getMessage()
            com.mbridge.msdk.foundation.tools.o0.b(r4, r3)
        L2c:
            com.mbridge.msdk.splash.middle.a r3 = r2.j
            if (r3 == 0) goto L34
            r4 = 2
            r3.a(r4, r1)
        L34:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.splash.signal.a.f(java.lang.Object, java.lang.String):void");
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public CampaignEx getMraidCampaign() {
        List<CampaignEx> list = this.c;
        if (list != null && list.size() > 0) {
            return this.c.get(0);
        }
        return null;
    }

    public void init(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            com.mbridge.msdk.splash.common.b bVar = new com.mbridge.msdk.splash.common.b(com.mbridge.msdk.foundation.controller.c.m().d());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("dev_close_state", this.f);
            jSONObject.put("sdkSetting", jSONObject2);
            jSONObject.put("device", bVar.b());
            jSONObject.put("campaignList", CampaignEx.parseCamplistToJson(this.c));
            l e = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.d);
            if (e == null) {
                e = l.i(this.d);
            }
            if (!TextUtils.isEmpty(this.e)) {
                e.d(this.e);
            }
            e.e(this.d);
            e.j(this.h);
            e.a(this.g);
            jSONObject.put("unitSetting", e.M());
            String e2 = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b());
            if (!TextUtils.isEmpty(e2)) {
                jSONObject.put("appSetting", new JSONObject(e2));
            }
            jSONObject.put("sdk_info", d.f9269a);
            String str2 = this.f9502a;
            o0.b(str2, "init" + jSONObject.toString());
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Throwable th) {
            o0.b(this.f9502a, "init", th);
        }
    }

    public void install(Object obj, String str) {
        CampaignEx campaignEx;
        o0.b(this.f9502a, "install");
        try {
            List<CampaignEx> list = this.c;
            if (list != null) {
                if (list.size() > 0) {
                    campaignEx = this.c.get(0);
                } else {
                    campaignEx = null;
                }
                if (!TextUtils.isEmpty(str)) {
                    try {
                        JSONObject campaignToJsonObject = CampaignEx.campaignToJsonObject(campaignEx);
                        JSONObject jSONObject = new JSONObject(str);
                        Iterator<String> keys = jSONObject.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            campaignToJsonObject.put(next, jSONObject.getString(next));
                        }
                        CampaignEx parseCampaignWithBackData = CampaignEx.parseCampaignWithBackData(campaignToJsonObject);
                        String optString = campaignToJsonObject.optString("unitId");
                        if (!TextUtils.isEmpty(optString)) {
                            parseCampaignWithBackData.setCampaignUnitId(optString);
                        }
                        campaignEx = parseCampaignWithBackData;
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    com.mbridge.msdk.splash.middle.a aVar = this.j;
                    if (aVar != null) {
                        aVar.a(campaignEx);
                    }
                }
            }
        } catch (Throwable th) {
            o0.b(this.f9502a, CampaignEx.JSON_NATIVE_VIDEO_CLICK, th);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void open(String str) {
        com.mbridge.msdk.splash.middle.a aVar = this.j;
        if (aVar != null) {
            aVar.a(true, str);
        }
    }

    public void openURL(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        String str2 = this.f9502a;
        o0.b(str2, "openURL:" + str);
        if (TextUtils.isEmpty(str)) {
            com.mbridge.msdk.mbsignalcommon.communication.d.a(obj, "params is null");
            return;
        }
        Context d = com.mbridge.msdk.foundation.controller.c.m().d();
        if (!TextUtils.isEmpty(str)) {
            if (d == null) {
                try {
                    if ((obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).b) != null) {
                        d = windVaneWebView.getContext();
                    }
                } catch (Exception e) {
                    o0.b(this.f9502a, e.getMessage());
                }
            }
            if (d != null) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    String optString = jSONObject.optString("url");
                    int optInt = jSONObject.optInt("type");
                    if (optInt == 1) {
                        com.mbridge.msdk.click.c.c(d, optString);
                    } else if (optInt == 2) {
                        com.mbridge.msdk.click.c.e(d, optString);
                    }
                } catch (JSONException e2) {
                    o0.b(this.f9502a, e2.getMessage());
                } catch (Throwable th) {
                    o0.b(this.f9502a, th.getMessage());
                }
            }
        }
    }

    public void reportUrls(Object obj, String str) {
        boolean z;
        boolean z2;
        o0.a(this.f9502a, "reportUrls:" + str);
        if (TextUtils.isEmpty(str)) {
            com.mbridge.msdk.mbsignalcommon.communication.d.a(obj, "params is null");
        } else if (!TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    int optInt = jSONObject.optInt("type");
                    String a2 = t0.a(jSONObject.optString("url"), "&tun=", k0.y() + "");
                    int optInt2 = jSONObject.optInt("report");
                    CampaignEx campaignEx = null;
                    if (optInt2 == 0) {
                        Context d = com.mbridge.msdk.foundation.controller.c.m().d();
                        List<CampaignEx> list = this.c;
                        if (list != null) {
                            campaignEx = list.get(0);
                        }
                        CampaignEx campaignEx2 = campaignEx;
                        if (optInt != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        com.mbridge.msdk.click.a.a(d, campaignEx2, "", a2, false, z2);
                    } else {
                        Context d2 = com.mbridge.msdk.foundation.controller.c.m().d();
                        List<CampaignEx> list2 = this.c;
                        if (list2 != null) {
                            campaignEx = list2.get(0);
                        }
                        CampaignEx campaignEx3 = campaignEx;
                        if (optInt != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        com.mbridge.msdk.click.a.a(d2, campaignEx3, "", a2, false, z, optInt2);
                    }
                }
                f.a().b(obj, c.a(0));
            } catch (Throwable th) {
                o0.b(this.f9502a, "reportUrls", th);
            }
        }
    }

    public void toggleCloseBtn(Object obj, String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                int optInt = new JSONObject(str).optInt("state");
                com.mbridge.msdk.splash.middle.a aVar = this.j;
                if (aVar != null) {
                    aVar.toggleCloseBtn(optInt);
                }
            }
        } catch (Throwable th) {
            o0.b(this.f9502a, "toggleCloseBtn", th);
        }
    }

    public void triggerCloseBtn(Object obj, String str) {
        com.mbridge.msdk.splash.middle.a aVar = this.j;
        if (aVar != null) {
            aVar.triggerCloseBtn(obj, str);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void unload() {
        close();
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void useCustomClose(boolean z) {
        int i;
        if (z) {
            i = 2;
        } else {
            i = 1;
        }
        try {
            com.mbridge.msdk.splash.middle.a aVar = this.j;
            if (aVar != null) {
                aVar.toggleCloseBtn(i);
            }
        } catch (Throwable th) {
            o0.b(this.f9502a, "useCustomClose", th);
        }
    }

    public void a(int i) {
        this.g = i;
    }

    public List<CampaignEx> b() {
        return this.c;
    }

    public void c(Object obj, String str) {
        try {
            if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
                f.a().a(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).b);
            }
        } catch (Throwable th) {
            o0.b(this.f9502a, "onJSBridgeConnect", th);
        }
    }

    public void a(com.mbridge.msdk.splash.middle.a aVar) {
        if (aVar != null) {
            this.j = aVar;
        }
    }

    public com.mbridge.msdk.splash.middle.a a() {
        return this.j;
    }

    public void a(List<CampaignEx> list) {
        this.c = list;
    }

    public void a(Object obj, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            int i = new JSONObject(str).getInt("countdown");
            com.mbridge.msdk.splash.middle.a aVar = this.j;
            if (aVar != null) {
                aVar.a(i);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
