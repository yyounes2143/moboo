package com.facebook.internal.instrument.crashshield;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.VisibleForTesting;
import com.facebook.FacebookSdk;
import com.facebook.internal.instrument.ExceptionAnalyzer;
import com.facebook.internal.instrument.InstrumentData;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010#\n\u0000\n\u0002\u0010\"\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J!\u0010\t\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0010\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b\u0010\u0010\u0011R8\u0010\u0016\u001a&\u0012\f\u0012\n \u0013*\u0004\u0018\u00010\u00010\u0001 \u0013*\u0012\u0012\f\u0012\n \u0013*\u0004\u0018\u00010\u00010\u0001\u0018\u00010\u00140\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "e", "o", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Throwable;Ljava/lang/Object;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Throwable;)V", "", "kotlin.jvm.PlatformType", "", "Ljava/util/Set;", "crashingObjects", "Z", "enabled", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class CrashShieldHandler {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f6902Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final CrashShieldHandler INSTANCE = new CrashShieldHandler();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Set<Object> f6903Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Collections.newSetFromMap(new WeakHashMap());

    @JvmStatic
    @VisibleForTesting
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable final Throwable th) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.facebook.internal.instrument.crashshield.CrashShieldHandler$scheduleCrashInDebug$1
                @Override // java.lang.Runnable
                public void run() {
                    throw new RuntimeException(th);
                }
            });
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Object obj) {
        return f6903Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(obj);
    }

    @JvmStatic
    @VisibleForTesting
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return false;
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Throwable th, @NotNull Object obj) {
        if (!f6902Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        f6903Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(obj);
        if (FacebookSdk.Wwwwwwwwwwwwwwwwwww()) {
            ExceptionAnalyzer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th);
            InstrumentData.Builder builder = InstrumentData.Builder.INSTANCE;
            InstrumentData.Builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, InstrumentData.Type.CrashShield).Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th);
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        f6902Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
    }
}
