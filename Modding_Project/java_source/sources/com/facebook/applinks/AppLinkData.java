package com.facebook.applinks;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class AppLinkData {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6522Wwwwwwwwwwwwwwwwwwwwwwwwwwww = "com.facebook.applinks.AppLinkData";
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public JSONObject f6523Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6524Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Bundle f6525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public JSONObject f6526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Uri f6527Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6528Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface CompletionHandler {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable AppLinkData appLinkData);
    }

    public static Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject) throws JSONException {
        Bundle bundle = new Bundle();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj instanceof JSONObject) {
                bundle.putBundle(next, Wwwwwwwwwwwwwwwwwwwwwwwwwww((JSONObject) obj));
            } else if (obj instanceof JSONArray) {
                JSONArray jSONArray = (JSONArray) obj;
                int i = 0;
                if (jSONArray.length() == 0) {
                    bundle.putStringArray(next, new String[0]);
                } else {
                    Object obj2 = jSONArray.get(0);
                    if (obj2 instanceof JSONObject) {
                        Bundle[] bundleArr = new Bundle[jSONArray.length()];
                        while (i < jSONArray.length()) {
                            bundleArr[i] = Wwwwwwwwwwwwwwwwwwwwwwwwwww(jSONArray.getJSONObject(i));
                            i++;
                        }
                        bundle.putParcelableArray(next, bundleArr);
                    } else if (!(obj2 instanceof JSONArray)) {
                        String[] strArr = new String[jSONArray.length()];
                        while (i < jSONArray.length()) {
                            strArr[i] = jSONArray.get(i).toString();
                            i++;
                        }
                        bundle.putStringArray(next, strArr);
                    } else {
                        throw new FacebookException("Nested arrays are not supported.");
                    }
                }
            } else {
                bundle.putString(next, obj.toString());
            }
        }
        return bundle;
    }

    @Nullable
    public static JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Uri uri) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppLinkData.class) || uri == null) {
            return null;
        }
        try {
            String queryParameter = uri.getQueryParameter("al_applink_data");
            if (queryParameter == null) {
                return null;
            }
            try {
                return new JSONObject(queryParameter);
            } catch (JSONException unused) {
                return null;
            }
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppLinkData.class);
            return null;
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, CompletionHandler completionHandler) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("event", "DEFERRED_APP_LINK");
            Utility.Ill(jSONObject, AttributionIdentifiers.Wwwwwwwwwwwwwwwwwwwwwwww(context), AppEventsLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context), FacebookSdk.Wwwwwwww(context), context);
            Utility.Il(jSONObject, FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("application_package_name", context.getPackageName());
            Object[] objArr = {str};
            AppLinkData appLinkData = null;
            try {
                JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = GraphRequest.Wwwwww(null, String.format("%s/activities", objArr), jSONObject, null).Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    String optString = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.optString("applink_args");
                    long optLong = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.optLong("click_time", -1L);
                    String optString2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.optString("applink_class");
                    String optString3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.optString("applink_url");
                    if (!TextUtils.isEmpty(optString) && (appLinkData = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(optString)) != null) {
                        if (optLong != -1) {
                            try {
                                JSONObject jSONObject2 = appLinkData.f6526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                if (jSONObject2 != null) {
                                    jSONObject2.put("com.facebook.platform.APPLINK_TAP_TIME_UTC", optLong);
                                }
                                Bundle bundle = appLinkData.f6525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                if (bundle != null) {
                                    bundle.putString("com.facebook.platform.APPLINK_TAP_TIME_UTC", Long.toString(optLong));
                                }
                            } catch (JSONException unused) {
                                Utility.Illllllllllllllllllllll(f6522Wwwwwwwwwwwwwwwwwwwwwwwwwwww, "Unable to put tap time in AppLinkData.arguments");
                            }
                        }
                        if (optString2 != null) {
                            try {
                                JSONObject jSONObject3 = appLinkData.f6526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                if (jSONObject3 != null) {
                                    jSONObject3.put("com.facebook.platform.APPLINK_NATIVE_CLASS", optString2);
                                }
                                Bundle bundle2 = appLinkData.f6525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                if (bundle2 != null) {
                                    bundle2.putString("com.facebook.platform.APPLINK_NATIVE_CLASS", optString2);
                                }
                            } catch (JSONException unused2) {
                                Utility.Illllllllllllllllllllll(f6522Wwwwwwwwwwwwwwwwwwwwwwwwwwww, "Unable to put app link class name in AppLinkData.arguments");
                            }
                        }
                        if (optString3 != null) {
                            try {
                                JSONObject jSONObject4 = appLinkData.f6526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                if (jSONObject4 != null) {
                                    jSONObject4.put("com.facebook.platform.APPLINK_NATIVE_URL", optString3);
                                }
                                Bundle bundle3 = appLinkData.f6525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                if (bundle3 != null) {
                                    bundle3.putString("com.facebook.platform.APPLINK_NATIVE_URL", optString3);
                                }
                            } catch (JSONException unused3) {
                                Utility.Illllllllllllllllllllll(f6522Wwwwwwwwwwwwwwwwwwwwwwwwwwww, "Unable to put app link URL in AppLinkData.arguments");
                            }
                        }
                    }
                }
            } catch (Exception unused4) {
                Utility.Illllllllllllllllllllll(f6522Wwwwwwwwwwwwwwwwwwwwwwwwwwww, "Unable to fetch deferred applink from server");
            }
            completionHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appLinkData);
        } catch (JSONException e) {
            throw new FacebookException("An error occurred while preparing deferred app link", e);
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, final String str, final CompletionHandler completionHandler) {
        Validate.Wwwwwwwwwwwwwwwwwwwwww(context, "context");
        Validate.Wwwwwwwwwwwwwwwwwwwwww(completionHandler, "completionHandler");
        if (str == null) {
            str = Utility.Kkkkkkkkkkkkkkkkkkkkkk(context);
        }
        Validate.Wwwwwwwwwwwwwwwwwwwwww(str, "applicationId");
        final Context applicationContext = context.getApplicationContext();
        FacebookSdk.Wwwwwwwwwwwwww().execute(new Runnable() { // from class: com.facebook.applinks.AppLinkData.1
            @Override // java.lang.Runnable
            public void run() {
                if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                    try {
                        AppLinkData.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(applicationContext, str, completionHandler);
                    } catch (Throwable th) {
                        CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                    }
                }
            }
        });
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, CompletionHandler completionHandler) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, null, completionHandler);
    }

    @Nullable
    public static AppLinkData Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (str == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("version");
            if (jSONObject.getJSONObject("bridge_args").getString(FirebaseAnalytics.Param.METHOD).equals("applink") && string.equals("2")) {
                AppLinkData appLinkData = new AppLinkData();
                JSONObject jSONObject2 = jSONObject.getJSONObject("method_args");
                appLinkData.f6526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject2;
                if (jSONObject2.has("ref")) {
                    appLinkData.f6528Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = appLinkData.f6526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getString("ref");
                } else if (appLinkData.f6526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.has("referer_data")) {
                    JSONObject jSONObject3 = appLinkData.f6526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getJSONObject("referer_data");
                    if (jSONObject3.has("fb_ref")) {
                        appLinkData.f6528Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject3.getString("fb_ref");
                    }
                }
                if (appLinkData.f6526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.has("target_url")) {
                    Uri parse = Uri.parse(appLinkData.f6526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getString("target_url"));
                    appLinkData.f6527Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = parse;
                    appLinkData.f6523Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(parse);
                }
                if (appLinkData.f6526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.has("extras")) {
                    JSONObject jSONObject4 = appLinkData.f6526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getJSONObject("extras");
                    if (jSONObject4.has("deeplink_context")) {
                        JSONObject jSONObject5 = jSONObject4.getJSONObject("deeplink_context");
                        if (jSONObject5.has("promo_code")) {
                            appLinkData.f6524Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject5.getString("promo_code");
                        }
                    }
                }
                appLinkData.f6525Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwww(appLinkData.f6526Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                return appLinkData;
            }
        } catch (FacebookException e) {
            Utility.Illlllllllllllllllllll(f6522Wwwwwwwwwwwwwwwwwwwwwwwwwwww, "Unable to parse AppLink JSON", e);
        } catch (JSONException e2) {
            Utility.Illlllllllllllllllllll(f6522Wwwwwwwwwwwwwwwwwwwwwwwwwwww, "Unable to parse AppLink JSON", e2);
        }
        return null;
    }

    @Nullable
    public Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6527Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
