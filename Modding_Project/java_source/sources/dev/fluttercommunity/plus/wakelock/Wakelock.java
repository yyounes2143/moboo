package dev.fluttercommunity.plus.wakelock;

import android.app.Activity;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\n\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bR$\u0010\u0013\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00148BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u0015¨\u0006\u0017"}, d2 = {"Ldev/fluttercommunity/plus/wakelock/Wakelock;", "", "<init>", "()V", "LToggleMessage;", "message", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(LToggleMessage;)V", "LIsEnabledMessage;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()LIsEnabledMessage;", "Landroid/app/Activity;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/app/Activity;", "getActivity", "()Landroid/app/Activity;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/Activity;)V", "activity", "", "()Z", "enabled", "wakelock_plus_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class Wakelock {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Activity f11155Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ToggleMessage toggleMessage) {
        Activity activity = this.f11155Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (activity != null) {
            boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (toggleMessage.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().booleanValue()) {
                if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                    activity.getWindow().addFlags(128);
                    return;
                }
                return;
            } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                activity.getWindow().clearFlags(128);
                return;
            } else {
                return;
            }
        }
        throw new NoActivityException();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Activity activity) {
        this.f11155Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = activity;
    }

    @NotNull
    public final IsEnabledMessage Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f11155Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            return new IsEnabledMessage(Boolean.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        }
        throw new NoActivityException();
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if ((this.f11155Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getWindow().getAttributes().flags & 128) != 0) {
            return true;
        }
        return false;
    }
}
