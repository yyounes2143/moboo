package com.changdu.component.nativeguard;

import android.app.Application;
import androidx.annotation.Keep;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Keep
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0007J\u0011\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0083 J\u0018\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0007J\b\u0010\u0014\u001a\u00020\fH\u0007J\u0011\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0087 R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/changdu/component/nativeguard/CDNativeGuard;", "", "()V", "TAG", "", "application", "Landroid/app/Application;", "mHasInit", "", "onNativeGuardListener", "Lcom/changdu/component/nativeguard/OnNativeGuardListener;", "init", "", "signals", "", "initNative", "notifyNativeCrash", "signal", "", "notifier", "onNativeGuardInitError", "testNativeCrash", "native_guard_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CDNativeGuard {
    @NotNull
    public static final CDNativeGuard INSTANCE = new CDNativeGuard();
    @NotNull
    public static final String TAG = "CDNativeGuard";
    @Nullable
    private static Application application;
    private static boolean mHasInit;
    @Nullable
    private static OnNativeGuardListener onNativeGuardListener;

    static {
        try {
            System.loadLibrary("cdnativeguard");
            mHasInit = true;
        } catch (Throwable unused) {
            mHasInit = false;
        }
    }

    private CDNativeGuard() {
    }

    @JvmStatic
    public static final void init(@NotNull int[] iArr, @NotNull Application application2, @NotNull OnNativeGuardListener onNativeGuardListener2) {
        if (mHasInit) {
            application = application2;
            onNativeGuardListener = onNativeGuardListener2;
            try {
                initNative(iArr);
            } catch (Throwable unused) {
                mHasInit = false;
            }
        }
    }

    @JvmStatic
    private static final native void initNative(int[] iArr);

    @JvmStatic
    public static final void notifyNativeCrash(int i, int i2) {
        Application application2;
        if (i != 3 && (application2 = application) != null) {
            try {
                OnNativeGuardListener onNativeGuardListener2 = onNativeGuardListener;
                if (onNativeGuardListener2 != null) {
                    onNativeGuardListener2.onReceiveNativeCrash(application2, i);
                    Unit unit = Unit.INSTANCE;
                }
            } catch (Throwable unused) {
                Unit unit2 = Unit.INSTANCE;
            }
        }
    }

    @JvmStatic
    public static final void onNativeGuardInitError() {
        throw new CDNativeGuardException();
    }

    @JvmStatic
    public static final native void testNativeCrash(int i);
}
