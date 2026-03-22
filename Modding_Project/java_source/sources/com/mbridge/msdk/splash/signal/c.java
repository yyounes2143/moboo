package com.mbridge.msdk.splash.signal;

import android.text.TextUtils;
import android.util.Base64;
import android.webkit.WebView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.db.m;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.l;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static String f9504a = "SplashSignalUtils";
    private static int b = 0;
    private static int c = 1;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f9505a;

        public a(CampaignEx campaignEx) {
            this.f9505a = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                j a2 = j.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                if (a2 != null) {
                    if (!a2.a(this.f9505a.getId())) {
                        com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
                        gVar.a(this.f9505a.getId());
                        gVar.b(this.f9505a.getFca());
                        gVar.c(this.f9505a.getFcb());
                        gVar.a(0);
                        gVar.d(1);
                        gVar.a(System.currentTimeMillis());
                        a2.b(gVar);
                    } else {
                        a2.b(this.f9505a.getId());
                    }
                }
                c.b(this.f9505a.getCampaignUnitId(), this.f9505a);
            } catch (Throwable th) {
                o0.b(c.f9504a, th.getMessage(), th);
            }
        }
    }

    public static void b(Object obj, JSONObject jSONObject) {
        try {
            JSONObject optJSONObject = jSONObject.optJSONObject("data");
            if (optJSONObject == null) {
                a(obj, "data is empty");
                return;
            }
            CampaignEx parseCampaignWithBackData = CampaignEx.parseCampaignWithBackData(optJSONObject);
            if (parseCampaignWithBackData == null) {
                a(obj, "data camapign is empty");
                return;
            }
            a(parseCampaignWithBackData);
            b(obj, "");
        } catch (Throwable th) {
            a(obj, th.getMessage());
        }
    }

    public static void a(Object obj, JSONObject jSONObject) {
        String str;
        JSONArray jSONArray;
        int i;
        boolean z;
        String str2;
        String str3 = "";
        JSONObject jSONObject2 = new JSONObject();
        int i2 = 1;
        if (jSONObject == null) {
            try {
                jSONObject2.put("code", 1);
                jSONObject2.put("message", "params is null");
                f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                return;
            } catch (JSONException e) {
                o0.a(f9504a, e.getMessage());
                return;
            }
        }
        try {
            jSONObject2.put("code", 0);
            jSONObject2.put("message", "");
            JSONArray jSONArray2 = jSONObject.getJSONArray("resource");
            if (jSONArray2 != null && jSONArray2.length() > 0) {
                JSONArray jSONArray3 = new JSONArray();
                int length = jSONArray2.length();
                int i3 = 0;
                while (i3 < length) {
                    JSONObject jSONObject3 = jSONArray2.getJSONObject(i3);
                    String optString = jSONObject3.optString("ref", str3);
                    int i4 = jSONObject3.getInt("type");
                    JSONObject jSONObject4 = new JSONObject();
                    if (i4 == i2 && !TextUtils.isEmpty(optString)) {
                        JSONObject jSONObject5 = new JSONObject();
                        l b2 = m.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d())).b(optString);
                        if (b2 != null) {
                            jSONArray = jSONArray2;
                            o0.a(f9504a, "VideoBean not null");
                            jSONObject5.put("type", 1);
                            jSONObject5.put("videoDataLength", b2.d());
                            String e2 = b2.e();
                            if (TextUtils.isEmpty(e2)) {
                                i = length;
                                o0.a(f9504a, "VideoPath null");
                                jSONObject5.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, str3);
                                jSONObject5.put("path4Web", str3);
                                str = str3;
                            } else {
                                i = length;
                                str = str3;
                                o0.a(f9504a, "VideoPath not null");
                                jSONObject5.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, e2);
                                jSONObject5.put("path4Web", e2);
                            }
                            if (b2.b() == 5) {
                                jSONObject5.put("downloaded", 1);
                                z = false;
                            } else {
                                z = false;
                                jSONObject5.put("downloaded", 0);
                            }
                            jSONObject4.put(optString, jSONObject5);
                            jSONArray3.put(jSONObject4);
                        } else {
                            str = str3;
                            jSONArray = jSONArray2;
                            i = length;
                            z = false;
                            o0.a(f9504a, "VideoBean null");
                        }
                    } else {
                        str = str3;
                        jSONArray = jSONArray2;
                        i = length;
                        z = false;
                        if (i4 == 2 && !TextUtils.isEmpty(optString)) {
                            JSONObject jSONObject6 = new JSONObject();
                            jSONObject6.put("type", 2);
                            jSONObject6.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, H5DownLoadManager.getInstance().getH5ResAddress(optString) == null ? str : H5DownLoadManager.getInstance().getH5ResAddress(optString));
                            jSONObject4.put(optString, jSONObject6);
                            jSONArray3.put(jSONObject4);
                        } else if (i4 == 3 && !TextUtils.isEmpty(optString)) {
                            File file = new File(optString);
                            if (file.exists() && file.isFile() && file.canRead()) {
                                o0.a(f9504a, "getFileInfo Mraid file " + optString);
                                str2 = "file:////" + optString;
                            } else {
                                str2 = str;
                            }
                            JSONObject jSONObject7 = new JSONObject();
                            jSONObject7.put("type", 3);
                            jSONObject7.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, str2);
                            jSONObject4.put(optString, jSONObject7);
                            jSONArray3.put(jSONObject4);
                        } else if (i4 == 4 && !TextUtils.isEmpty(optString)) {
                            JSONObject jSONObject8 = new JSONObject();
                            jSONObject8.put("type", 4);
                            jSONObject8.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, s0.a(optString) == null ? str : s0.a(optString));
                            jSONObject4.put(optString, jSONObject8);
                            jSONArray3.put(jSONObject4);
                        }
                    }
                    i3++;
                    jSONArray2 = jSONArray;
                    length = i;
                    str3 = str;
                    i2 = 1;
                }
                jSONObject2.put("resource", jSONArray3);
                f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                return;
            }
            try {
                jSONObject2.put("code", 1);
                jSONObject2.put("message", "resource is null");
                f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            } catch (JSONException e3) {
                o0.a(f9504a, e3.getMessage());
            }
        } catch (Throwable th) {
            try {
                jSONObject2.put("code", 1);
                jSONObject2.put("message", th.getLocalizedMessage());
                f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            } catch (JSONException e4) {
                o0.a(f9504a, e4.getMessage());
            }
        }
    }

    public static void b(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", b);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", str);
            jSONObject.put("data", jSONObject2);
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e) {
            a(obj, e.getMessage());
            o0.a(f9504a, e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, CampaignEx campaignEx) {
        if (com.mbridge.msdk.foundation.same.buffer.b.m == null || TextUtils.isEmpty(campaignEx.getId())) {
            return;
        }
        com.mbridge.msdk.foundation.same.buffer.b.a(str, campaignEx, "splash");
    }

    public static String a(int i) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i);
            String jSONObject2 = jSONObject.toString();
            return !TextUtils.isEmpty(jSONObject2) ? Base64.encodeToString(jSONObject2.getBytes(), 2) : "";
        } catch (Throwable unused) {
            o0.b(f9504a, "code to string is error");
            return "";
        }
    }

    public static void a(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", c);
            jSONObject.put("message", str);
            jSONObject.put("data", new JSONObject());
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e) {
            o0.a(f9504a, e.getMessage());
        }
    }

    public static void a(CampaignEx campaignEx) {
        new Thread(new a(campaignEx)).start();
    }

    public static void a(WebView webView, String str, String str2) {
        f.a().a(webView, str, str2);
    }

    public static void a(WebView webView) {
        o0.b(f9504a, "fireOnSignalCommunication");
        f.a().a(webView);
    }
}
