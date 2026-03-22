package com.mbridge.msdk.videocommon.entity;

import java.util.HashMap;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private String f10020a;
    private int b;

    public c(String str, int i) {
        this.f10020a = str;
        this.b = i;
    }

    public int a() {
        return this.b;
    }

    public void b(String str) {
        this.f10020a = str;
    }

    public String c() {
        return this.f10020a;
    }

    public String toString() {
        return "Reward{name='" + this.f10020a + "', amount=" + this.b + AbstractJsonLexerKt.END_OBJ;
    }

    public static c b() {
        return new c("Virtual Item", 1);
    }

    public void a(int i) {
        this.b = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002c A[Catch: Exception -> 0x0015, TRY_LEAVE, TryCatch #0 {Exception -> 0x0015, blocks: (B:3:0x0001, B:5:0x000f, B:14:0x002c, B:10:0x0019, B:12:0x001f), top: B:19:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0031 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mbridge.msdk.videocommon.entity.c a(java.lang.String r3) {
        /*
            r0 = 0
            com.mbridge.msdk.videocommon.setting.b r1 = com.mbridge.msdk.videocommon.setting.b.b()     // Catch: java.lang.Exception -> L15
            com.mbridge.msdk.videocommon.setting.a r1 = r1.c()     // Catch: java.lang.Exception -> L15
            boolean r2 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Exception -> L15
            if (r2 == 0) goto L17
            com.mbridge.msdk.videocommon.entity.c r3 = b()     // Catch: java.lang.Exception -> L15
        L13:
            r0 = r3
            goto L2a
        L15:
            r3 = move-exception
            goto L32
        L17:
            if (r1 == 0) goto L2a
            java.util.Map r2 = r1.g()     // Catch: java.lang.Exception -> L15
            if (r2 == 0) goto L2a
            java.util.Map r1 = r1.g()     // Catch: java.lang.Exception -> L15
            java.lang.Object r3 = r1.get(r3)     // Catch: java.lang.Exception -> L15
            com.mbridge.msdk.videocommon.entity.c r3 = (com.mbridge.msdk.videocommon.entity.c) r3     // Catch: java.lang.Exception -> L15
            goto L13
        L2a:
            if (r0 != 0) goto L31
            com.mbridge.msdk.videocommon.entity.c r3 = b()     // Catch: java.lang.Exception -> L15
            return r3
        L31:
            return r0
        L32:
            r3.printStackTrace()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.entity.c.a(java.lang.String):com.mbridge.msdk.videocommon.entity.c");
    }

    public static Map<String, c> a(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                hashMap.put(optJSONObject.optString("id"), new c(optJSONObject.optString("name"), optJSONObject.optInt("amount")));
            }
            return hashMap;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static c a(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                String optString = jSONObject.optString("name");
                int optInt = jSONObject.optInt("amount");
                jSONObject.optString("id");
                return new c(optString, optInt);
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        return null;
    }
}
