package com.mbridge.msdk.advanced.signal;

import android.text.TextUtils;
import android.util.Base64;
import android.webkit.WebView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.m;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.l;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.mbsignalcommon.communication.d;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static String f8762a = "NativeAdvancedJsUtils";

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
                o0.a(f8762a, e.getMessage());
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
                        l b = m.a(g.a(c.m().d())).b(optString);
                        if (b != null) {
                            jSONArray = jSONArray2;
                            o0.a(f8762a, "VideoBean not null");
                            jSONObject5.put("type", 1);
                            jSONObject5.put("videoDataLength", b.d());
                            String e2 = b.e();
                            if (TextUtils.isEmpty(e2)) {
                                i = length;
                                o0.a(f8762a, "VideoPath null");
                                jSONObject5.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, str3);
                                jSONObject5.put("path4Web", str3);
                                str = str3;
                            } else {
                                i = length;
                                str = str3;
                                o0.a(f8762a, "VideoPath not null");
                                jSONObject5.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, e2);
                                jSONObject5.put("path4Web", e2);
                            }
                            if (b.b() == 5) {
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
                            o0.a(f8762a, "VideoBean null");
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
                                o0.a(f8762a, "getFileInfo Mraid file " + optString);
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
                o0.a(f8762a, e3.getMessage());
            }
        } catch (Throwable th) {
            try {
                jSONObject2.put("code", 1);
                jSONObject2.put("message", th.getLocalizedMessage());
                f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            } catch (JSONException e4) {
                o0.a(f8762a, e4.getMessage());
            }
        }
    }

    public static void a(WebView webView, String str, String str2) {
        f.a().a(webView, str, str2);
    }

    public static void a(WebView webView, String str, String str2, Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sq", 1);
            jSONObject.put("action", str);
            if (!TextUtils.isEmpty(str2)) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(str2, obj);
                jSONObject.put("params", jSONObject2);
            }
            if (TextUtils.isEmpty(str2) && obj != null) {
                jSONObject.put("params", obj);
            }
            f.a().a(webView, "thirdPartyCalled", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (JSONException e) {
            o0.b(f8762a, e.getMessage());
        }
    }

    public static void a(WebView webView) {
        o0.b(f8762a, "fireOnJSBridgeConnected");
        f.a().a(webView);
    }

    public static void a(Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", d.b);
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e) {
            o0.a(f8762a, e.getMessage());
        }
    }
}
