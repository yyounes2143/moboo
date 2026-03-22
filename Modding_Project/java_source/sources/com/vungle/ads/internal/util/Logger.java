package com.vungle.ads.internal.util;

import android.util.Log;
import androidx.media3.exoplayer.upstream.CmcdData;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/vungle/ads/internal/util/Logger;", "", "()V", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class Logger {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static boolean enabled;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0007J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0007J \u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0004J\u0018\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0007J \u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0018\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0007J \u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fH\u0007J\n\u0010\u0011\u001a\u00020\b*\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/vungle/ads/internal/util/Logger$Companion;", "", "()V", "enabled", "", "d", "", "tag", "", "message", "e", "throwable", "", "enable", "", CmcdData.Factory.OBJECT_TYPE_INIT_SEGMENT, "w", "eraseSensitiveData", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final int d(@NotNull String str, @NotNull String str2) {
            if (!Logger.enabled) {
                return -1;
            }
            return Log.d(str, eraseSensitiveData(str2));
        }

        @JvmStatic
        public final int e(@NotNull String str, @NotNull String str2) {
            if (Logger.enabled) {
                return Log.e(str, eraseSensitiveData(str2));
            }
            return -1;
        }

        public final void enable(boolean z) {
            Logger.enabled = z;
        }

        @NotNull
        public final String eraseSensitiveData(@NotNull String str) {
            return new Regex(Pattern.compile("[\\d]{1,3}\\.[\\d]{1,3}\\.[\\d]{1,3}\\.[\\d]{1,3}")).replace(str, "xxx.xxx.xxx.xxx");
        }

        @JvmStatic
        public final int i(@NotNull String str, @NotNull String str2) {
            if (Logger.enabled) {
                return Log.i(str, eraseSensitiveData(str2));
            }
            return -1;
        }

        @JvmStatic
        public final int w(@NotNull String str, @NotNull String str2) {
            if (Logger.enabled) {
                return Log.w(str, eraseSensitiveData(str2));
            }
            return -1;
        }

        private Companion() {
        }

        @JvmStatic
        public final int e(@NotNull String str, @NotNull String str2, @NotNull Throwable th) {
            if (Logger.enabled) {
                return Log.e(str, eraseSensitiveData(str2) + "; error: " + th.getLocalizedMessage());
            }
            return -1;
        }

        @JvmStatic
        public final int i(@NotNull String str, @NotNull String str2, @NotNull Throwable th) {
            if (Logger.enabled) {
                return Log.i(str, eraseSensitiveData(str2) + "; error: " + th.getLocalizedMessage());
            }
            return -1;
        }

        @JvmStatic
        public final int w(@NotNull String str, @NotNull String str2, @NotNull Throwable th) {
            if (Logger.enabled) {
                return Log.w(str, eraseSensitiveData(str2) + "; error: " + th.getLocalizedMessage());
            }
            return -1;
        }
    }

    @JvmStatic
    public static final int d(@NotNull String str, @NotNull String str2) {
        return Companion.d(str, str2);
    }

    @JvmStatic
    public static final int e(@NotNull String str, @NotNull String str2) {
        return Companion.e(str, str2);
    }

    @JvmStatic
    public static final int i(@NotNull String str, @NotNull String str2) {
        return Companion.i(str, str2);
    }

    @JvmStatic
    public static final int w(@NotNull String str, @NotNull String str2) {
        return Companion.w(str, str2);
    }

    @JvmStatic
    public static final int e(@NotNull String str, @NotNull String str2, @NotNull Throwable th) {
        return Companion.e(str, str2, th);
    }

    @JvmStatic
    public static final int i(@NotNull String str, @NotNull String str2, @NotNull Throwable th) {
        return Companion.i(str, str2, th);
    }

    @JvmStatic
    public static final int w(@NotNull String str, @NotNull String str2, @NotNull Throwable th) {
        return Companion.w(str, str2, th);
    }
}
