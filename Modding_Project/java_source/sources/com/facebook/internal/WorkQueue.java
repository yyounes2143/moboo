package com.facebook.internal;

import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.internal.WorkQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 &2\u00020\u0001:\u0003&'(B\u001d\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\nH\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0014\u001a\u00020\u000f2\f\u0010\u0013\u001a\b\u0018\u00010\u0012R\u00020\u0000H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u001b\u0010\u0017\u001a\u00020\u000f2\n\u0010\u0016\u001a\u00060\u0012R\u00020\u0000H\u0002¢\u0006\u0004\b\u0017\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u001c\u0010\"\u001a\b\u0018\u00010\u0012R\u00020\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u001c\u0010#\u001a\b\u0018\u00010\u0012R\u00020\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010!R\u0016\u0010%\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010\u0019¨\u0006)"}, d2 = {"Lcom/facebook/internal/WorkQueue;", "", "", "maxConcurrent", "Ljava/util/concurrent/Executor;", "executor", "<init>", "(ILjava/util/concurrent/Executor;)V", "Ljava/lang/Runnable;", "callback", "", "addToFront", "Lcom/facebook/internal/WorkQueue$WorkItem;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Runnable;Z)Lcom/facebook/internal/WorkQueue$WorkItem;", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Lcom/facebook/internal/WorkQueue$WorkNode;", "finished", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/WorkQueue$WorkNode;)V", "node", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/Executor;", "Ljava/util/concurrent/locks/ReentrantLock;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/locks/ReentrantLock;", "workLock", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/internal/WorkQueue$WorkNode;", "pendingJobs", "runningJobs", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "runningCount", "Companion", "WorkItem", "WorkNode", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class WorkQueue {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public int f6841Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public WorkNode f6842Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public WorkNode f6843Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public final ReentrantLock f6844Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public final Executor f6845Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public final int f6846Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/facebook/internal/WorkQueue$Companion;", "", "<init>", "()V", "", "condition", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "", "DEFAULT_MAX_CONCURRENT", "I", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            if (z) {
                return;
            }
            throw new FacebookException("Validation failed");
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/facebook/internal/WorkQueue$WorkItem;", "", "", "cancel", "()Z", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface WorkItem {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        boolean cancel();
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\u000f\u001a\u00060\u0000R\u00020\f2\f\u0010\r\u001a\b\u0018\u00010\u0000R\u00020\f2\u0006\u0010\u000e\u001a\u00020\u0006¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0011\u001a\b\u0018\u00010\u0000R\u00020\f2\f\u0010\r\u001a\b\u0018\u00010\u0000R\u00020\f¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\n\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R0\u0010\u001a\u001a\b\u0018\u00010\u0000R\u00020\f2\f\u0010\u0016\u001a\b\u0018\u00010\u0000R\u00020\f8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u000f\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001b\u001a\b\u0018\u00010\u0000R\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0017R\"\u0010 \u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001c\u0010\b\"\u0004\b\u001e\u0010\u001f¨\u0006!"}, d2 = {"Lcom/facebook/internal/WorkQueue$WorkNode;", "Lcom/facebook/internal/WorkQueue$WorkItem;", "Ljava/lang/Runnable;", "callback", "<init>", "(Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V", "", "cancel", "()Z", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Lcom/facebook/internal/WorkQueue;", "list", "addToFront", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/WorkQueue$WorkNode;Z)Lcom/facebook/internal/WorkQueue$WorkNode;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;", "Ljava/lang/Runnable;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/Runnable;", "<set-?>", "Lcom/facebook/internal/WorkQueue$WorkNode;", "getNext", "()Lcom/facebook/internal/WorkQueue$WorkNode;", "next", "prev", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "isRunning", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public final class WorkNode implements WorkItem {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public boolean f6848Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public WorkNode f6849Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public WorkNode f6850Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public final Runnable f6851Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public WorkNode(@NotNull Runnable runnable) {
            WorkQueue.this = r1;
            this.f6851Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = runnable;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            this.f6848Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        @Nullable
        public final WorkNode Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable WorkNode workNode) {
            boolean z;
            Companion companion = WorkQueue.Companion;
            boolean z2 = false;
            if (this.f6850Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                z = true;
            } else {
                z = false;
            }
            companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z);
            if (this.f6849Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                z2 = true;
            }
            companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z2);
            if (workNode == this && (workNode = this.f6850Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) == this) {
                workNode = null;
            }
            WorkNode workNode2 = this.f6850Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (workNode2 != null) {
                workNode2.f6849Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f6849Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            WorkNode workNode3 = this.f6849Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (workNode3 != null) {
                workNode3.f6850Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = workNode2;
            }
            this.f6849Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f6850Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            return workNode;
        }

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6848Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Runnable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f6851Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final WorkNode Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable WorkNode workNode, boolean z) {
            boolean z2;
            WorkNode workNode2;
            Companion companion = WorkQueue.Companion;
            boolean z3 = false;
            if (this.f6850Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z2);
            if (this.f6849Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                z3 = true;
            }
            companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z3);
            if (workNode == null) {
                this.f6849Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this;
                this.f6850Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this;
                workNode = this;
            } else {
                this.f6850Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = workNode;
                WorkNode workNode3 = workNode.f6849Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                this.f6849Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = workNode3;
                if (workNode3 != null) {
                    workNode3.f6850Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this;
                }
                WorkNode workNode4 = this.f6850Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (workNode4 != null) {
                    if (workNode3 == null) {
                        workNode2 = null;
                    } else {
                        workNode2 = workNode3.f6850Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    }
                    workNode4.f6849Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = workNode2;
                }
            }
            if (z) {
                return this;
            }
            return workNode;
        }

        @Override // com.facebook.internal.WorkQueue.WorkItem
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            ReentrantLock reentrantLock = WorkQueue.this.f6844Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            WorkQueue workQueue = WorkQueue.this;
            reentrantLock.lock();
            try {
                if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    workQueue.f6843Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(workQueue.f6843Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    workQueue.f6843Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(workQueue.f6843Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, true);
                }
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }

        @Override // com.facebook.internal.WorkQueue.WorkItem
        public boolean cancel() {
            ReentrantLock reentrantLock = WorkQueue.this.f6844Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            WorkQueue workQueue = WorkQueue.this;
            reentrantLock.lock();
            try {
                if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    workQueue.f6843Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(workQueue.f6843Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    reentrantLock.unlock();
                    return true;
                }
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
                return false;
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
    }

    @JvmOverloads
    public WorkQueue() {
        this(0, null, 3, null);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(WorkNode workNode, WorkQueue workQueue) {
        try {
            workNode.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().run();
        } finally {
            workQueue.Wwwwwwwwwwwwwwwwwwwwwwwwww(workNode);
        }
    }

    public static /* synthetic */ WorkItem Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(WorkQueue workQueue, Runnable runnable, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return workQueue.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(runnable, z);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwww(null);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(WorkNode workNode) {
        WorkNode workNode2;
        this.f6844Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.lock();
        if (workNode != null) {
            this.f6842Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = workNode.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6842Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            this.f6841Wwwwwwwwwwwwwwwwwwwwwwwwwwwww--;
        }
        if (this.f6841Wwwwwwwwwwwwwwwwwwwwwwwwwwwww < this.f6846Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            workNode2 = this.f6843Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (workNode2 != null) {
                this.f6843Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = workNode2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(workNode2);
                this.f6842Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = workNode2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6842Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, false);
                this.f6841Wwwwwwwwwwwwwwwwwwwwwwwwwwwww++;
                workNode2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(true);
            }
        } else {
            workNode2 = null;
        }
        this.f6844Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.unlock();
        if (workNode2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww(workNode2);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(final WorkNode workNode) {
        this.f6845Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.execute(new Runnable() { // from class: com.facebook.internal.Wwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                WorkQueue.Wwwwwwwwwwwwwwwwwwwwwwwwwww(WorkQueue.WorkNode.this, this);
            }
        });
    }

    @JvmOverloads
    @NotNull
    public final WorkItem Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Runnable runnable, boolean z) {
        WorkNode workNode = new WorkNode(runnable);
        ReentrantLock reentrantLock = this.f6844Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        reentrantLock.lock();
        try {
            this.f6843Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = workNode.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6843Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, z);
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            Wwwwwwwwwwwwwwwwwwwwwwwww();
            return workNode;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @JvmOverloads
    public WorkQueue(int i, @NotNull Executor executor) {
        this.f6846Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f6845Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = executor;
        this.f6844Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ReentrantLock();
    }

    public /* synthetic */ WorkQueue(int i, Executor executor, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 8 : i, (i2 & 2) != 0 ? FacebookSdk.Wwwwwwwwwwwwww() : executor);
    }
}
