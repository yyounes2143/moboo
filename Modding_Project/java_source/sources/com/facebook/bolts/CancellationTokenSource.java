package com.facebook.bolts;

import com.applovin.sdk.AppLovinEventTypes;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0003J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000e\u0010\u0003R\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00060\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001e\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010$\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010!R\u0011\u0010'\u001a\u00020\u001f8F¢\u0006\u0006\u001a\u0004\b%\u0010&¨\u0006("}, d2 = {"Lcom/facebook/bolts/CancellationTokenSource;", "Ljava/io/Closeable;", "<init>", "()V", "", "close", "Lcom/facebook/bolts/CancellationTokenRegistration;", AppLovinEventTypes.USER_CREATED_ACCOUNT, "Kkkkkkkkkkkkkkkkkkkkkkk", "(Lcom/facebook/bolts/CancellationTokenRegistration;)V", "", "toString", "()Ljava/lang/String;", "Wwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Object;", "lock", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "registrations", "Ljava/util/concurrent/ScheduledExecutorService;", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/ScheduledExecutorService;", "executor", "Ljava/util/concurrent/ScheduledFuture;", "Wwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/ScheduledFuture;", "scheduledCancellation", "", "Wwwwwwwwwwwwwwwwwwwww", "Z", "cancellationRequested", "Wwwwwwwwwwwwwwwwwwww", "closed", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "isCancellationRequested", "facebook-bolts_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class CancellationTokenSource implements Closeable, AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f6557Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f6558Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ScheduledFuture<?> f6559Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Object f6562Wwwwwwwwwwwwwwwwwwwwwwwww = new Object();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<CancellationTokenRegistration> f6561Wwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ScheduledExecutorService f6560Wwwwwwwwwwwwwwwwwwwwwww = BoltsExecutors.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    public final void Kkkkkkkkkkkkkkkkkkkkkkk(@NotNull CancellationTokenRegistration cancellationTokenRegistration) {
        synchronized (this.f6562Wwwwwwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwww();
            this.f6561Wwwwwwwwwwwwwwwwwwwwwwww.remove(cancellationTokenRegistration);
        }
    }

    public final void Wwwwwwwwwwwwww() {
        if (!this.f6557Wwwwwwwwwwwwwwwwwwww) {
            return;
        }
        throw new IllegalStateException("Object already closed");
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        synchronized (this.f6562Wwwwwwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwww();
            z = this.f6558Wwwwwwwwwwwwwwwwwwwww;
        }
        return z;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        ScheduledFuture<?> scheduledFuture = this.f6559Wwwwwwwwwwwwwwwwwwwwww;
        if (scheduledFuture == null) {
            return;
        }
        scheduledFuture.cancel(true);
        this.f6559Wwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f6562Wwwwwwwwwwwwwwwwwwwwwwwww) {
            try {
                if (this.f6557Wwwwwwwwwwwwwwwwwwww) {
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                for (CancellationTokenRegistration cancellationTokenRegistration : this.f6561Wwwwwwwwwwwwwwwwwwwwwwww) {
                    cancellationTokenRegistration.close();
                }
                this.f6561Wwwwwwwwwwwwwwwwwwwwwwww.clear();
                this.f6557Wwwwwwwwwwwwwwwwwwww = true;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @NotNull
    public String toString() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return String.format(Locale.US, "%s@%s[cancellationRequested=%s]", Arrays.copyOf(new Object[]{CancellationTokenSource.class.getName(), Integer.toHexString(hashCode()), Boolean.toString(Wwwwwwwwwwwwwwwwwwwwwwwwwww())}, 3));
    }
}
