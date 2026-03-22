package com.facebook.appevents;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.facebook.AccessToken;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Currency;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0004\u001f !\"B%\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ!\u0010\u000e\u001a\u00020\r2\b\u0010\n\u001a\u0004\u0018\u00010\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ)\u0010\u0012\u001a\u00020\r2\b\u0010\n\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0018\u001a\u00020\r2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\r¢\u0006\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001d¨\u0006#"}, d2 = {"Lcom/facebook/appevents/AppEventsLogger;", "", "Landroid/content/Context;", "context", "", "applicationId", "Lcom/facebook/AccessToken;", "accessToken", "<init>", "(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V", "eventName", "Landroid/os/Bundle;", "parameters", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Landroid/os/Bundle;)V", "", "valueToSum", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;DLandroid/os/Bundle;)V", "Ljava/math/BigDecimal;", "purchaseAmount", "Ljava/util/Currency;", "currency", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/math/BigDecimal;Ljava/util/Currency;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Lcom/facebook/appevents/AppEventsLoggerImpl;", "Lcom/facebook/appevents/AppEventsLoggerImpl;", "loggerImpl", "Companion", "FlushBehavior", "ProductAvailability", "ProductCondition", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AppEventsLogger {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6186Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = AppEventsLogger.class.getCanonicalName();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AppEventsLoggerImpl f6187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0011\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0017\u0010\u0003J\u0011\u0010\u0018\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001e\u0010\u001dR\u0014\u0010\u001f\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001f\u0010\u001dR\u001c\u0010!\u001a\n  *\u0004\u0018\u00010\t0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\u001d¨\u0006\""}, d2 = {"Lcom/facebook/appevents/AppEventsLogger$Companion;", "", "<init>", "()V", "Landroid/app/Application;", "application", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/Application;)V", "", "applicationId", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/Application;Ljava/lang/String;)V", "Landroid/content/Context;", "context", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;)V", "Lcom/facebook/appevents/AppEventsLogger;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;", "Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Ljava/lang/String;", "ACTION_APP_EVENTS_FLUSHED", "Ljava/lang/String;", "APP_EVENTS_EXTRA_FLUSH_RESULT", "APP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED", "kotlin.jvm.PlatformType", "TAG", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
            AppEventsLoggerImpl.Companion.Wwwwwwwwwwwwwwww();
        }

        @JvmStatic
        @NotNull
        public final AppEventsLogger Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
            return new AppEventsLogger(context, null, null, null);
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @Nullable String str) {
            AppEventsLoggerImpl.Companion.Wwwwwwwwwwwwwwwwwwwwww(context, str);
        }

        @JvmStatic
        @Nullable
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return AnalyticsUserIDStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @JvmStatic
        @Nullable
        public final FlushBehavior Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return AppEventsLoggerImpl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @JvmStatic
        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
            return AppEventsLoggerImpl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwww(context);
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Application application, @Nullable String str) {
            AppEventsLoggerImpl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(application, str);
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Application application) {
            AppEventsLoggerImpl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(application, null);
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;", "", "(Ljava/lang/String;I)V", "AUTO", "EXPLICIT_ONLY", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public enum FlushBehavior {
        AUTO,
        EXPLICIT_ONLY;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static FlushBehavior[] valuesCustom() {
            FlushBehavior[] valuesCustom = values();
            return (FlushBehavior[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/facebook/appevents/AppEventsLogger$ProductAvailability;", "", "(Ljava/lang/String;I)V", "IN_STOCK", "OUT_OF_STOCK", "PREORDER", "AVALIABLE_FOR_ORDER", "DISCONTINUED", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public enum ProductAvailability {
        IN_STOCK,
        OUT_OF_STOCK,
        PREORDER,
        AVALIABLE_FOR_ORDER,
        DISCONTINUED;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static ProductAvailability[] valuesCustom() {
            ProductAvailability[] valuesCustom = values();
            return (ProductAvailability[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/facebook/appevents/AppEventsLogger$ProductCondition;", "", "(Ljava/lang/String;I)V", "NEW", "REFURBISHED", "USED", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public enum ProductCondition {
        NEW,
        REFURBISHED,
        USED;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static ProductCondition[] valuesCustom() {
            ProductCondition[] valuesCustom = values();
            return (ProductCondition[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    public /* synthetic */ AppEventsLogger(Context context, String str, AccessToken accessToken, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, accessToken);
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable BigDecimal bigDecimal, @Nullable Currency currency) {
        this.f6187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwww(bigDecimal, currency);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable Bundle bundle) {
        this.f6187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(str, bundle);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, double d, @Nullable Bundle bundle) {
        this.f6187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(str, d, bundle);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f6187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public AppEventsLogger(Context context, String str, AccessToken accessToken) {
        this.f6187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AppEventsLoggerImpl(context, str, accessToken);
    }
}
