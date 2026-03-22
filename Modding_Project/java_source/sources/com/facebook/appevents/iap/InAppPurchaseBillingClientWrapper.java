package com.facebook.appevents.iap;

import android.content.Context;
import androidx.annotation.RestrictTo;
import com.facebook.appevents.iap.InAppPurchaseBillingClientWrapper;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u001b\n\u0002\u0010#\n\u0002\b\b\b\u0007\u0018\u0000 A2\u00020\u0001:\u0005BACDEB\u00ad\u0001\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0005\u0012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0005\u0012\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0005\u0012\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u0005\u0012\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u0005\u0012\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\u0005\u0012\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u0005\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0011\u001a\u00020\r\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\r\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u001d\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001e\u0010\u001fJ\u001d\u0010!\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u001b¢\u0006\u0004\b!\u0010\u001fJ/\u0010%\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u00192\u000e\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\"2\u0006\u0010$\u001a\u00020\u001bH\u0002¢\u0006\u0004\b%\u0010&J\u001f\u0010'\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u001bH\u0002¢\u0006\u0004\b'\u0010\u001fJ\u000f\u0010(\u001a\u00020\u001dH\u0002¢\u0006\u0004\b(\u0010)R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u0010\u0004\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0018\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u0010/R\u0018\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u0010/R\u0018\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u0010/R\u0018\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u0010/R\u0018\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u0010/R\u0018\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u0010/R\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00107R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u00107R\u0014\u0010\u0011\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u00107R\u0014\u0010\u0012\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u00107R\u0014\u0010\u0013\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u00107R\u0014\u0010\u0014\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u00107R\u0014\u0010\u0016\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\u001c\u0010@\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190>8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010?¨\u0006F"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;", "", "Landroid/content/Context;", "context", "billingClient", "Ljava/lang/Class;", "billingClientClazz", "purchaseResultClazz", "purchaseClazz", "skuDetailsClazz", "purchaseHistoryRecordClazz", "skuDetailsResponseListenerClazz", "purchaseHistoryResponseListenerClazz", "Ljava/lang/reflect/Method;", "queryPurchasesMethod", "getPurchaseListMethod", "getOriginalJsonMethod", "getOriginalJsonSkuMethod", "getOriginalJsonPurchaseHistoryMethod", "querySkuDetailsAsyncMethod", "queryPurchaseHistoryAsyncMethod", "Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;", "inAppPurchaseSkuDetailsWrapper", "<init>", "(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;)V", "", "skuType", "Ljava/lang/Runnable;", "queryPurchaseHistoryRunnable", "", "Wwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/Runnable;)V", "querySkuRunnable", "Wwwwwwwwwwwwwwwwwwww", "", "skuIDs", "runnable", "Wwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V", "Wwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Object;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Class;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/reflect/Method;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwww", "Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;", "", "Ljava/util/Set;", "historyPurchaseSet", "Companion", "BillingClientStateListenerWrapper", "PurchaseHistoryResponseListenerWrapper", "PurchasesUpdatedListenerWrapper", "SkuDetailsResponseListenerWrapper", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class InAppPurchaseBillingClientWrapper {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public static InAppPurchaseBillingClientWrapper f6356Wwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<String> f6358Wwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InAppPurchaseSkuDetailsWrapper f6359Wwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Method f6360Wwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Method f6361Wwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Method f6362Wwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Method f6363Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Method f6364Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Method f6365Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Method f6366Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Class<?> f6367Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Class<?> f6368Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Class<?> f6369Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Class<?> f6370Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Class<?> f6371Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Class<?> f6372Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Class<?> f6373Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Object f6374Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f6375Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicBoolean f6357Wwwwwwwwwwwwwwww = new AtomicBoolean(false);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicBoolean f6355Wwwwwwwwwwwwww = new AtomicBoolean(false);
    @NotNull

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<String, JSONObject> f6354Wwwwwwwwwwwww = new ConcurrentHashMap();
    @NotNull

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public static final Map<String, JSONObject> f6353Wwwwwwwwwwww = new ConcurrentHashMap();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\tH\u0096\u0002¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$BillingClientStateListenerWrapper;", "Ljava/lang/reflect/InvocationHandler;", "()V", "invoke", "", "proxy", "m", "Ljava/lang/reflect/Method;", "args", "", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class BillingClientStateListenerWrapper implements InvocationHandler {
        @Override // java.lang.reflect.InvocationHandler
        @Nullable
        public Object invoke(@NotNull Object obj, @NotNull Method method, @Nullable Object[] objArr) {
            if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                return null;
            }
            try {
                if (Intrinsics.areEqual(method.getName(), "onBillingSetupFinished")) {
                    InAppPurchaseBillingClientWrapper.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().set(true);
                } else if (StringsKt.endsWith$default(method.getName(), "onBillingServiceDisconnected", false, 2, (Object) null)) {
                    InAppPurchaseBillingClientWrapper.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().set(false);
                }
                return null;
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                return null;
            }
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b&\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\u000e\u001a\u0004\u0018\u00010\u00012\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0011\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R#\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u00158\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR#\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u00158\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u0019\u001a\u0004\b\u001d\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b \u0010\u001fR\u0014\u0010!\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b!\u0010\u001fR\u0014\u0010\"\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b\"\u0010\u001fR\u0014\u0010#\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b#\u0010\u001fR\u0014\u0010$\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b$\u0010\u001fR\u0014\u0010%\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b%\u0010\u001fR\u0014\u0010&\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b&\u0010\u001fR\u0014\u0010'\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b'\u0010\u001fR\u0014\u0010(\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b(\u0010\u001fR\u0014\u0010)\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b)\u0010\u001fR\u0014\u0010*\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b*\u0010\u001fR\u0014\u0010+\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b+\u0010\u001fR\u0014\u0010,\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b,\u0010\u001fR\u0014\u0010-\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b-\u0010\u001fR\u0014\u0010.\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b.\u0010\u001fR\u0014\u0010/\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b/\u0010\u001fR\u0014\u00100\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b0\u0010\u001fR\u0014\u00101\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b1\u0010\u001fR\u0014\u00102\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b2\u0010\u001fR\u0014\u00103\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b3\u0010\u001fR\u0014\u00104\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b4\u0010\u001fR\u0014\u00105\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b5\u0010\u001fR\u0014\u00106\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b6\u0010\u001fR\u0014\u00107\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b7\u0010\u001fR\u0014\u00108\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b8\u0010\u001fR\u0014\u00109\u001a\u00020\u00168\u0002X\u0082T¢\u0006\u0006\n\u0004\b9\u0010\u001fR\u0014\u0010:\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010\u0012R\u0018\u0010;\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<¨\u0006="}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$Companion;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "Ljava/lang/Class;", "billingClientClazz", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isServiceConnected", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "", "", "Lorg/json/JSONObject;", "purchaseDetailsMap", "Ljava/util/Map;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/Map;", "skuDetailsMap", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "CLASSNAME_BILLING_CLIENT", "Ljava/lang/String;", "CLASSNAME_BILLING_CLIENT_BUILDER", "CLASSNAME_BILLING_CLIENT_STATE_LISTENER", "CLASSNAME_PURCHASE", "CLASSNAME_PURCHASES_RESULT", "CLASSNAME_PURCHASE_HISTORY_RECORD", "CLASSNAME_PURCHASE_HISTORY_RESPONSE_LISTENER", "CLASSNAME_PURCHASE_UPDATED_LISTENER", "CLASSNAME_SKU_DETAILS", "CLASSNAME_SKU_DETAILS_RESPONSE_LISTENER", "IN_APP", "METHOD_BUILD", "METHOD_ENABLE_PENDING_PURCHASES", "METHOD_GET_ORIGINAL_JSON", "METHOD_GET_PURCHASE_LIST", "METHOD_NEW_BUILDER", "METHOD_ON_BILLING_SERVICE_DISCONNECTED", "METHOD_ON_BILLING_SETUP_FINISHED", "METHOD_ON_PURCHASE_HISTORY_RESPONSE", "METHOD_ON_SKU_DETAILS_RESPONSE", "METHOD_QUERY_PURCHASES", "METHOD_QUERY_PURCHASE_HISTORY_ASYNC", "METHOD_QUERY_SKU_DETAILS_ASYNC", "METHOD_SET_LISTENER", "METHOD_START_CONNECTION", "PACKAGE_NAME", "PRODUCT_ID", "initialized", "instance", "Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final AtomicBoolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return InAppPurchaseBillingClientWrapper.Wwwwwwwwwwwwwwwwwwwwwww();
        }

        @NotNull
        public final Map<String, JSONObject> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return InAppPurchaseBillingClientWrapper.Wwwwwwwwwwwwwwwwwwwwwwww();
        }

        @NotNull
        public final Map<String, JSONObject> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return InAppPurchaseBillingClientWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @JvmStatic
        @Nullable
        public final synchronized InAppPurchaseBillingClientWrapper Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
            if (InAppPurchaseBillingClientWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().get()) {
                return InAppPurchaseBillingClientWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
            InAppPurchaseBillingClientWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().set(true);
            return InAppPurchaseBillingClientWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
            InAppPurchaseSkuDetailsWrapper Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InAppPurchaseSkuDetailsWrapper.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.android.billingclient.api.BillingClient");
                Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.android.billingclient.api.Purchase");
                Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.android.billingclient.api.Purchase$PurchasesResult");
                Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.android.billingclient.api.SkuDetails");
                Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.android.billingclient.api.PurchaseHistoryRecord");
                Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww7 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.android.billingclient.api.SkuDetailsResponseListener");
                Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww8 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.android.billingclient.api.PurchaseHistoryResponseListener");
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww7 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww8 != null) {
                    Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "queryPurchases", String.class);
                    Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4, "getPurchasesList", new Class[0]);
                    Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, "getOriginalJson", new Class[0]);
                    Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5, "getOriginalJson", new Class[0]);
                    Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6, "getOriginalJson", new Class[0]);
                    Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww7 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "querySkuDetailsAsync", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww7);
                    Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww8 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "queryPurchaseHistoryAsync", String.class, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww8);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww7 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww8 != null) {
                        Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww9 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww9 != null) {
                            InAppPurchaseBillingClientWrapper.Wwwwwwwwwwwwwwwwwwwwww(new InAppPurchaseBillingClientWrapper(context, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww9, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww7, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww8, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww7, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww8, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, null));
                            InAppPurchaseBillingClientWrapper Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InAppPurchaseBillingClientWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                                InAppPurchaseBillingClientWrapper.Wwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                                return;
                            }
                            throw new NullPointerException("null cannot be cast to non-null type com.facebook.appevents.iap.InAppPurchaseBillingClientWrapper");
                        }
                    }
                }
            }
        }

        public final Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Class<?> cls) {
            Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
            Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww4;
            Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.android.billingclient.api.BillingClient$Builder");
            Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.android.billingclient.api.PurchasesUpdatedListener");
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, "newBuilder", Context.class);
                Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "enablePendingPurchases", new Class[0]);
                Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "setListener", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "build", new Class[0]);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null || Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 == null || Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 == null || Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 == null || (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, null, context)) == null || (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Proxy.newProxyInstance(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.getClassLoader(), new Class[]{Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3}, new PurchasesUpdatedListenerWrapper()))) == null || (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, new Object[0])) == null) {
                    return null;
                }
                return InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww4, new Object[0]);
            }
            return null;
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\b\u0081\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J2\u0010\f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\nH\u0096\u0002¢\u0006\u0004\b\f\u0010\rJ\u001b\u0010\u0011\u001a\u00020\u00102\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$PurchaseHistoryResponseListenerWrapper;", "Ljava/lang/reflect/InvocationHandler;", "Ljava/lang/Runnable;", "runnable", "<init>", "(Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;Ljava/lang/Runnable;)V", "", "proxy", "Ljava/lang/reflect/Method;", FirebaseAnalytics.Param.METHOD, "", "args", "invoke", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;", "", "purchaseHistoryRecordList", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)V", "Ljava/lang/Runnable;", "getRunnable", "()Ljava/lang/Runnable;", "setRunnable", "(Ljava/lang/Runnable;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class PurchaseHistoryResponseListenerWrapper implements InvocationHandler {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Runnable f6377Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public PurchaseHistoryResponseListenerWrapper(@NotNull Runnable runnable) {
            this.f6377Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = runnable;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<?> list) {
            String str;
            if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                try {
                    for (Object obj : list) {
                        try {
                            InAppPurchaseUtils inAppPurchaseUtils = InAppPurchaseUtils.INSTANCE;
                            Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.this), InAppPurchaseBillingClientWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.this), obj, new Object[0]);
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof String) {
                                str = (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                            } else {
                                str = null;
                            }
                            if (str != null) {
                                JSONObject jSONObject = new JSONObject(str);
                                jSONObject.put("packageName", InAppPurchaseBillingClientWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.this).getPackageName());
                                if (jSONObject.has(InAppPurchaseMetaData.KEY_PRODUCT_ID)) {
                                    String string = jSONObject.getString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
                                    InAppPurchaseBillingClientWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.this).add(string);
                                    InAppPurchaseBillingClientWrapper.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().put(string, jSONObject);
                                }
                            }
                        } catch (Exception unused) {
                        }
                    }
                    this.f6377Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.run();
                } catch (Throwable th) {
                    CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                }
            }
        }

        @Override // java.lang.reflect.InvocationHandler
        @Nullable
        public Object invoke(@NotNull Object obj, @NotNull Method method, @Nullable Object[] objArr) {
            Object obj2;
            if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                return null;
            }
            try {
                if (Intrinsics.areEqual(method.getName(), "onPurchaseHistoryResponse")) {
                    if (objArr == null) {
                        obj2 = null;
                    } else {
                        obj2 = objArr[1];
                    }
                    if (obj2 != null && (obj2 instanceof List)) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((List) obj2);
                    }
                }
                return null;
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                return null;
            }
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\tH\u0096\u0002¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$PurchasesUpdatedListenerWrapper;", "Ljava/lang/reflect/InvocationHandler;", "()V", "invoke", "", "proxy", "m", "Ljava/lang/reflect/Method;", "args", "", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class PurchasesUpdatedListenerWrapper implements InvocationHandler {
        @Override // java.lang.reflect.InvocationHandler
        @Nullable
        public Object invoke(@NotNull Object obj, @NotNull Method method, @Nullable Object[] objArr) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
            return null;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\b\u0081\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J2\u0010\f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\nH\u0096\u0002¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0011\u001a\u00020\u00102\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000e¢\u0006\u0004\b\u0011\u0010\u0012R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$SkuDetailsResponseListenerWrapper;", "Ljava/lang/reflect/InvocationHandler;", "Ljava/lang/Runnable;", "runnable", "<init>", "(Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;Ljava/lang/Runnable;)V", "", "proxy", "Ljava/lang/reflect/Method;", "m", "", "args", "invoke", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;", "", "skuDetailsObjectList", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)V", "Ljava/lang/Runnable;", "getRunnable", "()Ljava/lang/Runnable;", "setRunnable", "(Ljava/lang/Runnable;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public final class SkuDetailsResponseListenerWrapper implements InvocationHandler {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Runnable f6379Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public SkuDetailsResponseListenerWrapper(@NotNull Runnable runnable) {
            this.f6379Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = runnable;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<?> list) {
            String str;
            if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                try {
                    for (Object obj : list) {
                        try {
                            InAppPurchaseUtils inAppPurchaseUtils = InAppPurchaseUtils.INSTANCE;
                            Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.Wwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.this), InAppPurchaseBillingClientWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.this), obj, new Object[0]);
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof String) {
                                str = (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                            } else {
                                str = null;
                            }
                            if (str != null) {
                                JSONObject jSONObject = new JSONObject(str);
                                if (jSONObject.has(InAppPurchaseMetaData.KEY_PRODUCT_ID)) {
                                    InAppPurchaseBillingClientWrapper.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().put(jSONObject.getString(InAppPurchaseMetaData.KEY_PRODUCT_ID), jSONObject);
                                }
                            }
                        } catch (Exception unused) {
                        }
                    }
                    this.f6379Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.run();
                } catch (Throwable th) {
                    CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                }
            }
        }

        @Override // java.lang.reflect.InvocationHandler
        @Nullable
        public Object invoke(@NotNull Object obj, @NotNull Method method, @Nullable Object[] objArr) {
            Object obj2;
            if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                return null;
            }
            try {
                if (Intrinsics.areEqual(method.getName(), "onSkuDetailsResponse")) {
                    if (objArr == null) {
                        obj2 = null;
                    } else {
                        obj2 = objArr[1];
                    }
                    if (obj2 != null && (obj2 instanceof List)) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((List) obj2);
                    }
                }
                return null;
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                return null;
            }
        }
    }

    public /* synthetic */ InAppPurchaseBillingClientWrapper(Context context, Object obj, Class cls, Class cls2, Class cls3, Class cls4, Class cls5, Class cls6, Class cls7, Method method, Method method2, Method method3, Method method4, Method method5, Method method6, Method method7, InAppPurchaseSkuDetailsWrapper inAppPurchaseSkuDetailsWrapper, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, obj, cls, cls2, cls3, cls4, cls5, cls6, cls7, method, method2, method3, method4, method5, method6, method7, inAppPurchaseSkuDetailsWrapper);
    }

    public static final void Wwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper inAppPurchaseBillingClientWrapper, Runnable runnable) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.class)) {
            return;
        }
        try {
            inAppPurchaseBillingClientWrapper.Wwwwwwwwwwwwwwww("inapp", new ArrayList(inAppPurchaseBillingClientWrapper.f6358Wwwwwwwwwwwwwwwww), runnable);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseBillingClientWrapper.class);
        }
    }

    public static final /* synthetic */ void Wwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper inAppPurchaseBillingClientWrapper) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.class)) {
            return;
        }
        try {
            inAppPurchaseBillingClientWrapper.Wwwwwwwwwwwwwww();
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseBillingClientWrapper.class);
        }
    }

    public static final /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper inAppPurchaseBillingClientWrapper) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.class)) {
            return;
        }
        try {
            f6356Wwwwwwwwwwwwwww = inAppPurchaseBillingClientWrapper;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseBillingClientWrapper.class);
        }
    }

    public static final /* synthetic */ AtomicBoolean Wwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.class)) {
            return null;
        }
        try {
            return f6355Wwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseBillingClientWrapper.class);
            return null;
        }
    }

    public static final /* synthetic */ Map Wwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.class)) {
            return null;
        }
        try {
            return f6353Wwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseBillingClientWrapper.class);
            return null;
        }
    }

    public static final /* synthetic */ Class Wwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper inAppPurchaseBillingClientWrapper) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.class)) {
            return null;
        }
        try {
            return inAppPurchaseBillingClientWrapper.f6370Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseBillingClientWrapper.class);
            return null;
        }
    }

    public static final /* synthetic */ Class Wwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper inAppPurchaseBillingClientWrapper) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.class)) {
            return null;
        }
        try {
            return inAppPurchaseBillingClientWrapper.f6369Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseBillingClientWrapper.class);
            return null;
        }
    }

    public static final /* synthetic */ Map Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.class)) {
            return null;
        }
        try {
            return f6354Wwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseBillingClientWrapper.class);
            return null;
        }
    }

    public static final /* synthetic */ InAppPurchaseBillingClientWrapper Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.class)) {
            return null;
        }
        try {
            return f6356Wwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseBillingClientWrapper.class);
            return null;
        }
    }

    public static final /* synthetic */ AtomicBoolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.class)) {
            return null;
        }
        try {
            return f6357Wwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseBillingClientWrapper.class);
            return null;
        }
    }

    public static final /* synthetic */ Set Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper inAppPurchaseBillingClientWrapper) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.class)) {
            return null;
        }
        try {
            return inAppPurchaseBillingClientWrapper.f6358Wwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseBillingClientWrapper.class);
            return null;
        }
    }

    public static final /* synthetic */ Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper inAppPurchaseBillingClientWrapper) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.class)) {
            return null;
        }
        try {
            return inAppPurchaseBillingClientWrapper.f6363Wwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseBillingClientWrapper.class);
            return null;
        }
    }

    public static final /* synthetic */ Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper inAppPurchaseBillingClientWrapper) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.class)) {
            return null;
        }
        try {
            return inAppPurchaseBillingClientWrapper.f6362Wwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseBillingClientWrapper.class);
            return null;
        }
    }

    public static final /* synthetic */ Context Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper inAppPurchaseBillingClientWrapper) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.class)) {
            return null;
        }
        try {
            return inAppPurchaseBillingClientWrapper.f6375Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseBillingClientWrapper.class);
            return null;
        }
    }

    public final void Wwwwwwwwwwwwwww() {
        Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.android.billingclient.api.BillingClientStateListener");
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null || (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6373Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "startConnection", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) == null) {
                    return;
                }
                InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6373Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f6374Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Proxy.newProxyInstance(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getClassLoader(), new Class[]{Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2}, new BillingClientStateListenerWrapper()));
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwww(String str, List<String> list, Runnable runnable) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            Object newProxyInstance = Proxy.newProxyInstance(this.f6368Wwwwwwwwwwwwwwwwwwwwwwwwwww.getClassLoader(), new Class[]{this.f6368Wwwwwwwwwwwwwwwwwwwwwwwwwww}, new SkuDetailsResponseListenerWrapper(runnable));
            Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f6359Wwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, list);
            InAppPurchaseUtils inAppPurchaseUtils = InAppPurchaseUtils.INSTANCE;
            InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6373Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f6361Wwwwwwwwwwwwwwwwwwww, this.f6374Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, newProxyInstance);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final void Wwwwwwwwwwwwwwwww(String str, Runnable runnable) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            Object newProxyInstance = Proxy.newProxyInstance(this.f6367Wwwwwwwwwwwwwwwwwwwwwwwwww.getClassLoader(), new Class[]{this.f6367Wwwwwwwwwwwwwwwwwwwwwwwwww}, new PurchaseHistoryResponseListenerWrapper(runnable));
            InAppPurchaseUtils inAppPurchaseUtils = InAppPurchaseUtils.INSTANCE;
            InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6373Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f6360Wwwwwwwwwwwwwwwwwww, this.f6374Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str, newProxyInstance);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull final Runnable runnable) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            Wwwwwwwwwwwwwwwww(str, new Runnable() { // from class: Wwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    InAppPurchaseBillingClientWrapper.Wwwwwwwwwwwwwwwwww(InAppPurchaseBillingClientWrapper.this, runnable);
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull Runnable runnable) {
        List list;
        String str2;
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                InAppPurchaseUtils inAppPurchaseUtils = InAppPurchaseUtils.INSTANCE;
                Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6372Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f6365Wwwwwwwwwwwwwwwwwwwwwwww, InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6373Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f6366Wwwwwwwwwwwwwwwwwwwwwwwww, this.f6374Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "inapp"), new Object[0]);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof List) {
                    list = (List) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                } else {
                    list = null;
                }
                if (list != null) {
                    try {
                        ArrayList arrayList = new ArrayList();
                        for (Object obj : list) {
                            InAppPurchaseUtils inAppPurchaseUtils2 = InAppPurchaseUtils.INSTANCE;
                            Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6371Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f6364Wwwwwwwwwwwwwwwwwwwwwww, obj, new Object[0]);
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 instanceof String) {
                                str2 = (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
                            } else {
                                str2 = null;
                            }
                            if (str2 != null) {
                                JSONObject jSONObject = new JSONObject(str2);
                                if (jSONObject.has(InAppPurchaseMetaData.KEY_PRODUCT_ID)) {
                                    String string = jSONObject.getString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
                                    arrayList.add(string);
                                    f6354Wwwwwwwwwwwww.put(string, jSONObject);
                                }
                            }
                        }
                        Wwwwwwwwwwwwwwww(str, arrayList, runnable);
                    } catch (JSONException unused) {
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    public InAppPurchaseBillingClientWrapper(Context context, Object obj, Class<?> cls, Class<?> cls2, Class<?> cls3, Class<?> cls4, Class<?> cls5, Class<?> cls6, Class<?> cls7, Method method, Method method2, Method method3, Method method4, Method method5, Method method6, Method method7, InAppPurchaseSkuDetailsWrapper inAppPurchaseSkuDetailsWrapper) {
        this.f6375Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        this.f6374Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
        this.f6373Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
        this.f6372Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls2;
        this.f6371Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls3;
        this.f6370Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls4;
        this.f6369Wwwwwwwwwwwwwwwwwwwwwwwwwwww = cls5;
        this.f6368Wwwwwwwwwwwwwwwwwwwwwwwwwww = cls6;
        this.f6367Wwwwwwwwwwwwwwwwwwwwwwwwww = cls7;
        this.f6366Wwwwwwwwwwwwwwwwwwwwwwwww = method;
        this.f6365Wwwwwwwwwwwwwwwwwwwwwwww = method2;
        this.f6364Wwwwwwwwwwwwwwwwwwwwwww = method3;
        this.f6363Wwwwwwwwwwwwwwwwwwwwww = method4;
        this.f6362Wwwwwwwwwwwwwwwwwwwww = method5;
        this.f6361Wwwwwwwwwwwwwwwwwwww = method6;
        this.f6360Wwwwwwwwwwwwwwwwwww = method7;
        this.f6359Wwwwwwwwwwwwwwwwww = inAppPurchaseSkuDetailsWrapper;
        this.f6358Wwwwwwwwwwwwwwwww = new CopyOnWriteArraySet();
    }
}
