package com.facebook.appevents.iap;

import android.content.SharedPreferences;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.facebook.FacebookSdk;
import com.facebook.appevents.internal.AutomaticAnalyticsLogger;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmStatic;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J9\u0010\u000b\u001a\u00020\n2\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0014\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\bH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ/\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\b2\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\nH\u0001¢\u0006\u0004\b\u0012\u0010\u0003JE\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\b2\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\b2\u0014\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\bH\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0015\u0010\u0003J#\u0010\u0016\u001a\u00020\n2\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\bH\u0002¢\u0006\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00188\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0010\u0010\u0019R\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00050\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u001cR \u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001e0\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u001f¨\u0006!"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;", "", "<init>", "()V", "", "", "Lorg/json/JSONObject;", "purchaseDetailsMap", "", "skuDetailsMap", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;Ljava/util/Map;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;)Ljava/util/Map;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;)V", "Landroid/content/SharedPreferences;", "Landroid/content/SharedPreferences;", "sharedPreferences", "", "Ljava/util/Set;", "cachedPurchaseSet", "", "Ljava/util/Map;", "cachedPurchaseMap", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class InAppPurchaseLoggerManager {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static SharedPreferences f6387Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final InAppPurchaseLoggerManager INSTANCE = new InAppPurchaseLoggerManager();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Set<String> f6386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new CopyOnWriteArraySet();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<String, Long> f6385Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap();

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Map<String, JSONObject> map, @NotNull Map<String, ? extends JSONObject> map2) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseLoggerManager.class)) {
            return;
        }
        try {
            InAppPurchaseLoggerManager inAppPurchaseLoggerManager = INSTANCE;
            inAppPurchaseLoggerManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            inAppPurchaseLoggerManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(inAppPurchaseLoggerManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inAppPurchaseLoggerManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(map), map2));
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseLoggerManager.class);
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseLoggerManager.class)) {
            return false;
        }
        try {
            INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            SharedPreferences sharedPreferences = f6387Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (sharedPreferences != null) {
                long j = sharedPreferences.getLong("LAST_QUERY_PURCHASE_HISTORY_TIME", 0L);
                if (j != 0 && currentTimeMillis - j < 86400) {
                    return false;
                }
                SharedPreferences sharedPreferences2 = f6387Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (sharedPreferences2 != null) {
                    sharedPreferences2.edit().putLong("LAST_QUERY_PURCHASE_HISTORY_TIME", currentTimeMillis).apply();
                    return true;
                }
                throw null;
            }
            throw null;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseLoggerManager.class);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            SharedPreferences sharedPreferences = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSharedPreferences("com.facebook.internal.SKU_DETAILS", 0);
            SharedPreferences sharedPreferences2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSharedPreferences("com.facebook.internal.PURCHASE", 0);
            if (sharedPreferences.contains("LAST_CLEARED_TIME")) {
                sharedPreferences.edit().clear().apply();
                sharedPreferences2.edit().clear().apply();
            }
            SharedPreferences sharedPreferences3 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSharedPreferences("com.facebook.internal.iap.PRODUCT_DETAILS", 0);
            f6387Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = sharedPreferences3;
            Set<String> set = f6386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (sharedPreferences3 != null) {
                Set<String> stringSet = sharedPreferences3.getStringSet("PURCHASE_DETAILS_SET", new HashSet());
                if (stringSet == null) {
                    stringSet = new HashSet<>();
                }
                set.addAll(stringSet);
                for (String str : set) {
                    List split$default = StringsKt.split$default((CharSequence) str, new String[]{";"}, false, 2, 2, (Object) null);
                    f6385Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(split$default.get(0), Long.valueOf(Long.parseLong((String) split$default.get(1))));
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                return;
            }
            throw null;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Map<String, String> map) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (key != null && value != null) {
                        AutomaticAnalyticsLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(key, value, false);
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    @VisibleForTesting(otherwise = 2)
    @NotNull
    public final Map<String, String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Map<String, ? extends JSONObject> map, @NotNull Map<String, ? extends JSONObject> map2) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, ? extends JSONObject> entry : map.entrySet()) {
                JSONObject value = entry.getValue();
                JSONObject jSONObject = map2.get(entry.getKey());
                if (value != null && value.has("purchaseTime")) {
                    try {
                        if (currentTimeMillis - (value.getLong("purchaseTime") / 1000) <= 86400 && jSONObject != null) {
                            linkedHashMap.put(value.toString(), jSONObject.toString());
                        }
                    } catch (Exception unused) {
                    }
                }
            }
            return linkedHashMap;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    @VisibleForTesting(otherwise = 2)
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                long currentTimeMillis = System.currentTimeMillis() / 1000;
                SharedPreferences sharedPreferences = f6387Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (sharedPreferences != null) {
                    long j = sharedPreferences.getLong("LAST_CLEARED_TIME", 0L);
                    if (j == 0) {
                        SharedPreferences sharedPreferences2 = f6387Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        if (sharedPreferences2 != null) {
                            sharedPreferences2.edit().putLong("LAST_CLEARED_TIME", currentTimeMillis).apply();
                            return;
                        }
                        throw null;
                    } else if (currentTimeMillis - j > 604800) {
                        for (Map.Entry entry : MapsKt.toMap(f6385Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).entrySet()) {
                            String str = (String) entry.getKey();
                            long longValue = ((Number) entry.getValue()).longValue();
                            if (currentTimeMillis - longValue > 86400) {
                                Set<String> set = f6386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                set.remove(str + ';' + longValue);
                                f6385Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(str);
                            }
                        }
                        SharedPreferences sharedPreferences3 = f6387Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        if (sharedPreferences3 != null) {
                            sharedPreferences3.edit().putStringSet("PURCHASE_DETAILS_SET", f6386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).putLong("LAST_CLEARED_TIME", currentTimeMillis).apply();
                            return;
                        }
                        throw null;
                    } else {
                        return;
                    }
                }
                throw null;
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    @VisibleForTesting(otherwise = 2)
    @NotNull
    public final Map<String, JSONObject> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Map<String, JSONObject> map) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            for (Map.Entry entry : MapsKt.toMap(map).entrySet()) {
                String str = (String) entry.getKey();
                JSONObject jSONObject = (JSONObject) entry.getValue();
                try {
                    if (jSONObject.has("purchaseToken")) {
                        String string = jSONObject.getString("purchaseToken");
                        if (f6385Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.containsKey(string)) {
                            map.remove(str);
                        } else {
                            Set<String> set = f6386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            StringBuilder sb = new StringBuilder();
                            sb.append((Object) string);
                            sb.append(';');
                            sb.append(currentTimeMillis);
                            set.add(sb.toString());
                        }
                    }
                } catch (Exception unused) {
                }
            }
            SharedPreferences sharedPreferences = f6387Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (sharedPreferences != null) {
                sharedPreferences.edit().putStringSet("PURCHASE_DETAILS_SET", f6386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).apply();
                return new HashMap(map);
            }
            throw null;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }
}
