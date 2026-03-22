package com.facebook.bolts;

import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000 \u00102\u00020\u0001:\u0002\u0010\u0011B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/facebook/bolts/BoltsExecutors;", "", "<init>", "()V", "Ljava/util/concurrent/ExecutorService;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/ExecutorService;", "background", "Ljava/util/concurrent/ScheduledExecutorService;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/ScheduledExecutorService;", "scheduled", "Ljava/util/concurrent/Executor;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/Executor;", "immediate", "Companion", "ImmediateExecutor", "facebook-bolts_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BoltsExecutors {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final BoltsExecutors INSTANCE = new BoltsExecutors();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Executor f6549Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ScheduledExecutorService f6550Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ExecutorService f6551Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0001¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0001¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0010\u001a\u00020\r8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/facebook/bolts/BoltsExecutors$Companion;", "", "<init>", "()V", "Ljava/util/concurrent/ExecutorService;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/concurrent/ExecutorService;", "Ljava/util/concurrent/ScheduledExecutorService;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/concurrent/ScheduledExecutorService;", "Ljava/util/concurrent/Executor;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/concurrent/Executor;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "isAndroidRuntime", "Lcom/facebook/bolts/BoltsExecutors;", "INSTANCE", "Lcom/facebook/bolts/BoltsExecutors;", "facebook-bolts_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final ScheduledExecutorService Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return BoltsExecutors.INSTANCE.f6550Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            String property = System.getProperty("java.runtime.name");
            if (property == null) {
                return false;
            }
            return StringsKt.contains$default((CharSequence) property.toLowerCase(Locale.US), (CharSequence) "android", false, 2, (Object) null);
        }

        @JvmStatic
        @NotNull
        public final Executor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return BoltsExecutors.INSTANCE.f6549Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @JvmStatic
        @NotNull
        public final ExecutorService Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return BoltsExecutors.INSTANCE.f6551Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\u000bR\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/facebook/bolts/BoltsExecutors$ImmediateExecutor;", "Ljava/util/concurrent/Executor;", "<init>", "()V", "Ljava/lang/Runnable;", "command", "", "execute", "(Ljava/lang/Runnable;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/ThreadLocal;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/ThreadLocal;", "executionDepth", "Companion", "facebook-bolts_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class ImmediateExecutor implements Executor {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ThreadLocal<Integer> f6552Wwwwwwwwwwwwwwwwwwwwwwwww = new ThreadLocal<>();

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/facebook/bolts/BoltsExecutors$ImmediateExecutor$Companion;", "", "()V", "MAX_DEPTH", "", "facebook-bolts_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public Companion() {
            }
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Integer num = this.f6552Wwwwwwwwwwwwwwwwwwwwwwwww.get();
            if (num == null) {
                num = 0;
            }
            int intValue = num.intValue() + 1;
            this.f6552Wwwwwwwwwwwwwwwwwwwwwwwww.set(Integer.valueOf(intValue));
            return intValue;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Integer num = this.f6552Wwwwwwwwwwwwwwwwwwwwwwwww.get();
            if (num == null) {
                num = 0;
            }
            int intValue = num.intValue() - 1;
            if (intValue == 0) {
                this.f6552Wwwwwwwwwwwwwwwwwwwwwwwww.remove();
                return intValue;
            }
            this.f6552Wwwwwwwwwwwwwwwwwwwwwwwww.set(Integer.valueOf(intValue));
            return intValue;
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NotNull Runnable runnable) {
            try {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() <= 15) {
                    runnable.run();
                } else {
                    BoltsExecutors.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().execute(runnable);
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } catch (Throwable th) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                throw th;
            }
        }
    }

    public BoltsExecutors() {
        ExecutorService Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (!Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Executors.newCachedThreadPool();
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AndroidExecutors.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        this.f6551Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        this.f6550Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Executors.newSingleThreadScheduledExecutor();
        this.f6549Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ImmediateExecutor();
    }
}
