package com.mbridge.msdk.mbsignalcommon.Report;

import android.content.Context;
import android.util.Base64;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.n;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a {
    private static final String c = "a";

    /* renamed from: a  reason: collision with root package name */
    int f9263a = 0;
    int b = 1;

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.mbsignalcommon.Report.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static final class C0129a {

        /* renamed from: a  reason: collision with root package name */
        private static a f9264a = new a();
    }

    public static a a() {
        return C0129a.f9264a;
    }

    public void a(Object obj, String str, JSONArray jSONArray, int i) {
        String str2;
        String str3;
        String str4;
        String str5;
        int i2;
        String str6;
        String str7;
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        JSONObject optJSONObject3;
        JSONObject optJSONObject4;
        JSONObject optJSONObject5;
        JSONObject optJSONObject6;
        JSONObject optJSONObject7;
        JSONObject optJSONObject8;
        JSONObject optJSONObject9;
        JSONObject optJSONObject10;
        JSONObject optJSONObject11;
        int i3;
        try {
            if (jSONArray == null) {
                a(this.b, "called reporter failed, params empty", obj);
                return;
            }
            int length = jSONArray.length();
            if (length == 0) {
                a(this.b, "called reporter failed, params empty", obj);
                return;
            }
            int i4 = 0;
            if ("reportMessageR".equalsIgnoreCase(str)) {
                StringBuffer stringBuffer = new StringBuffer();
                while (true) {
                    i3 = length - 1;
                    if (i4 >= i3) {
                        break;
                    }
                    JSONObject optJSONObject12 = jSONArray.optJSONObject(i4);
                    if (optJSONObject12 != null) {
                        stringBuffer.append(optJSONObject12.optString("key"));
                        stringBuffer.append("=");
                        stringBuffer.append(optJSONObject12.opt("value"));
                        stringBuffer.append("&");
                    }
                    i4++;
                }
                JSONObject optJSONObject13 = jSONArray.optJSONObject(i3);
                if (optJSONObject13 != null) {
                    stringBuffer.append(optJSONObject13.optString("key"));
                    stringBuffer.append("=");
                    stringBuffer.append(optJSONObject13.opt("value"));
                }
                a(stringBuffer.toString());
            } else if ("reportMessageD".equalsIgnoreCase(str)) {
                if (length <= 0 || (optJSONObject11 = jSONArray.optJSONObject(0)) == null) {
                    str2 = "";
                } else {
                    str2 = optJSONObject11.getString("value");
                }
                int i5 = (length <= 1 || (optJSONObject10 = jSONArray.optJSONObject(1)) == null) ? -1 : optJSONObject10.getInt("value");
                int i6 = (length <= 2 || (optJSONObject9 = jSONArray.optJSONObject(2)) == null) ? -1 : optJSONObject9.getInt("value");
                int i7 = (length <= 3 || (optJSONObject8 = jSONArray.optJSONObject(3)) == null) ? -1 : optJSONObject8.getInt("value");
                int i8 = (length <= 4 || (optJSONObject7 = jSONArray.optJSONObject(4)) == null) ? -1 : optJSONObject7.getInt("value");
                if (length <= 5 || (optJSONObject6 = jSONArray.optJSONObject(5)) == null) {
                    str3 = "";
                } else {
                    str3 = optJSONObject6.getString("value");
                }
                if (length <= 6 || (optJSONObject5 = jSONArray.optJSONObject(6)) == null) {
                    str4 = "";
                } else {
                    str4 = optJSONObject5.getString("value");
                }
                int i9 = (length <= 7 || (optJSONObject4 = jSONArray.optJSONObject(7)) == null) ? -1 : optJSONObject4.getInt("value");
                if (length <= 8 || (optJSONObject3 = jSONArray.optJSONObject(8)) == null) {
                    str5 = "";
                } else {
                    str5 = optJSONObject3.getString("value");
                }
                int i10 = (length <= 9 || (optJSONObject2 = jSONArray.optJSONObject(9)) == null) ? -1 : optJSONObject2.getInt("value");
                if (length <= 10 || (optJSONObject = jSONArray.optJSONObject(10)) == null) {
                    i2 = i6;
                    str6 = str4;
                    str7 = "";
                } else {
                    i2 = i6;
                    str6 = str4;
                    str7 = optJSONObject.getString("value");
                }
                a(str2, i5, i2, i7, i8, str3, str6, i9, str5, i10, str7);
            }
            a(this.f9263a, "called reporter success", obj);
        } catch (Throwable th) {
            o0.a(c, th.getMessage());
            a(this.b, "exception: " + th.getMessage(), obj);
        }
    }

    public void a(String str) {
        d.b().d(str);
    }

    public void a(String str, int i, int i2, int i3, int i4, String str2, String str3, int i5, String str4, int i6, String str5) {
        try {
            Context d = c.m().d();
            if (d != null) {
                n.a(g.a(d)).a(new m(str, i, i2, i3, i4, str2, str3, i5, str4, i6, str5));
            }
        } catch (Throwable th) {
            o0.a(c, th.getMessage());
        }
    }

    public void a(int i, String str, Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i);
            jSONObject.put("message", str);
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (JSONException e) {
            o0.a(c, e.getMessage());
        } catch (Throwable th) {
            o0.a(c, th.getMessage());
        }
    }
}
