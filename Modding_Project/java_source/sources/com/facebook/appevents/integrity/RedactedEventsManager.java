package com.facebook.appevents.integrity;

import com.facebook.FacebookSdk;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\u0017\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\tR\u0016\u0010\u000e\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\rR2\u0010\u0013\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00060\u0010j\b\u0012\u0004\u0012\u00020\u0006`\u00110\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/facebook/appevents/integrity/RedactedEventsManager;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "eventName", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Z", "enabled", "", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "Ljava/util/Map;", "redactedEvents", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RedactedEventsManager {
    @NotNull
    public static final RedactedEventsManager INSTANCE = new RedactedEventsManager();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Map<String, HashSet<String>> f6407Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f6408Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RedactedEventsManager.class)) {
            return null;
        }
        try {
            if (f6408Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
            }
            return str;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, RedactedEventsManager.class);
            return null;
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(RedactedEventsManager.class)) {
            try {
                INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (!f6407Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
                    f6408Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, RedactedEventsManager.class);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int length;
        HashSet<String> Wwwwwwwwwwwwwwwwwwwwww2;
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
                int i = 0;
                FetchedAppSettings Wwwwwwwwwwwwwwwwww2 = FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww(), false);
                if (Wwwwwwwwwwwwwwwwww2 != null) {
                    try {
                        f6407Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();
                        JSONArray Wwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww();
                        if (Wwwwwwwwwwwwwwwwwwwwww3 == null || Wwwwwwwwwwwwwwwwwwwwww3.length() == 0 || (length = Wwwwwwwwwwwwwwwwwwwwww3.length()) <= 0) {
                            return;
                        }
                        while (true) {
                            int i2 = i + 1;
                            JSONObject jSONObject = Wwwwwwwwwwwwwwwwwwwwww3.getJSONObject(i);
                            boolean has = jSONObject.has("key");
                            boolean has2 = jSONObject.has("value");
                            if (has && has2) {
                                String string = jSONObject.getString("key");
                                JSONArray jSONArray = jSONObject.getJSONArray("value");
                                if (string != null && (Wwwwwwwwwwwwwwwwwwwwww2 = Utility.Wwwwwwwwwwwwwwwwwwwwww(jSONArray)) != null) {
                                    f6407Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(string, Wwwwwwwwwwwwwwwwwwwwww2);
                                }
                            }
                            if (i2 < length) {
                                i = i2;
                            } else {
                                return;
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            for (String str2 : f6407Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.keySet()) {
                HashSet<String> hashSet = f6407Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str2);
                if (hashSet != null && hashSet.contains(str)) {
                    return str2;
                }
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }
}
