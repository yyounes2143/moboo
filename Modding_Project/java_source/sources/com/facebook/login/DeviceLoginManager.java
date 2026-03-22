package com.facebook.login;

import android.net.Uri;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003R$\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/facebook/login/DeviceLoginManager;", "Lcom/facebook/login/LoginManager;", "<init>", "()V", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwww", "Landroid/net/Uri;", "getDeviceRedirectUri", "()Landroid/net/Uri;", "Kkkkkkkkkkkk", "(Landroid/net/Uri;)V", "deviceRedirectUri", "Companion", "facebook-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DeviceLoginManager extends LoginManager {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Lazy<DeviceLoginManager> f6947Wwwwwwwwwwwwwwwwwwwww = LazyKt.lazy(new Function0<DeviceLoginManager>() { // from class: com.facebook.login.DeviceLoginManager$Companion$instance$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final DeviceLoginManager invoke() {
            return new DeviceLoginManager();
        }
    });
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Uri f6948Wwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001b\u0010\t\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/facebook/login/DeviceLoginManager$Companion;", "", "<init>", "()V", "Lcom/facebook/login/DeviceLoginManager;", "instance$delegate", "Lkotlin/Lazy;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/login/DeviceLoginManager;", "instance", "facebook-login_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ KProperty<Object>[] f6949Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Companion.class), "instance", "getInstance()Lcom/facebook/login/DeviceLoginManager;"))};

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final DeviceLoginManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return (DeviceLoginManager) DeviceLoginManager.Kkkkkkkkkkkkk().getValue();
        }

        public Companion() {
        }
    }

    public static final /* synthetic */ Lazy Kkkkkkkkkkkkk() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DeviceLoginManager.class)) {
            return null;
        }
        try {
            return f6947Wwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, DeviceLoginManager.class);
            return null;
        }
    }

    public final void Kkkkkkkkkkkk(@Nullable Uri uri) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            this.f6948Wwwwwwwwwwwwwwwwwwwwww = uri;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }
}
