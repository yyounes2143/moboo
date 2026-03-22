package com.facebook.appevents;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RestrictTo;
import com.facebook.AccessToken;
import com.facebook.FacebookSdk;
import com.facebook.appevents.AppEventsLogger;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0007\u0018\u0000 /2\u00020\u0001:\u0001/B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0013\b\u0016\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB\u001d\b\u0016\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\u000bB%\b\u0016\u0012\u0006\u0010\f\u001a\u00020\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0004\u0010\u000fJ!\u0010\u0014\u001a\u00020\u00132\b\u0010\u0010\u001a\u0004\u0018\u00010\t2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0014\u0010\u0015J)\u0010\u0018\u001a\u00020\u00132\b\u0010\u0010\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0018\u0010\u0019J+\u0010\u001e\u001a\u00020\u00132\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u001e\u0010\u001fJ!\u0010!\u001a\u00020\u00132\b\u0010\u0010\u001a\u0004\u0018\u00010\t2\b\u0010 \u001a\u0004\u0018\u00010\t¢\u0006\u0004\b!\u0010\"J5\u0010#\u001a\u00020\u00132\b\u0010\u0010\u001a\u0004\u0018\u00010\t2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b#\u0010$J\u0017\u0010%\u001a\u00020\u00132\b\u0010\u0010\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b%\u0010&J+\u0010'\u001a\u00020\u00132\b\u0010\u0010\u001a\u0004\u0018\u00010\t2\b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b'\u0010(J!\u0010)\u001a\u00020\u00132\b\u0010\u0010\u001a\u0004\u0018\u00010\t2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b)\u0010\u0015J\u0015\u0010*\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b*\u0010+J\r\u0010,\u001a\u00020\u0013¢\u0006\u0004\b,\u0010-R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010.¨\u00060"}, d2 = {"Lcom/facebook/appevents/InternalAppEventsLogger;", "", "Lcom/facebook/appevents/AppEventsLoggerImpl;", "loggerImpl", "<init>", "(Lcom/facebook/appevents/AppEventsLoggerImpl;)V", "Landroid/content/Context;", "context", "(Landroid/content/Context;)V", "", "applicationId", "(Landroid/content/Context;Ljava/lang/String;)V", "activityName", "Lcom/facebook/AccessToken;", "accessToken", "(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V", "eventName", "Landroid/os/Bundle;", "parameters", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Landroid/os/Bundle;)V", "", "valueToSum", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;DLandroid/os/Bundle;)V", "Ljava/math/BigDecimal;", "purchaseAmount", "Ljava/util/Currency;", "currency", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V", "buttonText", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Lcom/facebook/appevents/AppEventsLoggerImpl;", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class InternalAppEventsLogger {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AppEventsLoggerImpl f6202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u0010\u001a\u00020\u000f2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\rH\u0007¢\u0006\u0004\b\u0010\u0010\u0011J%\u0010\u0016\u001a\u00020\u00152\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\b\u0016\u0010\u0017J+\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\n2\b\u0010\u0014\u001a\u0004\u0018\u00010\n2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0007¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Lcom/facebook/appevents/InternalAppEventsLogger$Companion;", "", "<init>", "()V", "Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;", "Ljava/util/concurrent/Executor;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/concurrent/Executor;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "", "ud", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;)V", "Landroid/content/Context;", "context", "applicationId", "Lcom/facebook/appevents/InternalAppEventsLogger;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/appevents/InternalAppEventsLogger;", "activityName", "Lcom/facebook/AccessToken;", "accessToken", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)Lcom/facebook/appevents/InternalAppEventsLogger;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ InternalAppEventsLogger Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Companion companion, Context context, String str, int i, Object obj) {
            if ((i & 2) != 0) {
                str = null;
            }
            return companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str);
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.GROUP_ID})
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Map<String, String> map) {
            UserDataStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(map);
        }

        @JvmStatic
        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return AppEventsLoggerImpl.Companion.Wwwwwwwwwwwwwwwwwwwwwww();
        }

        @JvmStatic
        @NotNull
        public final AppEventsLogger.FlushBehavior Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return AppEventsLoggerImpl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @JvmStatic
        @NotNull
        public final Executor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return AppEventsLoggerImpl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        @NotNull
        public final InternalAppEventsLogger Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @Nullable String str2, @Nullable AccessToken accessToken) {
            return new InternalAppEventsLogger(str, str2, accessToken);
        }

        @JvmStatic
        @NotNull
        @JvmOverloads
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public final InternalAppEventsLogger Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Context context, @Nullable String str) {
            return new InternalAppEventsLogger(context, str);
        }

        public Companion() {
        }
    }

    public InternalAppEventsLogger(@NotNull AppEventsLoggerImpl appEventsLoggerImpl) {
        this.f6202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = appEventsLoggerImpl;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(@Nullable BigDecimal bigDecimal, @Nullable Currency currency, @Nullable Bundle bundle) {
        if (FacebookSdk.Wwwwwwwwwwwwwwwwwww()) {
            this.f6202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww(bigDecimal, currency, bundle);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable BigDecimal bigDecimal, @Nullable Currency currency, @Nullable Bundle bundle) {
        if (FacebookSdk.Wwwwwwwwwwwwwwwwwww()) {
            this.f6202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwww(str, bigDecimal, currency, bundle);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable Double d, @Nullable Bundle bundle) {
        if (FacebookSdk.Wwwwwwwwwwwwwwwwwww()) {
            this.f6202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww(str, d, bundle);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable Bundle bundle) {
        if (FacebookSdk.Wwwwwwwwwwwwwwwwwww()) {
            this.f6202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww(str, null, bundle);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        if (FacebookSdk.Wwwwwwwwwwwwwwwwwww()) {
            this.f6202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww(str, null, null);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable String str2) {
        this.f6202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(str, str2);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable Bundle bundle) {
        if (FacebookSdk.Wwwwwwwwwwwwwwwwwww()) {
            this.f6202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(str, bundle);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, double d, @Nullable Bundle bundle) {
        if (FacebookSdk.Wwwwwwwwwwwwwwwwwww()) {
            this.f6202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(str, d, bundle);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle) {
        boolean z;
        if ((bundle.getInt("previous") & 2) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z && !FacebookSdk.Wwwwwwwwwwwwwwwwwww()) {
            return;
        }
        this.f6202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww("fb_sdk_settings_changed", null, bundle);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f6202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public InternalAppEventsLogger(@Nullable Context context) {
        this(new AppEventsLoggerImpl(context, (String) null, (AccessToken) null));
    }

    public InternalAppEventsLogger(@Nullable Context context, @Nullable String str) {
        this(new AppEventsLoggerImpl(context, str, (AccessToken) null));
    }

    public InternalAppEventsLogger(@NotNull String str, @Nullable String str2, @Nullable AccessToken accessToken) {
        this(new AppEventsLoggerImpl(str, str2, accessToken));
    }
}
