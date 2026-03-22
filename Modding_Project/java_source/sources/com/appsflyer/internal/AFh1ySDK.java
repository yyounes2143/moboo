package com.appsflyer.internal;

import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0014\b'\u0018\u0000 !2\u00020\u0001:\u0001!B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\bH\u0017¢\u0006\u0004\b\u000b\u0010\fJO\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\b2\b\b\u0002\u0010\u0010\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\bH\u0017¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J)\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\bH\u0017¢\u0006\u0004\b\u0016\u0010\fJ)\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\bH\u0017¢\u0006\u0004\b\u0017\u0010\fJ)\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\bH\u0017¢\u0006\u0004\b\u0018\u0010\fJ\u001d\u0010\u001a\u001a\u00020\u0006*\u0004\u0018\u00010\u00062\u0006\u0010\u0019\u001a\u00020\u0004H\u0005¢\u0006\u0004\b\u001a\u0010\u001bJ\u001b\u0010\u001c\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0001¢\u0006\u0004\b\u001c\u0010\u001bR\u001a\u0010\u001d\u001a\u00020\b8\u0017X\u0096D¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 "}, d2 = {"Lcom/appsflyer/internal/AFh1ySDK;", "", "<init>", "()V", "Lcom/appsflyer/internal/AFg1cSDK;", "tag", "", NotificationCompat.CATEGORY_MESSAGE, "", "shouldRemoteDebug", "", "d", "(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V", "", "throwable", "printMsg", "printThrowable", "shouldReportToExManager", "e", "(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V", "force", "(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V", CmcdData.Factory.OBJECT_TYPE_INIT_SEGMENT, "v", "w", "p0", "getMediationNetwork", "(Ljava/lang/String;Lcom/appsflyer/internal/AFg1cSDK;)Ljava/lang/String;", "withTag$SDK_prodRelease", "shouldExtendMsg", "Z", "getShouldExtendMsg", "()Z", "Companion"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAFLoggerBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AFLoggerBase.kt\ncom/appsflyer/internal/logger/AFLoggerBase\n+ 2 StringExtensions.kt\ncom/appsflyer/internal/util/StringExtensionsKt\n*L\n1#1,69:1\n36#2:70\n*S KotlinDebug\n*F\n+ 1 AFLoggerBase.kt\ncom/appsflyer/internal/logger/AFLoggerBase\n*L\n61#1:70\n*E\n"})
/* loaded from: classes3.dex */
public abstract class AFh1ySDK {
    private final boolean shouldExtendMsg;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static long AFAdRevenueData = System.currentTimeMillis();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006"}, d2 = {"Lcom/appsflyer/internal/AFh1ySDK$Companion;", "", "<init>", "()V", "", "AFAdRevenueData", "J", "getCurrencyIso4217Code"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static /* synthetic */ void d$default(AFh1ySDK aFh1ySDK, AFg1cSDK aFg1cSDK, String str, boolean z, int i, Object obj) {
        if (obj == null) {
            if ((i & 4) != 0) {
                z = true;
            }
            aFh1ySDK.d(aFg1cSDK, str, z);
            return;
        }
        throw new UnsupportedOperationException();
    }

    public static /* synthetic */ void e$default(AFh1ySDK aFh1ySDK, AFg1cSDK aFg1cSDK, String str, Throwable th, boolean z, boolean z2, boolean z3, boolean z4, int i, Object obj) {
        if (obj == null) {
            if ((i & 8) != 0) {
                z = true;
            }
            if ((i & 16) != 0) {
                z2 = true;
            }
            if ((i & 32) != 0) {
                z3 = true;
            }
            if ((i & 64) != 0) {
                z4 = true;
            }
            aFh1ySDK.e(aFg1cSDK, str, th, z, z2, z3, z4);
            return;
        }
        throw new UnsupportedOperationException();
    }

    public static /* synthetic */ void i$default(AFh1ySDK aFh1ySDK, AFg1cSDK aFg1cSDK, String str, boolean z, int i, Object obj) {
        if (obj == null) {
            if ((i & 4) != 0) {
                z = true;
            }
            aFh1ySDK.i(aFg1cSDK, str, z);
            return;
        }
        throw new UnsupportedOperationException();
    }

    public static /* synthetic */ void v$default(AFh1ySDK aFh1ySDK, AFg1cSDK aFg1cSDK, String str, boolean z, int i, Object obj) {
        if (obj == null) {
            if ((i & 4) != 0) {
                z = true;
            }
            aFh1ySDK.v(aFg1cSDK, str, z);
            return;
        }
        throw new UnsupportedOperationException();
    }

    public static /* synthetic */ void w$default(AFh1ySDK aFh1ySDK, AFg1cSDK aFg1cSDK, String str, boolean z, int i, Object obj) {
        if (obj == null) {
            if ((i & 4) != 0) {
                z = true;
            }
            aFh1ySDK.w(aFg1cSDK, str, z);
            return;
        }
        throw new UnsupportedOperationException();
    }

    @JvmOverloads
    public void d(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, boolean z) {
    }

    @JvmOverloads
    public void e(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, @NotNull Throwable th, boolean z, boolean z2, boolean z3, boolean z4) {
    }

    @NotNull
    public final String getMediationNetwork(@Nullable String str, @NotNull AFg1cSDK aFg1cSDK) {
        if (str == null || StringsKt.isBlank(str)) {
            str = AbstractJsonLexerKt.NULL;
        }
        String withTag$SDK_prodRelease = withTag$SDK_prodRelease(str, aFg1cSDK);
        if (getShouldExtendMsg()) {
            long currentTimeMillis = System.currentTimeMillis() - AFAdRevenueData;
            String name = Thread.currentThread().getName();
            return "(" + currentTimeMillis + ") [" + name + "] " + withTag$SDK_prodRelease;
        }
        return withTag$SDK_prodRelease;
    }

    @JvmName(name = "getShouldExtendMsg")
    public boolean getShouldExtendMsg() {
        return this.shouldExtendMsg;
    }

    @JvmOverloads
    public void i(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, boolean z) {
    }

    @JvmOverloads
    public void v(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, boolean z) {
    }

    @JvmOverloads
    public void w(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, boolean z) {
    }

    @NotNull
    public final String withTag$SDK_prodRelease(@NotNull String str, @NotNull AFg1cSDK aFg1cSDK) {
        String str2 = aFg1cSDK.getCurrencyIso4217Code;
        return "[" + str2 + "] " + str;
    }

    @JvmOverloads
    public final void d(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str) {
        d$default(this, aFg1cSDK, str, false, 4, null);
    }

    @JvmOverloads
    public final void e(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, @NotNull Throwable th) {
        e$default(this, aFg1cSDK, str, th, false, false, false, false, 120, null);
    }

    @JvmOverloads
    public final void i(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str) {
        i$default(this, aFg1cSDK, str, false, 4, null);
    }

    @JvmOverloads
    public final void v(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str) {
        v$default(this, aFg1cSDK, str, false, 4, null);
    }

    @JvmOverloads
    public final void w(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str) {
        w$default(this, aFg1cSDK, str, false, 4, null);
    }

    @JvmOverloads
    public final void e(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, @NotNull Throwable th, boolean z) {
        e$default(this, aFg1cSDK, str, th, z, false, false, false, 112, null);
    }

    @JvmOverloads
    public final void e(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, @NotNull Throwable th, boolean z, boolean z2) {
        e$default(this, aFg1cSDK, str, th, z, z2, false, false, 96, null);
    }

    @JvmOverloads
    public final void e(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str, @NotNull Throwable th, boolean z, boolean z2, boolean z3) {
        e$default(this, aFg1cSDK, str, th, z, z2, z3, false, 64, null);
    }

    public void force(@NotNull AFg1cSDK aFg1cSDK, @NotNull String str) {
    }
}
