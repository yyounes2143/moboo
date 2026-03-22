package com.changdu.component.memguard;

import androidx.annotation.Keep;
import com.bytedance.shadowhook.ShadowHook;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Keep
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\t\u0010\u0007\u001a\u00020\u0006H\u0082 R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/changdu/component/memguard/CDMemGuard;", "", "()V", "hasInit", "", "init", "", "startMemGuard", "memorySponge_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CDMemGuard {
    @NotNull
    public static final CDMemGuard INSTANCE = new CDMemGuard();
    private static boolean hasInit;

    static {
        ShadowHook.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ShadowHook.ConfigBuilder().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ShadowHook.Mode.UNIQUE).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        try {
            System.loadLibrary("cdmemguard");
            hasInit = true;
        } catch (Throwable unused) {
            hasInit = false;
        }
    }

    private CDMemGuard() {
    }

    private final native void startMemGuard();

    public final void init() {
        if (hasInit) {
            try {
                startMemGuard();
            } catch (Throwable unused) {
            }
        }
    }
}
