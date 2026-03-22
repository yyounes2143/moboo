package com.facebook.appevents.iap;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.facebook.FacebookSdk;
import com.facebook.appevents.internal.AutomaticAnalyticsLogger;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J7\u0010\u0010\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\b\u0012\u0004\u0012\u00020\u000b`\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0015\u001a\n \u0012*\u0004\u0018\u00010\u000b0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001bR\u0016\u0010!\u001a\u00020\u001f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0006\u0010 R\u0016\u0010$\u001a\u00020\"8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0010\u0010#R\u0016\u0010'\u001a\u00020%8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0005\u0010&R\u0018\u0010)\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010(¨\u0006*"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseActivityLifecycleTracker;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "context", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "purchases", "", "isSubscription", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/util/ArrayList;Z)V", "kotlin.jvm.PlatformType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "TAG", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isTracking", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Boolean;", "hasBillingService", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "hasBillingActivity", "Landroid/content/ServiceConnection;", "Landroid/content/ServiceConnection;", "serviceConnection", "Landroid/app/Application$ActivityLifecycleCallbacks;", "Landroid/app/Application$ActivityLifecycleCallbacks;", "callbacks", "Landroid/content/Intent;", "Landroid/content/Intent;", "intent", "Ljava/lang/Object;", "inAppBillingObj", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class InAppPurchaseActivityLifecycleTracker {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Object f6345Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Intent f6346Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Application.ActivityLifecycleCallbacks f6347Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static ServiceConnection f6348Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Boolean f6349Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Boolean f6350Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final InAppPurchaseActivityLifecycleTracker INSTANCE = new InAppPurchaseActivityLifecycleTracker();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6352Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = InAppPurchaseActivityLifecycleTracker.class.getCanonicalName();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicBoolean f6351Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(false);

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        InAppPurchaseActivityLifecycleTracker inAppPurchaseActivityLifecycleTracker = INSTANCE;
        inAppPurchaseActivityLifecycleTracker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (!Intrinsics.areEqual(f6350Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Boolean.FALSE) && AutomaticAnalyticsLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            inAppPurchaseActivityLifecycleTracker.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (f6351Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.compareAndSet(false, true)) {
            Context Wwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwww2 instanceof Application) {
                Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = f6347Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                activityLifecycleCallbacks.getClass();
                ((Application) Wwwwwwwwwwwwwwwwwwwwwww2).registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
                Intent intent = f6346Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                intent.getClass();
                ServiceConnection serviceConnection = f6348Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                serviceConnection.getClass();
                Wwwwwwwwwwwwwwwwwwwwwww2.bindService(intent, serviceConnection, 1);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, ArrayList<String> arrayList, boolean z) {
        if (!arrayList.isEmpty()) {
            HashMap hashMap = new HashMap();
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                String str = arrayList.get(i);
                i++;
                String str2 = str;
                try {
                    String string = new JSONObject(str2).getString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
                    hashMap.put(string, str2);
                    arrayList2.add(string);
                } catch (JSONException unused) {
                }
            }
            InAppPurchaseEventManager inAppPurchaseEventManager = InAppPurchaseEventManager.INSTANCE;
            for (Map.Entry<String, String> entry : InAppPurchaseEventManager.Wwwwwwwwwwwwwwwwwwwwwwww(context, arrayList2, f6345Wwwwwwwwwwwwwwwwwwwwwwwwwww, z).entrySet()) {
                String value = entry.getValue();
                String str3 = (String) hashMap.get(entry.getKey());
                if (str3 != null) {
                    AutomaticAnalyticsLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str3, value, z);
                }
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        if (f6350Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            boolean z2 = false;
            if (InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.android.vending.billing.IInAppBillingService$Stub") != null) {
                z = true;
            } else {
                z = false;
            }
            Boolean valueOf = Boolean.valueOf(z);
            f6350Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = valueOf;
            if (Intrinsics.areEqual(valueOf, Boolean.FALSE)) {
                return;
            }
            if (InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.android.billingclient.api.ProxyBillingActivity") != null) {
                z2 = true;
            }
            f6349Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Boolean.valueOf(z2);
            InAppPurchaseEventManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            f6346Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new Intent("com.android.vending.billing.InAppBillingService.BIND").setPackage("com.android.vending");
            f6348Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ServiceConnection() { // from class: com.facebook.appevents.iap.InAppPurchaseActivityLifecycleTracker$initializeIfNotInitialized$1
                @Override // android.content.ServiceConnection
                public void onServiceConnected(@NotNull ComponentName componentName, @NotNull IBinder iBinder) {
                    InAppPurchaseActivityLifecycleTracker inAppPurchaseActivityLifecycleTracker = InAppPurchaseActivityLifecycleTracker.INSTANCE;
                    InAppPurchaseEventManager inAppPurchaseEventManager = InAppPurchaseEventManager.INSTANCE;
                    InAppPurchaseActivityLifecycleTracker.f6345Wwwwwwwwwwwwwwwwwwwwwwwwwww = InAppPurchaseEventManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww(), iBinder);
                }

                @Override // android.content.ServiceConnection
                public void onServiceDisconnected(@NotNull ComponentName componentName) {
                }
            };
            f6347Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new InAppPurchaseActivityLifecycleTracker$initializeIfNotInitialized$2();
        }
    }
}
