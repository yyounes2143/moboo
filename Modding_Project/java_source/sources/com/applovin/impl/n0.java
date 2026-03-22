package com.applovin.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.preference.PreferenceManager;
import com.applovin.impl.m0;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class n0 {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f3442a = {7, 4, 2, 1, 11};
    private static final int[] b = {5, 6, 12, 10, 3, 9, 8, 14};
    private static final int[] c = {15, 13};
    private static final int[] d = {20};

    public static String a(String str, com.applovin.impl.sdk.k kVar) {
        return a((String) kVar.a(l4.s0), str, kVar);
    }

    public static String b(String str, com.applovin.impl.sdk.k kVar) {
        return a((String) kVar.a(l4.r0), str, kVar);
    }

    public static Map c(com.applovin.impl.sdk.k kVar) {
        HashMap hashMap = new HashMap();
        String str = (String) kVar.a(l4.j);
        if (StringUtils.isValidString(str)) {
            hashMap.put("device_token", str);
        } else if (!((Boolean) kVar.a(l4.L4)).booleanValue()) {
            hashMap.put("api_key", kVar.i0());
        }
        hashMap.putAll(z6.a(kVar.B().e()));
        return hashMap;
    }

    public static String d(com.applovin.impl.sdk.k kVar) {
        return a((String) kVar.a(l4.q0), "4.0/ad", kVar);
    }

    public static String e(com.applovin.impl.sdk.k kVar) {
        return a((String) kVar.a(l4.p0), "4.0/ad", kVar);
    }

    public static Long f(com.applovin.impl.sdk.k kVar) {
        m0.d a2 = kVar.x().a();
        if (a2 == null) {
            return null;
        }
        double c2 = z6.c(a2.b());
        double d2 = z6.d(a2.a());
        if (d2 == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            return null;
        }
        return Long.valueOf((long) (c2 / d2));
    }

    public static String g(com.applovin.impl.sdk.k kVar) {
        NetworkInfo b2 = b(com.applovin.impl.sdk.k.o());
        if (b2 != null) {
            int type = b2.getType();
            int subtype = b2.getSubtype();
            if (type == 1) {
                return "wifi";
            }
            if (type == 0) {
                if (a(subtype, f3442a)) {
                    return "2g";
                }
                if (a(subtype, b)) {
                    return "3g";
                }
                if (a(subtype, c)) {
                    return "4g";
                }
                if (a(subtype, d)) {
                    return "5g";
                }
                return "mobile";
            }
        }
        return "unknown";
    }

    public static void a(JSONObject jSONObject, boolean z, com.applovin.impl.sdk.k kVar) {
        kVar.u().a(jSONObject, z);
    }

    public static void b(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        String string = JsonUtils.getString(jSONObject, "persisted_data", null);
        if (StringUtils.isValidString(string)) {
            kVar.b(n4.F, string);
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().d("ConnectionUtils", "Updated persisted data");
            }
        }
    }

    public static void a(int i, com.applovin.impl.sdk.k kVar) {
        if (i == 401) {
            com.applovin.impl.sdk.o.h("AppLovinSdk", "SDK key \"" + kVar.i0() + "\" is rejected by AppLovin. Please make sure the SDK key is correct.");
        } else if (i == 418) {
            kVar.o0().a(l4.e, Boolean.TRUE);
            kVar.o0().e();
        } else if (i >= 400 && i < 500) {
            if (((Boolean) kVar.a(l4.g)).booleanValue()) {
                kVar.U0();
            }
        } else if (i == -1 && ((Boolean) kVar.a(l4.g)).booleanValue()) {
            kVar.U0();
        }
    }

    private static NetworkInfo b(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null) {
            return connectivityManager.getActiveNetworkInfo();
        }
        return null;
    }

    public static void c(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        if (jSONObject == null) {
            throw new IllegalArgumentException("No response specified");
        }
        if (kVar != null) {
            try {
                if (jSONObject.has("settings")) {
                    m4 o0 = kVar.o0();
                    if (jSONObject.isNull("settings")) {
                        return;
                    }
                    JSONObject jSONObject2 = jSONObject.getJSONObject("settings");
                    o0.a(jSONObject2);
                    o0.e();
                    String b2 = l4.e6.b();
                    if (JsonUtils.valueExists(jSONObject2, b2)) {
                        o4.b(n4.H, JsonUtils.getBoolean(jSONObject2, b2, Boolean.FALSE), com.applovin.impl.sdk.k.o());
                        return;
                    }
                    return;
                }
                return;
            } catch (JSONException e) {
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    kVar.O().a("ConnectionUtils", "Unable to parse settings out of API response", e);
                    return;
                }
                return;
            }
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    public static String b(com.applovin.impl.sdk.k kVar) {
        return a((String) kVar.a(l4.p0), ((Boolean) kVar.a(l4.Z2)).booleanValue() ? "5.0/ad" : "4.0/ad", kVar);
    }

    public static String a(String str, String str2, com.applovin.impl.sdk.k kVar) {
        if (str == null || str.length() < 4) {
            throw new IllegalArgumentException("Invalid domain specified");
        }
        if (str2 != null) {
            if (kVar != null) {
                return str + str2;
            }
            throw new IllegalArgumentException("No sdk specified");
        }
        throw new IllegalArgumentException("No endpoint specified");
    }

    public static void a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "filesystem_values", (JSONObject) null);
        if (jSONObject2 != null) {
            SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(com.applovin.impl.sdk.k.o()).edit();
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object object = JsonUtils.getObject(jSONObject2, next, null);
                if (object != null) {
                    o4.a(next, object, (SharedPreferences) null, edit);
                }
            }
            if (((Boolean) kVar.a(l4.a6)).booleanValue()) {
                o4.a(edit);
            } else {
                edit.apply();
            }
        }
    }

    public static byte[] a(InputStream inputStream, com.applovin.impl.sdk.k kVar) {
        if (inputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[((Integer) kVar.a(l4.S2)).intValue()];
        while (true) {
            int read = inputStream.read(bArr);
            if (read > 0) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public static boolean a(Context context) {
        if (context.getSystemService("connectivity") != null) {
            NetworkInfo b2 = b(context);
            if (b2 != null) {
                return b2.isConnected();
            }
            return false;
        }
        return true;
    }

    private static boolean a(int i, int[] iArr) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static String a(com.applovin.impl.sdk.k kVar) {
        return a((String) kVar.a(l4.q0), ((Boolean) kVar.a(l4.Z2)).booleanValue() ? "5.0/ad" : "4.0/ad", kVar);
    }
}
