package com.facebook.ads.internal.dynamicloading;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.browser.trusted.sharing.ShareTarget;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.infer.annotation.Nullsafe;
import com.google.common.net.HttpHeaders;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes3.dex */
public class DexLoadErrorReporter {
    public static final double SAMPLING = 0.1d;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicBoolean f6147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean();

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, JSONObject jSONObject, String str) throws JSONException, PackageManager.NameNotFoundException {
        String packageName = context.getPackageName();
        jSONObject.put("APPBUILD", context.getPackageManager().getPackageInfo(packageName, 0).versionCode);
        jSONObject.put("APPNAME", context.getPackageManager().getApplicationLabel(context.getPackageManager().getApplicationInfo(packageName, 0)));
        jSONObject.put("APPVERS", context.getPackageManager().getPackageInfo(packageName, 0).versionName);
        jSONObject.put("OSVERS", Build.VERSION.RELEASE);
        jSONObject.put("SDK", "android");
        jSONObject.put("SESSION_ID", str);
        jSONObject.put("MODEL", Build.MODEL);
        jSONObject.put("BUNDLE", packageName);
        jSONObject.put("SDK_VERSION", BuildConfigApi.getVersionName(context));
        jSONObject.put("OS", "Android");
    }

    @SuppressLint({"CatchGeneralException"})
    public static void reportDexLoadingIssue(final Context context, final String str, double d) {
        AtomicBoolean atomicBoolean = f6147Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (!atomicBoolean.get() && Math.random() < d) {
            atomicBoolean.set(true);
            new Thread() { // from class: com.facebook.ads.internal.dynamicloading.DexLoadErrorReporter.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    InputStream inputStream;
                    HttpURLConnection httpURLConnection;
                    super.run();
                    DataOutputStream dataOutputStream = null;
                    InputStream inputStream2 = null;
                    dataOutputStream = null;
                    try {
                        httpURLConnection = (HttpURLConnection) new URL("https://www.facebook.com/adnw_logging/").openConnection();
                        try {
                            httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
                            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
                            httpURLConnection.setRequestProperty("Accept", "application/json");
                            httpURLConnection.setRequestProperty(HttpHeaders.ACCEPT_CHARSET, "UTF-8");
                            httpURLConnection.setRequestProperty("user-agent", "[FBAN/AudienceNetworkForAndroid;FBSN/Android]");
                            httpURLConnection.setDoOutput(true);
                            httpURLConnection.setDoInput(true);
                            httpURLConnection.connect();
                            String uuid = UUID.randomUUID().toString();
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("attempt", "0");
                            DexLoadErrorReporter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, jSONObject, uuid);
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("subtype", "generic");
                            jSONObject2.put("subtype_code", "1320");
                            jSONObject2.put("caught_exception", "1");
                            jSONObject2.put("stacktrace", str);
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("id", UUID.randomUUID().toString());
                            jSONObject3.put("type", "debug");
                            jSONObject3.put("session_time", "" + (System.currentTimeMillis() / 1000));
                            jSONObject3.put("time", "" + (System.currentTimeMillis() / 1000));
                            jSONObject3.put("session_id", uuid);
                            jSONObject3.put("data", jSONObject2);
                            jSONObject3.put("attempt", "0");
                            DexLoadErrorReporter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, jSONObject2, uuid);
                            JSONArray jSONArray = new JSONArray();
                            jSONArray.put(jSONObject3);
                            JSONObject jSONObject4 = new JSONObject();
                            jSONObject4.put("data", jSONObject);
                            jSONObject4.put(DbParams.TABLE_EVENTS, jSONArray);
                            String jSONObject5 = jSONObject4.toString();
                            DataOutputStream dataOutputStream2 = new DataOutputStream(httpURLConnection.getOutputStream());
                            try {
                                dataOutputStream2.writeBytes("payload=" + URLEncoder.encode(jSONObject5, "UTF-8"));
                                dataOutputStream2.flush();
                                byte[] bArr = new byte[16384];
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                inputStream2 = httpURLConnection.getInputStream();
                                while (true) {
                                    int read = inputStream2.read(bArr);
                                    if (read == -1) {
                                        break;
                                    }
                                    byteArrayOutputStream.write(bArr, 0, read);
                                }
                                byteArrayOutputStream.flush();
                                try {
                                    dataOutputStream2.close();
                                } catch (Exception unused) {
                                }
                                try {
                                    inputStream2.close();
                                } catch (Exception unused2) {
                                }
                            } catch (Throwable unused3) {
                                inputStream = inputStream2;
                                dataOutputStream = dataOutputStream2;
                                if (dataOutputStream != null) {
                                    try {
                                        dataOutputStream.close();
                                    } catch (Exception unused4) {
                                    }
                                }
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (Exception unused5) {
                                    }
                                }
                                if (httpURLConnection == null) {
                                    return;
                                }
                                httpURLConnection.disconnect();
                            }
                        } catch (Throwable unused6) {
                            inputStream = null;
                        }
                    } catch (Throwable unused7) {
                        inputStream = null;
                        httpURLConnection = null;
                    }
                    httpURLConnection.disconnect();
                }
            }.start();
        }
    }
}
