package com.facebook.appevents.cloudbridge;

import android.content.SharedPreferences;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\b\u0010\tR\u001c\u0010\u000e\u001a\n \u000b*\u0004\u0018\u00010\n0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\"\u0010\u0015\u001a\u00020\u000f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R@\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00162\u0014\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00168A@@X\u0080\u000e¢\u0006\f\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/GraphResponse;", "response", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/GraphResponse;)V", "", "kotlin.jvm.PlatformType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "TAG", "", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "setEnabled$facebook_core_release", "(Z)V", "isEnabled", "", "valuesToSave", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/Map;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;)V", "savedCloudBridgeCredentials", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AppEventsCAPIManager {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f6239Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final AppEventsCAPIManager INSTANCE = new AppEventsCAPIManager();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6240Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = AppEventsCAPIManager.class.getCanonicalName();

    @JvmStatic
    @Nullable
    public static final Map<String, Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppEventsCAPIManager.class)) {
            return null;
        }
        try {
            SharedPreferences sharedPreferences = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSharedPreferences("com.facebook.sdk.CloudBridgeSavedCredentials", 0);
            if (sharedPreferences == null) {
                return null;
            }
            SettingsAPIFields settingsAPIFields = SettingsAPIFields.DATASETID;
            String string = sharedPreferences.getString(settingsAPIFields.getRawValue(), null);
            SettingsAPIFields settingsAPIFields2 = SettingsAPIFields.URL;
            String string2 = sharedPreferences.getString(settingsAPIFields2.getRawValue(), null);
            SettingsAPIFields settingsAPIFields3 = SettingsAPIFields.ACCESSKEY;
            String string3 = sharedPreferences.getString(settingsAPIFields3.getRawValue(), null);
            if (string != null && !StringsKt.isBlank(string) && string2 != null && !StringsKt.isBlank(string2) && string3 != null && !StringsKt.isBlank(string3)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put(settingsAPIFields2.getRawValue(), string2);
                linkedHashMap.put(settingsAPIFields.getRawValue(), string);
                linkedHashMap.put(settingsAPIFields3.getRawValue(), string3);
                Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, f6240Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toString(), " \n\nLoading Cloudbridge settings from saved Prefs: \n================\n DATASETID: %s\n URL: %s \n ACCESSKEY: %s \n\n ", string, string2, string3);
                return linkedHashMap;
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppEventsCAPIManager.class);
            return null;
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphResponse graphResponse) {
        INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(graphResponse);
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        try {
            GraphRequest graphRequest = new GraphRequest(null, Intrinsics.stringPlus(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww(), "/cloudbridge_settings"), null, HttpMethod.GET, new GraphRequest.Callback() { // from class: com.facebook.appevents.cloudbridge.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.facebook.GraphRequest.Callback
                public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphResponse graphResponse) {
                    AppEventsCAPIManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(graphResponse);
                }
            }, null, 32, null);
            Logger.Companion companion = Logger.Companion;
            LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
            String str = f6240Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (str != null) {
                companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loggingBehavior, str, " \n\nCreating Graph Request: \n=============\n%s\n\n ", graphRequest);
                graphRequest.Wwwwwwwwwwwwwwwwwwwwwww();
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
        } catch (JSONException e) {
            Logger.Companion companion2 = Logger.Companion;
            LoggingBehavior loggingBehavior2 = LoggingBehavior.APP_EVENTS;
            String str2 = f6240Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (str2 != null) {
                companion2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loggingBehavior2, str2, " \n\nGraph Request Exception: \n=============\n%s\n\n ", ExceptionsKt.stackTraceToString(e));
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Map<String, ? extends Object> map) {
        SharedPreferences sharedPreferences = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSharedPreferences("com.facebook.sdk.CloudBridgeSavedCredentials", 0);
        if (sharedPreferences != null) {
            if (map == null) {
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.clear();
                edit.apply();
                return;
            }
            SettingsAPIFields settingsAPIFields = SettingsAPIFields.DATASETID;
            Object obj = map.get(settingsAPIFields.getRawValue());
            SettingsAPIFields settingsAPIFields2 = SettingsAPIFields.URL;
            Object obj2 = map.get(settingsAPIFields2.getRawValue());
            SettingsAPIFields settingsAPIFields3 = SettingsAPIFields.ACCESSKEY;
            Object obj3 = map.get(settingsAPIFields3.getRawValue());
            if (obj != null && obj2 != null && obj3 != null) {
                SharedPreferences.Editor edit2 = sharedPreferences.edit();
                edit2.putString(settingsAPIFields.getRawValue(), obj.toString());
                edit2.putString(settingsAPIFields2.getRawValue(), obj2.toString());
                edit2.putString(settingsAPIFields3.getRawValue(), obj3.toString());
                edit2.apply();
                Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, f6240Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toString(), " \n\nSaving Cloudbridge settings from saved Prefs: \n================\n DATASETID: %s\n URL: %s \n ACCESSKEY: %s \n\n ", obj, obj2, obj3);
            }
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f6239Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull GraphResponse graphResponse) {
        Object obj;
        boolean z = false;
        if (graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            Logger.Companion companion = Logger.Companion;
            LoggingBehavior loggingBehavior = LoggingBehavior.APP_EVENTS;
            String str = f6240Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (str != null) {
                companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loggingBehavior, str, " \n\nGraph Response Error: \n================\nResponse Error: %s\nResponse Error Exception: %s\n\n ", graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().toString(), String.valueOf(graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                Map<String, Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    URL url = new URL(String.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(SettingsAPIFields.URL.getRawValue())));
                    AppEventsConversionsAPITransformerWebRequests appEventsConversionsAPITransformerWebRequests = AppEventsConversionsAPITransformerWebRequests.INSTANCE;
                    String valueOf = String.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(SettingsAPIFields.DATASETID.getRawValue()));
                    AppEventsConversionsAPITransformerWebRequests.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(valueOf, url.getProtocol() + "://" + ((Object) url.getHost()), String.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(SettingsAPIFields.ACCESSKEY.getRawValue())));
                    f6239Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                    return;
                }
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
        }
        Logger.Companion companion2 = Logger.Companion;
        LoggingBehavior loggingBehavior2 = LoggingBehavior.APP_EVENTS;
        String str2 = f6240Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (str2 != null) {
            companion2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loggingBehavior2, str2, " \n\nGraph Response Received: \n================\n%s\n\n ", graphResponse);
            JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            try {
                Utility utility = Utility.INSTANCE;
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    obj = null;
                } else {
                    obj = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get("data");
                }
                if (obj != null) {
                    Map<String, ? extends Object> Wwwwwwwwwwwwwwwwwwww2 = Utility.Wwwwwwwwwwwwwwwwwwww(new JSONObject((String) CollectionsKt.firstOrNull((List<? extends Object>) Utility.Wwwwwwwwwwwwwwwwwwwww((JSONArray) obj))));
                    String str3 = (String) Wwwwwwwwwwwwwwwwwwww2.get(SettingsAPIFields.URL.getRawValue());
                    String str4 = (String) Wwwwwwwwwwwwwwwwwwww2.get(SettingsAPIFields.DATASETID.getRawValue());
                    String str5 = (String) Wwwwwwwwwwwwwwwwwwww2.get(SettingsAPIFields.ACCESSKEY.getRawValue());
                    if (str3 != null && str4 != null && str5 != null) {
                        try {
                            AppEventsConversionsAPITransformerWebRequests.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str4, str3, str5);
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww2);
                            SettingsAPIFields settingsAPIFields = SettingsAPIFields.ENABLED;
                            if (Wwwwwwwwwwwwwwwwwwww2.get(settingsAPIFields.getRawValue()) != null) {
                                Object obj2 = Wwwwwwwwwwwwwwwwwwww2.get(settingsAPIFields.getRawValue());
                                if (obj2 != null) {
                                    z = ((Boolean) obj2).booleanValue();
                                } else {
                                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
                                }
                            }
                            f6239Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
                            return;
                        } catch (MalformedURLException e) {
                            Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, f6240Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "CloudBridge Settings API response doesn't have valid url\n %s ", ExceptionsKt.stackTraceToString(e));
                            return;
                        }
                    }
                    companion2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loggingBehavior2, str2, "CloudBridge Settings API response doesn't have valid data");
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type org.json.JSONArray");
            } catch (NullPointerException e2) {
                Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, f6240Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "CloudBridge Settings API response is not a valid json: \n%s ", ExceptionsKt.stackTraceToString(e2));
                return;
            } catch (JSONException e3) {
                Logger.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoggingBehavior.APP_EVENTS, f6240Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "CloudBridge Settings API response is not a valid json: \n%s ", ExceptionsKt.stackTraceToString(e3));
                return;
            }
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
    }
}
