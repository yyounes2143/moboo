package com.facebook.appevents.restrictivedatafilter;

import androidx.annotation.RestrictTo;
import com.facebook.FacebookSdk;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001!B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\u0017\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\b\u0010\tJ-\u0010\f\u001a\u00020\u00042\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000e\u0010\u0003J!\u0010\u0010\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0016\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0015R\u001c\u0010\u0019\u001a\n \u0017*\u0004\u0018\u00010\u00060\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0018R\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u001cR\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00060\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u001f¨\u0006\""}, d2 = {"Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "eventName", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "", "parameters", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "paramKey", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "Z", "enabled", "kotlin.jvm.PlatformType", "Ljava/lang/String;", "TAG", "", "Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager$RestrictiveParamFilter;", "Ljava/util/List;", "restrictiveParamFilters", "", "Ljava/util/Set;", "restrictedEvents", "RestrictiveParamFilter", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class RestrictiveDataManager {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f6498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final RestrictiveDataManager INSTANCE = new RestrictiveDataManager();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = RestrictiveDataManager.class.getCanonicalName();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final List<RestrictiveParamFilter> f6496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Set<String> f6495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new CopyOnWriteArraySet();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\u000e\b\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\b\u0010\n\"\u0004\b\u000b\u0010\fR0\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\r\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager$RestrictiveParamFilter;", "", "", "eventName", "", "restrictiveParams", "<init>", "(Ljava/lang/String;Ljava/util/Map;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "()Ljava/lang/String;", "setEventName", "(Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Map;", "()Ljava/util/Map;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class RestrictiveParamFilter {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Map<String, String> f6499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f6500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public RestrictiveParamFilter(@NotNull String str, @NotNull Map<String, String> map) {
            this.f6500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f6499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = map;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Map<String, String> map) {
            this.f6499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = map;
        }

        @NotNull
        public final Map<String, String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Map<String, String> map, @NotNull String str) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RestrictiveDataManager.class)) {
            try {
                if (f6498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    HashMap hashMap = new HashMap();
                    ArrayList arrayList = new ArrayList(map.keySet());
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        String str2 = (String) obj;
                        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2);
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                            hashMap.put(str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                            map.remove(str2);
                        }
                    }
                    if (!hashMap.isEmpty()) {
                        try {
                            JSONObject jSONObject = new JSONObject();
                            for (Map.Entry entry : hashMap.entrySet()) {
                                jSONObject.put((String) entry.getKey(), (String) entry.getValue());
                            }
                            map.put("_restrictedParams", jSONObject.toString());
                        } catch (JSONException unused) {
                        }
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, RestrictiveDataManager.class);
            }
        }
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RestrictiveDataManager.class)) {
            return null;
        }
        try {
            if (f6498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                if (INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
                    return "_removed_";
                }
            }
            return str;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, RestrictiveDataManager.class);
            return null;
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RestrictiveDataManager.class)) {
            return;
        }
        try {
            f6498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, RestrictiveDataManager.class);
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            return f6495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(str);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String Wwwwwwwwwwwwwwwwwwwww2;
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
                FetchedAppSettings Wwwwwwwwwwwwwwwwww2 = FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww(), false);
                if (Wwwwwwwwwwwwwwwwww2 == null || (Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwww()) == null || Wwwwwwwwwwwwwwwwwwwww2.length() == 0) {
                    return;
                }
                JSONObject jSONObject = new JSONObject(Wwwwwwwwwwwwwwwwwwwww2);
                f6496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
                f6495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                    if (jSONObject2 != null) {
                        JSONObject optJSONObject = jSONObject2.optJSONObject("restrictive_param");
                        RestrictiveParamFilter restrictiveParamFilter = new RestrictiveParamFilter(next, new HashMap());
                        if (optJSONObject != null) {
                            restrictiveParamFilter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Utility.Wwwwwwwwwwwwwwwwwww(optJSONObject));
                            f6496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(restrictiveParamFilter);
                        }
                        if (jSONObject2.has("process_event_name")) {
                            f6495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(restrictiveParamFilter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                        }
                    }
                }
            } catch (Exception unused) {
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList(f6496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                RestrictiveParamFilter restrictiveParamFilter = (RestrictiveParamFilter) obj;
                if (restrictiveParamFilter != null && Intrinsics.areEqual(str, restrictiveParamFilter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                    for (String str3 : restrictiveParamFilter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().keySet()) {
                        if (Intrinsics.areEqual(str2, str3)) {
                            return restrictiveParamFilter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(str3);
                        }
                    }
                    continue;
                }
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
        return null;
    }
}
