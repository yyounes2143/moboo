package com.facebook.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.internal.FetchedAppGateKeepersManager;
import com.facebook.internal.gatekeeper.GateKeeper;
import com.facebook.internal.gatekeeper.GateKeeperRuntimeCache;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010$\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001:\u00013B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ)\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0011\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0014\u001a\u0004\u0018\u00010\rH\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0006¢\u0006\u0004\b\u0017\u0010\u0003J#\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u000b0\u00182\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001b\u0010\u0003J\u0017\u0010\u001c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0019\u0010 \u001a\u00020\u000b2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0002¢\u0006\u0004\b \u0010!R\u0016\u0010$\u001a\u0004\u0018\u00010\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u001a\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00040)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010*R \u0010.\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\r0,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010-R\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010/R\u0018\u00102\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u00101¨\u00064"}, d2 = {"Lcom/facebook/internal/FetchedAppGateKeepersManager;", "", "<init>", "()V", "Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;", "callback", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;)V", "", "applicationId", "", "forceRequery", "Lorg/json/JSONObject;", "Wwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Z)Lorg/json/JSONObject;", "name", "defaultValue", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Z)Z", "gateKeepersJSON", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/util/Map;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lorg/json/JSONObject;", "", CampaignEx.JSON_KEY_TIMESTAMP, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Long;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "TAG", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isLoading", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "callbacks", "", "Ljava/util/Map;", "fetchedAppGateKeepers", "Ljava/lang/Long;", "Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;", "Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;", "gateKeeperRuntimeCache", "Callback", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes4.dex */
public final class FetchedAppGateKeepersManager {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static GateKeeperRuntimeCache f6662Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Long f6663Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final FetchedAppGateKeepersManager INSTANCE = new FetchedAppGateKeepersManager();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6667Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Reflection.getOrCreateKotlinClass(FetchedAppGateKeepersManager.class).getSimpleName();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicBoolean f6666Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(false);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ConcurrentLinkedQueue<Callback> f6665Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentLinkedQueue<>();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<String, JSONObject> f6664Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;", "", "onCompleted", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface Callback {
        void onCompleted();
    }

    @JvmStatic
    @NotNull
    public static final JSONObject Wwwwwwwwwwwwwwwwwwwwww(@NotNull String str, boolean z) {
        if (!z) {
            Map<String, JSONObject> map = f6664Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (map.containsKey(str)) {
                JSONObject jSONObject = map.get(str);
                if (jSONObject == null) {
                    return new JSONObject();
                }
                return jSONObject;
            }
        }
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        Context Wwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Wwwwwwwwwwwwwwwwwwwwwww2.getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).edit().putString(String.format("com.facebook.internal.APP_GATEKEEPERS.%s", Arrays.copyOf(new Object[]{str}, 1)), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.toString()).apply();
        return Wwwwwwwwwwwwwwwwwwwwwwwww(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwww(Callback callback) {
        callback.onCompleted();
    }

    @JvmStatic
    @VisibleForTesting(otherwise = 2)
    @NotNull
    public static final synchronized JSONObject Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @Nullable JSONObject jSONObject) {
        JSONObject jSONObject2;
        JSONArray optJSONArray;
        synchronized (FetchedAppGateKeepersManager.class) {
            try {
                jSONObject2 = f6664Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
                if (jSONObject2 == null) {
                    jSONObject2 = new JSONObject();
                }
                int i = 0;
                JSONObject jSONObject3 = null;
                if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray("data")) != null) {
                    jSONObject3 = optJSONArray.optJSONObject(0);
                }
                if (jSONObject3 == null) {
                    jSONObject3 = new JSONObject();
                }
                JSONArray optJSONArray2 = jSONObject3.optJSONArray("gatekeepers");
                if (optJSONArray2 == null) {
                    optJSONArray2 = new JSONArray();
                }
                int length = optJSONArray2.length();
                if (length > 0) {
                    while (true) {
                        int i2 = i + 1;
                        try {
                            JSONObject jSONObject4 = optJSONArray2.getJSONObject(i);
                            jSONObject2.put(jSONObject4.getString("key"), jSONObject4.getBoolean("value"));
                        } catch (JSONException e) {
                            Utility.Illlllllllllllllllllllll("FacebookSDK", e);
                        }
                        if (i2 >= length) {
                            break;
                        }
                        i = i2;
                    }
                }
                f6664Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(str, jSONObject2);
            } catch (Throwable th) {
                throw th;
            }
        }
        return jSONObject2;
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwww(String str, Context context, String str2) {
        FetchedAppGateKeepersManager fetchedAppGateKeepersManager = INSTANCE;
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = fetchedAppGateKeepersManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length() != 0) {
            Wwwwwwwwwwwwwwwwwwwwwwwww(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            context.getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).edit().putString(str2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.toString()).apply();
            f6663Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Long.valueOf(System.currentTimeMillis());
        }
        fetchedAppGateKeepersManager.Wwwwwwwwwwwwwwwwwwwwwwww();
        f6666Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(false);
    }

    @JvmStatic
    public static final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Callback callback) {
        synchronized (FetchedAppGateKeepersManager.class) {
            if (callback != null) {
                try {
                    f6665Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(callback);
                } catch (Throwable th) {
                    throw th;
                }
            }
            final String Wwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww();
            FetchedAppGateKeepersManager fetchedAppGateKeepersManager = INSTANCE;
            if (fetchedAppGateKeepersManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(f6663Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && f6664Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.containsKey(Wwwwwwwwwwwwwwwwwwwwww2)) {
                fetchedAppGateKeepersManager.Wwwwwwwwwwwwwwwwwwwwwwww();
                return;
            }
            final Context Wwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            final String format = String.format("com.facebook.internal.APP_GATEKEEPERS.%s", Arrays.copyOf(new Object[]{Wwwwwwwwwwwwwwwwwwwwww2}, 1));
            if (Wwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return;
            }
            JSONObject jSONObject = null;
            String string = Wwwwwwwwwwwwwwwwwwwwwww2.getSharedPreferences("com.facebook.internal.preferences.APP_GATEKEEPERS", 0).getString(format, null);
            if (!Utility.Kk(string)) {
                try {
                    jSONObject = new JSONObject(string);
                } catch (JSONException e) {
                    Utility.Illlllllllllllllllllllll("FacebookSDK", e);
                }
                if (jSONObject != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww2, jSONObject);
                }
            }
            Executor Wwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwww2 == null) {
                return;
            }
            if (!f6666Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.compareAndSet(false, true)) {
                return;
            }
            Wwwwwwwwwwwwww2.execute(new Runnable() { // from class: com.facebook.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    FetchedAppGateKeepersManager.Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwww2, format);
                }
            });
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @Nullable String str2, boolean z) {
        Boolean bool;
        Map<String, Boolean> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2);
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.containsKey(str) || (bool = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(str)) == null) {
            return z;
        }
        return bool.booleanValue();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww() {
        Handler handler = new Handler(Looper.getMainLooper());
        while (true) {
            ConcurrentLinkedQueue<Callback> concurrentLinkedQueue = f6665Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (!concurrentLinkedQueue.isEmpty()) {
                final Callback poll = concurrentLinkedQueue.poll();
                if (poll != null) {
                    handler.post(new Runnable() { // from class: com.facebook.internal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // java.lang.Runnable
                        public final void run() {
                            FetchedAppGateKeepersManager.Wwwwwwwwwwwwwwwwwwwwwww(FetchedAppGateKeepersManager.Callback.this);
                        }
                    });
                }
            } else {
                return;
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(null);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Long l) {
        if (l == null || System.currentTimeMillis() - l.longValue() >= 3600000) {
            return false;
        }
        return true;
    }

    @NotNull
    public final Map<String, Boolean> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        List<GateKeeper> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (str != null) {
            Map<String, JSONObject> map = f6664Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (map.containsKey(str)) {
                GateKeeperRuntimeCache gateKeeperRuntimeCache = f6662Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (gateKeeperRuntimeCache == null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
                } else {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = gateKeeperRuntimeCache.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                }
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    HashMap hashMap = new HashMap();
                    for (GateKeeper gateKeeper : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        hashMap.put(gateKeeper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Boolean.valueOf(gateKeeper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                    }
                    return hashMap;
                }
                HashMap hashMap2 = new HashMap();
                JSONObject jSONObject = map.get(str);
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap2.put(next, Boolean.valueOf(jSONObject.optBoolean(next)));
                }
                GateKeeperRuntimeCache gateKeeperRuntimeCache2 = f6662Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (gateKeeperRuntimeCache2 == null) {
                    gateKeeperRuntimeCache2 = new GateKeeperRuntimeCache();
                }
                ArrayList arrayList = new ArrayList(hashMap2.size());
                for (Map.Entry entry : hashMap2.entrySet()) {
                    arrayList.add(new GateKeeper((String) entry.getKey(), ((Boolean) entry.getValue()).booleanValue()));
                }
                gateKeeperRuntimeCache2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, arrayList);
                f6662Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = gateKeeperRuntimeCache2;
                return hashMap2;
            }
        }
        return new HashMap();
    }

    public final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(TPDownloadProxyEnum.USER_PLATFORM, "android");
        bundle.putString("sdk_version", FacebookSdk.Wwwwww());
        bundle.putString("fields", "gatekeepers");
        GraphRequest.Companion companion = GraphRequest.Companion;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        GraphRequest Wwwwwwwwwww2 = companion.Wwwwwwwwwww(null, String.format("app/%s", Arrays.copyOf(new Object[]{"mobile_sdk_gk"}, 1)), null);
        Wwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkk(bundle);
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return new JSONObject();
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }
}
