package com.facebook.appevents.iap;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.IBinder;
import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationCompat;
import com.facebook.FacebookSdk;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\b\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b\b\u0010\tJM\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u0012\u0010\u0013J1\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\f2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\u0014\u0010\u0015J1\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\f2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\u0016\u0010\u0015J1\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\f2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\u0017\u0010\u0015J\u000f\u0010\u0019\u001a\u00020\u0018H\u0007¢\u0006\u0004\b\u0019\u0010\u0003J\u0015\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u000b¢\u0006\u0004\b\u001b\u0010\u001cJM\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u001d\u0010\u0013J3\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u001e2\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\fH\u0002¢\u0006\u0004\b\u001f\u0010 J#\u0010\"\u001a\u00020\u00182\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u0011H\u0002¢\u0006\u0004\b\"\u0010#J)\u0010%\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u00012\u0006\u0010$\u001a\u00020\u000bH\u0002¢\u0006\u0004\b%\u0010&J9\u0010'\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\f2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u00012\u0006\u0010$\u001a\u00020\u000bH\u0002¢\u0006\u0004\b'\u0010(J7\u0010)\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\u000bH\u0002¢\u0006\u0004\b)\u0010(J7\u0010+\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\f2\u0016\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\fH\u0002¢\u0006\u0004\b+\u0010,J%\u00101\u001a\u0004\u0018\u0001002\n\u0010.\u001a\u0006\u0012\u0002\b\u00030-2\u0006\u0010/\u001a\u00020\u000bH\u0002¢\u0006\u0004\b1\u00102J%\u00104\u001a\b\u0012\u0002\b\u0003\u0018\u00010-2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00103\u001a\u00020\u000bH\u0002¢\u0006\u0004\b4\u00105JC\u00109\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00103\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020\u000b2\b\u00106\u001a\u0004\u0018\u00010\u00012\u000e\u00108\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000107H\u0002¢\u0006\u0004\b9\u0010:R0\u0010>\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u0002000;j\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u000200`<8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010=R8\u0010?\u001a&\u0012\u0004\u0012\u00020\u000b\u0012\b\u0012\u0006\u0012\u0002\b\u00030-0;j\u0012\u0012\u0004\u0012\u00020\u000b\u0012\b\u0012\u0006\u0012\u0002\b\u00030-`<8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010=R\u001c\u0010B\u001a\n @*\u0004\u0018\u00010\u000b0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010AR\u001c\u0010E\u001a\n @*\u0004\u0018\u00010C0C8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u0010DR\u001c\u0010F\u001a\n @*\u0004\u0018\u00010C0C8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u0010D¨\u0006G"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseEventManager;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Landroid/os/IBinder;", NotificationCompat.CATEGORY_SERVICE, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/Object;", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "skuList", "inAppBillingObj", "", "isSubscription", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "skuDetail", "Wwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "Wwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwww", "(Ljava/util/ArrayList;)Ljava/util/Map;", "skuDetailsMap", "Wwwwwwwwwwwwwwwwww", "(Ljava/util/Map;)V", "type", "Wwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "purchases", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/ArrayList;)Ljava/util/ArrayList;", "Ljava/lang/Class;", "classObj", "methodName", "Ljava/lang/reflect/Method;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;", "className", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;", "obj", "", "args", "Wwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "Ljava/util/HashMap;", "methodMap", "classMap", "kotlin.jvm.PlatformType", "Ljava/lang/String;", "PACKAGE_NAME", "Landroid/content/SharedPreferences;", "Landroid/content/SharedPreferences;", "skuDetailSharedPrefs", "purchaseInappSharedPrefs", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class InAppPurchaseEventManager {
    @NotNull
    public static final InAppPurchaseEventManager INSTANCE = new InAppPurchaseEventManager();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final HashMap<String, Method> f6384Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final HashMap<String, Class<?>> f6383Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6382Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getPackageName();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final SharedPreferences f6381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSharedPreferences("com.facebook.internal.SKU_DETAILS", 0);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final SharedPreferences f6380Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSharedPreferences("com.facebook.internal.PURCHASE", 0);

    @JvmStatic
    @NotNull
    public static final Map<String, String> Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull ArrayList<String> arrayList, @Nullable Object obj, boolean z) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseEventManager.class)) {
            return null;
        }
        try {
            Map<String, String> Wwwwwwwwwwwwwwwwwww2 = INSTANCE.Wwwwwwwwwwwwwwwwwww(arrayList);
            ArrayList<String> arrayList2 = new ArrayList<>();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                String str = arrayList.get(i);
                i++;
                String str2 = str;
                if (!Wwwwwwwwwwwwwwwwwww2.containsKey(str2)) {
                    arrayList2.add(str2);
                }
            }
            Wwwwwwwwwwwwwwwwwww2.putAll(INSTANCE.Wwwwwwwwwwwwwwwwwwwwwww(context, arrayList2, obj, z));
            return Wwwwwwwwwwwwwwwwwww2;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseEventManager.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final ArrayList<String> Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @Nullable Object obj) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseEventManager.class)) {
            return null;
        }
        try {
            InAppPurchaseEventManager inAppPurchaseEventManager = INSTANCE;
            return inAppPurchaseEventManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inAppPurchaseEventManager.Wwwwwwwwwwwwwwwwwwwwwwwwwww(context, obj, "subs"));
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseEventManager.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final ArrayList<String> Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @Nullable Object obj) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseEventManager.class)) {
            return null;
        }
        try {
            InAppPurchaseEventManager inAppPurchaseEventManager = INSTANCE;
            return inAppPurchaseEventManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inAppPurchaseEventManager.Wwwwwwwwwwwwwwwwwwwwwwwwwww(context, obj, "inapp"));
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseEventManager.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final ArrayList<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @Nullable Object obj) {
        InAppPurchaseEventManager inAppPurchaseEventManager;
        Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseEventManager.class)) {
            return null;
        }
        try {
            ArrayList<String> arrayList = new ArrayList<>();
            if (obj != null && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = (inAppPurchaseEventManager = INSTANCE).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, "com.android.vending.billing.IInAppBillingService")) != null && inAppPurchaseEventManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "getPurchaseHistory") != null) {
                return inAppPurchaseEventManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(inAppPurchaseEventManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, obj, "inapp"));
            }
            return arrayList;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseEventManager.class);
            return null;
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseEventManager.class)) {
            try {
                long currentTimeMillis = System.currentTimeMillis() / 1000;
                SharedPreferences sharedPreferences = f6381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                long j = sharedPreferences.getLong("LAST_CLEARED_TIME", 0L);
                if (j == 0) {
                    sharedPreferences.edit().putLong("LAST_CLEARED_TIME", currentTimeMillis).apply();
                } else if (currentTimeMillis - j > 604800) {
                    sharedPreferences.edit().clear().putLong("LAST_CLEARED_TIME", currentTimeMillis).apply();
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseEventManager.class);
            }
        }
    }

    @JvmStatic
    @Nullable
    public static final Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @Nullable IBinder iBinder) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseEventManager.class)) {
            return null;
        }
        try {
            return INSTANCE.Wwwwwwwwwwwwwwwwwwwww(context, "com.android.vending.billing.IInAppBillingService$Stub", "asInterface", null, new Object[]{iBinder});
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseEventManager.class);
            return null;
        }
    }

    public final void Wwwwwwwwwwwwwwwwww(Map<String, String> map) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            SharedPreferences.Editor edit = f6381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.edit();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                edit.putString(entry.getKey(), currentTimeMillis + ';' + entry.getValue());
            }
            edit.apply();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final Map<String, String> Wwwwwwwwwwwwwwwwwww(ArrayList<String> arrayList) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                String str = arrayList.get(i);
                i++;
                String str2 = str;
                String string = f6381Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getString(str2, null);
                if (string != null) {
                    List split$default = StringsKt.split$default((CharSequence) string, new String[]{";"}, false, 2, 2, (Object) null);
                    if (currentTimeMillis - Long.parseLong((String) split$default.get(0)) < 43200) {
                        linkedHashMap.put(str2, split$default.get(1));
                    }
                }
            }
            return linkedHashMap;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwww(Context context, Object obj, String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this) || obj == null) {
            return false;
        }
        try {
            try {
                Object Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww(context, "com.android.vending.billing.IInAppBillingService", "isBillingSupported", obj, new Object[]{3, f6382Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str});
                if (Wwwwwwwwwwwwwwwwwwwww2 != null) {
                    if (((Integer) Wwwwwwwwwwwwwwwwwwwww2).intValue() == 0) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                th = th;
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                return false;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final Object Wwwwwwwwwwwwwwwwwwwww(Context context, String str, String str2, Object obj, Object[] objArr) {
        Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null || (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, str2)) == null) {
                return null;
            }
            InAppPurchaseUtils inAppPurchaseUtils = InAppPurchaseUtils.INSTANCE;
            return InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, obj, Arrays.copyOf(objArr, objArr.length));
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            String optString = new JSONObject(str).optString("freeTrialPeriod");
            if (optString != null) {
                if (optString.length() > 0) {
                    return true;
                }
            }
            return false;
        } catch (JSONException unused) {
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }

    public final Map<String, String> Wwwwwwwwwwwwwwwwwwwwwww(Context context, ArrayList<String> arrayList, Object obj, boolean z) {
        Object obj2;
        int size;
        int i = 0;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            Map<String, String> linkedHashMap = new LinkedHashMap<>();
            if (obj != null && !arrayList.isEmpty()) {
                Bundle bundle = new Bundle();
                bundle.putStringArrayList("ITEM_ID_LIST", arrayList);
                if (z) {
                    obj2 = "subs";
                } else {
                    obj2 = "inapp";
                }
                Object Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww(context, "com.android.vending.billing.IInAppBillingService", "getSkuDetails", obj, new Object[]{3, f6382Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, obj2, bundle});
                if (Wwwwwwwwwwwwwwwwwwwww2 != null) {
                    Bundle bundle2 = (Bundle) Wwwwwwwwwwwwwwwwwwwww2;
                    if (bundle2.getInt("RESPONSE_CODE") == 0) {
                        ArrayList<String> stringArrayList = bundle2.getStringArrayList("DETAILS_LIST");
                        if (stringArrayList != null && arrayList.size() == stringArrayList.size() && arrayList.size() - 1 >= 0) {
                            while (true) {
                                int i2 = i + 1;
                                linkedHashMap.put(arrayList.get(i), stringArrayList.get(i));
                                if (i2 > size) {
                                    break;
                                }
                                i = i2;
                            }
                        }
                        Wwwwwwwwwwwwwwwwww(linkedHashMap);
                    }
                }
            }
            return linkedHashMap;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0066 A[EDGE_INSN: B:30:0x0066->B:25:0x0066 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList<java.lang.String> Wwwwwwwwwwwwwwwwwwwwwwwwwww(android.content.Context r15, java.lang.Object r16, java.lang.String r17) {
        /*
            r14 = this;
            r0 = 3
            r1 = 0
            boolean r2 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r14)
            r3 = 0
            if (r2 == 0) goto La
            return r3
        La:
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L5c
            r2.<init>()     // Catch: java.lang.Throwable -> L5c
            if (r16 != 0) goto L12
            goto L66
        L12:
            boolean r4 = r14.Wwwwwwwwwwwwwwwwwwww(r15, r16, r17)     // Catch: java.lang.Throwable -> L5c
            if (r4 == 0) goto L66
            r5 = r1
            r4 = r3
        L1a:
            java.lang.Integer r6 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L5c
            r7 = 4
            java.lang.Object[] r13 = new java.lang.Object[r7]     // Catch: java.lang.Throwable -> L5c
            r13[r1] = r6     // Catch: java.lang.Throwable -> L5c
            java.lang.String r6 = com.facebook.appevents.iap.InAppPurchaseEventManager.f6382Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L5c
            r7 = 1
            r13[r7] = r6     // Catch: java.lang.Throwable -> L5c
            r6 = 2
            r13[r6] = r17     // Catch: java.lang.Throwable -> L5c
            r13[r0] = r4     // Catch: java.lang.Throwable -> L5c
            java.lang.String r10 = "com.android.vending.billing.IInAppBillingService"
            java.lang.String r11 = "getPurchases"
            r8 = r14
            r9 = r15
            r12 = r16
            java.lang.Object r4 = r8.Wwwwwwwwwwwwwwwwwwwww(r9, r10, r11, r12, r13)     // Catch: java.lang.Throwable -> L5c
            if (r4 == 0) goto L5f
            android.os.Bundle r4 = (android.os.Bundle) r4     // Catch: java.lang.Throwable -> L5c
            java.lang.String r6 = "RESPONSE_CODE"
            int r6 = r4.getInt(r6)     // Catch: java.lang.Throwable -> L5c
            if (r6 != 0) goto L5f
            java.lang.String r6 = "INAPP_PURCHASE_DATA_LIST"
            java.util.ArrayList r6 = r4.getStringArrayList(r6)     // Catch: java.lang.Throwable -> L5c
            if (r6 == 0) goto L66
            int r7 = r6.size()     // Catch: java.lang.Throwable -> L5c
            int r5 = r5 + r7
            r2.addAll(r6)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r6 = "INAPP_CONTINUATION_TOKEN"
            java.lang.String r4 = r4.getString(r6)     // Catch: java.lang.Throwable -> L5c
            goto L60
        L5c:
            r0 = move-exception
            r15 = r0
            goto L67
        L5f:
            r4 = r3
        L60:
            r6 = 30
            if (r5 >= r6) goto L66
            if (r4 != 0) goto L1a
        L66:
            return r2
        L67:
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r15, r14)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.iap.InAppPurchaseEventManager.Wwwwwwwwwwwwwwwwwwwwwwwwwww(android.content.Context, java.lang.Object, java.lang.String):java.util.ArrayList");
    }

    public final ArrayList<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Object obj, String str) {
        ArrayList<String> stringArrayList;
        int i = 0;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            ArrayList<String> arrayList = new ArrayList<>();
            if (Wwwwwwwwwwwwwwwwwwww(context, obj, str)) {
                int i2 = 0;
                boolean z = false;
                String str2 = null;
                while (true) {
                    Bundle bundle = new Bundle();
                    Object[] objArr = new Object[5];
                    objArr[i] = 6;
                    objArr[1] = f6382Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    objArr[2] = str;
                    objArr[3] = str2;
                    objArr[4] = bundle;
                    Object Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww(context, "com.android.vending.billing.IInAppBillingService", "getPurchaseHistory", obj, objArr);
                    if (Wwwwwwwwwwwwwwwwwwwww2 != null) {
                        long currentTimeMillis = System.currentTimeMillis() / 1000;
                        Bundle bundle2 = (Bundle) Wwwwwwwwwwwwwwwwwwwww2;
                        if (bundle2.getInt("RESPONSE_CODE") == 0 && (stringArrayList = bundle2.getStringArrayList("INAPP_PURCHASE_DATA_LIST")) != null) {
                            int size = stringArrayList.size();
                            int i3 = i;
                            while (true) {
                                if (i3 >= size) {
                                    break;
                                }
                                String str3 = stringArrayList.get(i3);
                                i3++;
                                String str4 = str3;
                                if (currentTimeMillis - (new JSONObject(str4).getLong("purchaseTime") / 1000) > 1200) {
                                    z = true;
                                    break;
                                }
                                arrayList.add(str4);
                                i2++;
                            }
                            str2 = bundle2.getString("INAPP_CONTINUATION_TOKEN");
                            if (i2 < 30 || str2 == null || z) {
                                break;
                                break;
                            }
                            i = 0;
                        }
                    }
                    str2 = null;
                    if (i2 < 30) {
                        break;
                    }
                    i = 0;
                }
            }
            return arrayList;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<?> cls, String str) {
        Class[] clsArr;
        Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            HashMap<String, Method> hashMap = f6384Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Method method = hashMap.get(str);
            if (method != null) {
                return method;
            }
            int hashCode = str.hashCode();
            Class cls2 = Integer.TYPE;
            switch (hashCode) {
                case -1801122596:
                    if (str.equals("getPurchases")) {
                        clsArr = new Class[]{cls2, String.class, String.class, String.class};
                        break;
                    }
                    clsArr = null;
                    break;
                case -1450694211:
                    if (!str.equals("isBillingSupported")) {
                        clsArr = null;
                        break;
                    } else {
                        clsArr = new Class[]{cls2, String.class, String.class};
                        break;
                    }
                case -1123215065:
                    if (!str.equals("asInterface")) {
                        clsArr = null;
                        break;
                    } else {
                        clsArr = new Class[]{IBinder.class};
                        break;
                    }
                case -594356707:
                    if (str.equals("getPurchaseHistory")) {
                        clsArr = new Class[]{cls2, String.class, String.class, String.class, Bundle.class};
                        break;
                    } else {
                        clsArr = null;
                        break;
                    }
                case -573310373:
                    if (!str.equals("getSkuDetails")) {
                        clsArr = null;
                        break;
                    } else {
                        clsArr = new Class[]{cls2, String.class, String.class, Bundle.class};
                        break;
                    }
                default:
                    clsArr = null;
                    break;
            }
            if (clsArr == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, str, null);
            } else {
                InAppPurchaseUtils inAppPurchaseUtils = InAppPurchaseUtils.INSTANCE;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                hashMap.put(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            HashMap<String, Class<?>> hashMap = f6383Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Class<?> cls = hashMap.get(str);
            if (cls != null) {
                return cls;
            }
            Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                hashMap.put(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final ArrayList<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ArrayList<String> arrayList) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            ArrayList<String> arrayList2 = new ArrayList<>();
            SharedPreferences.Editor edit = f6380Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.edit();
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                String str = arrayList.get(i);
                i++;
                String str2 = str;
                try {
                    JSONObject jSONObject = new JSONObject(str2);
                    String string = jSONObject.getString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
                    long j = jSONObject.getLong("purchaseTime");
                    String string2 = jSONObject.getString("purchaseToken");
                    if (currentTimeMillis - (j / 1000) <= 86400 && !Intrinsics.areEqual(f6380Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getString(string, ""), string2)) {
                        edit.putString(string, string2);
                        arrayList2.add(str2);
                    }
                } catch (JSONException unused) {
                }
            }
            edit.apply();
            return arrayList2;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }
}
