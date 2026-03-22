package com.facebook.internal;

import android.content.Intent;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u001b\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R$\u0010\u001b\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/facebook/internal/AppCall;", "", "", "requestCode", "Ljava/util/UUID;", "callId", "<init>", "(ILjava/util/UUID;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "getRequestCode", "()I", "setRequestCode", "(I)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/UUID;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/UUID;", "Landroid/content/Intent;", "Landroid/content/Intent;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/content/Intent;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Intent;)V", "requestIntent", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AppCall {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static AppCall f6616Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Intent f6617Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final UUID f6618Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f6619Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bR(\u0010\n\u001a\u0004\u0018\u00010\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/facebook/internal/AppCall$Companion;", "", "<init>", "()V", "Lcom/facebook/internal/AppCall;", "appCall", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/AppCall;)Z", "<set-?>", "currentPendingCall", "Lcom/facebook/internal/AppCall;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/internal/AppCall;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final synchronized boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppCall appCall) {
            boolean z;
            AppCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            AppCall.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appCall);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                z = true;
            } else {
                z = false;
            }
            return z;
        }

        @Nullable
        public final AppCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return AppCall.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        public Companion() {
        }
    }

    @JvmOverloads
    public AppCall(int i, @NotNull UUID uuid) {
        this.f6619Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f6618Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = uuid;
    }

    public static final /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppCall appCall) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppCall.class)) {
            return;
        }
        try {
            f6616Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = appCall;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppCall.class);
        }
    }

    public static final /* synthetic */ AppCall Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppCall.class)) {
            return null;
        }
        try {
            return f6616Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, AppCall.class);
            return null;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Intent intent) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            this.f6617Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = intent;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                return false;
            }
        }
        return false;
    }

    @Nullable
    public final Intent Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            return this.f6617Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    @NotNull
    public final UUID Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            return this.f6618Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public /* synthetic */ AppCall(int i, UUID uuid, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? UUID.randomUUID() : uuid);
    }
}
