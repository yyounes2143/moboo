package com.facebook.appevents.iap;

import androidx.annotation.RestrictTo;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.lang.reflect.Method;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\r\b\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB?\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\u000bJ+\u0010\u0010\u001a\u0004\u0018\u00010\u00012\b\u0010\r\u001a\u0004\u0018\u00010\f2\u0010\u0010\u000f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\f\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0013R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0007\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0018R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0018R\u0014\u0010\t\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;", "", "Ljava/lang/Class;", "skuDetailsParamsClazz", "builderClazz", "Ljava/lang/reflect/Method;", "newBuilderMethod", "setTypeMethod", "setSkusListMethod", "buildMethod", "<init>", "(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V", "", "skuType", "", "skuIDs", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Class;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/Class;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/reflect/Method;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class InAppPurchaseSkuDetailsWrapper {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicBoolean f6389Wwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(false);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static InAppPurchaseSkuDetailsWrapper f6390Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Method f6391Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Method f6392Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Method f6393Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Method f6394Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Class<?> f6395Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Class<?> f6396Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0003R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u000bR\u0014\u0010\r\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\u000bR\u0014\u0010\u000f\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u000bR\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper$Companion;", "", "<init>", "()V", "Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "CLASSNAME_SKU_DETAILS_PARAMS", "Ljava/lang/String;", "CLASSNAME_SKU_DETAILS_PARAMS_BUILDER", "METHOD_BUILD", "METHOD_NEW_BUILDER", "METHOD_SET_SKU_LIST", "METHOD_SET_TYPE", "Ljava/util/concurrent/atomic/AtomicBoolean;", "initialized", "Ljava/util/concurrent/atomic/AtomicBoolean;", "instance", "Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @Nullable
        public final InAppPurchaseSkuDetailsWrapper Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (InAppPurchaseSkuDetailsWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get()) {
                return InAppPurchaseSkuDetailsWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            InAppPurchaseSkuDetailsWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().set(true);
            return InAppPurchaseSkuDetailsWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.android.billingclient.api.SkuDetailsParams");
            Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("com.android.billingclient.api.SkuDetailsParams$Builder");
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "newBuilder", new Class[0]);
                Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, "setType", String.class);
                Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, "setSkusList", List.class);
                Method Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, "build", new Class[0]);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 != null) {
                    InAppPurchaseSkuDetailsWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new InAppPurchaseSkuDetailsWrapper(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5));
                }
            }
        }

        public Companion() {
        }
    }

    public InAppPurchaseSkuDetailsWrapper(@NotNull Class<?> cls, @NotNull Class<?> cls2, @NotNull Method method, @NotNull Method method2, @NotNull Method method3, @NotNull Method method4) {
        this.f6396Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
        this.f6395Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls2;
        this.f6394Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = method;
        this.f6393Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = method2;
        this.f6392Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = method3;
        this.f6391Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = method4;
    }

    public static final /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseSkuDetailsWrapper inAppPurchaseSkuDetailsWrapper) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseSkuDetailsWrapper.class)) {
            return;
        }
        try {
            f6390Wwwwwwwwwwwwwwwwwwwwwwwwwwww = inAppPurchaseSkuDetailsWrapper;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseSkuDetailsWrapper.class);
        }
    }

    public static final /* synthetic */ InAppPurchaseSkuDetailsWrapper Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseSkuDetailsWrapper.class)) {
            return null;
        }
        try {
            return f6390Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseSkuDetailsWrapper.class);
            return null;
        }
    }

    public static final /* synthetic */ AtomicBoolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InAppPurchaseSkuDetailsWrapper.class)) {
            return null;
        }
        try {
            return f6389Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InAppPurchaseSkuDetailsWrapper.class);
            return null;
        }
    }

    @NotNull
    public final Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            return this.f6396Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    @Nullable
    public final Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable List<String> list) {
        Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            InAppPurchaseUtils inAppPurchaseUtils = InAppPurchaseUtils.INSTANCE;
            Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6396Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f6394Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null, new Object[0]);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 == null || (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6395Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f6393Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww4, str)) == null || (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6395Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f6392Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, list)) == null) {
                return null;
            }
            return InAppPurchaseUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6395Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f6391Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, new Object[0]);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }
}
