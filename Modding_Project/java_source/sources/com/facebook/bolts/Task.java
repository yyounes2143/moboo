package com.facebook.bolts;

import com.facebook.bolts.BoltsExecutors;
import com.facebook.bolts.Task;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u0000 N*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0003NOPB\t\b\u0010¢\u0006\u0004\b\u0003\u0010\u0004B\u0013\b\u0012\u0012\b\u0010\u0005\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0003\u0010\u0006B\u0011\b\u0012\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0003\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\u0004J?\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00010\u0000\"\u0004\b\u0001\u0010\f2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014J-\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00010\u0000\"\u0004\b\u0001\u0010\f2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r¢\u0006\u0004\b\u0015\u0010\u0016J;\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00010\u0000\"\u0004\b\u0001\u0010\f2\u0018\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00000\r2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0017\u0010\u0018JE\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00010\u0000\"\u0004\b\u0001\u0010\f2\u0018\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00000\r2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0019\u0010\u0014J3\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00010\u0000\"\u0004\b\u0001\u0010\f2\u0018\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00000\r¢\u0006\u0004\b\u001a\u0010\u0016J;\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00010\u0000\"\u0004\b\u0001\u0010\f2\u0018\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00000\r2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u001b\u0010\u0018JE\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00010\u0000\"\u0004\b\u0001\u0010\f2\u0018\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00000\r2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u001c\u0010\u0014J\r\u0010\u001d\u001a\u00020\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u00072\b\u0010\u0005\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u001f\u0010 J\u001d\u0010$\u001a\u00020\u00072\u000e\u0010#\u001a\n\u0018\u00010!j\u0004\u0018\u0001`\"¢\u0006\u0004\b$\u0010%R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u001c\u0010.\u001a\n +*\u0004\u0018\u00010*0*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u00101\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00103\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00100R\u0018\u00106\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u001e\u00109\u001a\n\u0018\u00010!j\u0004\u0018\u0001`\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0016\u0010;\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00100R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R*\u0010C\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020A0\r\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010BR\u0011\u0010E\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\bD\u0010\u001eR\u0011\u0010G\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\bF\u0010\u001eR\u0011\u0010I\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\bH\u0010\u001eR\u0013\u0010\u0005\u001a\u0004\u0018\u00018\u00008F¢\u0006\u0006\u001a\u0004\bJ\u0010KR\u0019\u0010#\u001a\n\u0018\u00010!j\u0004\u0018\u0001`\"8F¢\u0006\u0006\u001a\u0004\bL\u0010M¨\u0006Q"}, d2 = {"Lcom/facebook/bolts/Task;", "TResult", "", "<init>", "()V", "result", "(Ljava/lang/Object;)V", "", "cancelled", "(Z)V", "", "Wwwwwwwwwww", "TContinuationResult", "Lcom/facebook/bolts/Continuation;", "continuation", "Ljava/util/concurrent/Executor;", "executor", "Lcom/facebook/bolts/CancellationToken;", "ct", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;", "Wwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/bolts/Task;", "Wwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwww", "Wwwwwwwwwwwww", "Wwwwwwwwww", "()Z", "Wwwwwwww", "(Ljava/lang/Object;)Z", "Ljava/lang/Exception;", "Lkotlin/Exception;", "error", "Wwwwwwwww", "(Ljava/lang/Exception;)Z", "Ljava/util/concurrent/locks/ReentrantLock;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/locks/ReentrantLock;", "lock", "Ljava/util/concurrent/locks/Condition;", "kotlin.jvm.PlatformType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/locks/Condition;", "condition", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "completeField", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "cancelledField", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Object;", "resultField", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Exception;", "errorField", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "errorHasBeenObserved", "Lcom/facebook/bolts/UnobservedErrorNotifier;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/bolts/UnobservedErrorNotifier;", "unobservedErrorNotifier", "", "Ljava/lang/Void;", "Ljava/util/List;", "continuations", "Wwwwwwwwwwwwwwww", "isCompleted", "Wwwwwwwwwwwwwwwww", "isCancelled", "Wwwwwwwwwwwwwww", "isFaulted", "Wwwwwwwwwwwwwwwwww", "()Ljava/lang/Object;", "Wwwwwwwwwwwwwwwwwww", "()Ljava/lang/Exception;", "Companion", "TaskCompletionSource", "UnobservedExceptionHandler", "facebook-bolts_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class Task<TResult> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Task<?> f6563Wwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Task<Boolean> f6564Wwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Task<Boolean> f6565Wwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Task<?> f6566Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile UnobservedExceptionHandler f6567Wwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Executor f6568Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Executor f6569Wwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ExecutorService f6570Wwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<Continuation<TResult, Void>> f6571Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public UnobservedErrorNotifier f6572Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f6573Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Exception f6574Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public TResult f6575Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f6576Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f6577Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Condition f6578Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ReentrantLock f6579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J]\u0010\u0011\u001a\u00020\u0010\"\u0004\b\u0001\u0010\u0004\"\u0004\b\u0002\u0010\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u00062\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00010\b2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00020\n2\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012Jc\u0010\u0013\u001a\u00020\u0010\"\u0004\b\u0001\u0010\u0004\"\u0004\b\u0002\u0010\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00010\u00062\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00028\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\n0\b2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00020\n2\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\u0011\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0007¢\u0006\u0004\b\u0015\u0010\u0016J%\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00010\n\"\u0004\b\u0001\u0010\u00052\b\u0010\u0017\u001a\u0004\u0018\u00018\u0001H\u0007¢\u0006\u0004\b\u0018\u0010\u0019J+\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00010\n\"\u0004\b\u0001\u0010\u00052\u000e\u0010\u001c\u001a\n\u0018\u00010\u001aj\u0004\u0018\u0001`\u001bH\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u001b\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00010\n\"\u0004\b\u0001\u0010\u0005H\u0007¢\u0006\u0004\b\u001f\u0010 R\u0014\u0010\"\u001a\u00020!8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010$\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010&\u001a\u0006\u0012\u0002\b\u00030\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u001a\u0010)\u001a\b\u0012\u0004\u0012\u00020(0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010'R\u0018\u0010*\u001a\u0006\u0012\u0002\b\u00030\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010'R\u001a\u0010+\u001a\b\u0012\u0004\u0012\u00020(0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010'R\u0014\u0010,\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b,\u0010%R\u0018\u0010-\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.¨\u0006/"}, d2 = {"Lcom/facebook/bolts/Task$Companion;", "", "<init>", "()V", "TContinuationResult", "TResult", "Lcom/facebook/bolts/TaskCompletionSource;", "tcs", "Lcom/facebook/bolts/Continuation;", "continuation", "Lcom/facebook/bolts/Task;", "task", "Ljava/util/concurrent/Executor;", "executor", "Lcom/facebook/bolts/CancellationToken;", "ct", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/bolts/Task$UnobservedExceptionHandler;", "Wwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/bolts/Task$UnobservedExceptionHandler;", "value", "Wwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)Lcom/facebook/bolts/Task;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "error", "Wwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Exception;)Lcom/facebook/bolts/Task;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/bolts/Task;", "Ljava/util/concurrent/ExecutorService;", "BACKGROUND_EXECUTOR", "Ljava/util/concurrent/ExecutorService;", "IMMEDIATE_EXECUTOR", "Ljava/util/concurrent/Executor;", "TASK_CANCELLED", "Lcom/facebook/bolts/Task;", "", "TASK_FALSE", "TASK_NULL", "TASK_TRUE", "UI_THREAD_EXECUTOR", "unobservedExceptionHandler", "Lcom/facebook/bolts/Task$UnobservedExceptionHandler;", "facebook-bolts_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static final void Wwwwwwwwwwwwwwwwwwwwwwww(CancellationToken cancellationToken, com.facebook.bolts.TaskCompletionSource taskCompletionSource, Continuation continuation, Task task) {
            if (cancellationToken != null && cancellationToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                taskCompletionSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                return;
            }
            try {
                taskCompletionSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(continuation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(task));
            } catch (CancellationException unused) {
                taskCompletionSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } catch (Exception e) {
                taskCompletionSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static final Void Wwwwwwwwwwwwwwwwwwwwwwwwww(CancellationToken cancellationToken, com.facebook.bolts.TaskCompletionSource taskCompletionSource, Task task) {
            if (cancellationToken != null && cancellationToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                taskCompletionSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                return null;
            }
            if (task.Wwwwwwwwwwwwwwwww()) {
                taskCompletionSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } else if (task.Wwwwwwwwwwwwwww()) {
                taskCompletionSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(task.Wwwwwwwwwwwwwwwwwww());
            } else {
                taskCompletionSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(task.Wwwwwwwwwwwwwwwwww());
            }
            return null;
        }

        public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(final CancellationToken cancellationToken, final com.facebook.bolts.TaskCompletionSource taskCompletionSource, Continuation continuation, Task task) {
            if (cancellationToken != null && cancellationToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                taskCompletionSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                return;
            }
            try {
                Task task2 = (Task) continuation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(task);
                if (task2 == null) {
                    taskCompletionSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
                } else {
                    task2.Wwwwwwwwwwwwwwwwwwwwwwwwww(new Continuation() { // from class: com.facebook.bolts.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                        @Override // com.facebook.bolts.Continuation
                        public final Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Task task3) {
                            Void Wwwwwwwwwwwwwwwwwwwwwwwwww2;
                            Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Task.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwww(CancellationToken.this, taskCompletionSource, task3);
                            return Wwwwwwwwwwwwwwwwwwwwwwwwww2;
                        }
                    });
                }
            } catch (CancellationException unused) {
                taskCompletionSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } catch (Exception e) {
                taskCompletionSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
            }
        }

        @JvmStatic
        @Nullable
        public final UnobservedExceptionHandler Wwwwwwwwwwwwwwwwwwwww() {
            return Task.f6567Wwwwwwwwwwwwwwwwwwwwww;
        }

        @JvmStatic
        @NotNull
        public final <TResult> Task<TResult> Wwwwwwwwwwwwwwwwwwwwww(@Nullable TResult tresult) {
            if (tresult == null) {
                return Task.f6566Wwwwwwwwwwwwwwwwwwwww;
            }
            if (tresult instanceof Boolean) {
                return ((Boolean) tresult).booleanValue() ? Task.f6565Wwwwwwwwwwwwwwwwwwww : Task.f6564Wwwwwwwwwwwwwwwwwww;
            }
            com.facebook.bolts.TaskCompletionSource taskCompletionSource = new com.facebook.bolts.TaskCompletionSource();
            taskCompletionSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(tresult);
            return taskCompletionSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @JvmStatic
        @NotNull
        public final <TResult> Task<TResult> Wwwwwwwwwwwwwwwwwwwwwww(@Nullable Exception exc) {
            com.facebook.bolts.TaskCompletionSource taskCompletionSource = new com.facebook.bolts.TaskCompletionSource();
            taskCompletionSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exc);
            return taskCompletionSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        public final <TContinuationResult, TResult> void Wwwwwwwwwwwwwwwwwwwwwwwww(final com.facebook.bolts.TaskCompletionSource<TContinuationResult> taskCompletionSource, final Continuation<TResult, TContinuationResult> continuation, final Task<TResult> task, Executor executor, final CancellationToken cancellationToken) {
            try {
                executor.execute(new Runnable() { // from class: com.facebook.bolts.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        Task.Companion.Wwwwwwwwwwwwwwwwwwwwwwww(CancellationToken.this, taskCompletionSource, continuation, task);
                    }
                });
            } catch (Exception e) {
                taskCompletionSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ExecutorException(e));
            }
        }

        public final <TContinuationResult, TResult> void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(final com.facebook.bolts.TaskCompletionSource<TContinuationResult> taskCompletionSource, final Continuation<TResult, Task<TContinuationResult>> continuation, final Task<TResult> task, Executor executor, final CancellationToken cancellationToken) {
            try {
                executor.execute(new Runnable() { // from class: com.facebook.bolts.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        Task.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(CancellationToken.this, taskCompletionSource, continuation, task);
                    }
                });
            } catch (Exception e) {
                taskCompletionSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ExecutorException(e));
            }
        }

        @JvmStatic
        @NotNull
        public final <TResult> Task<TResult> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return Task.f6563Wwwwwwwwwwwwwwwwww;
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0087\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"Lcom/facebook/bolts/Task$TaskCompletionSource;", "Lcom/facebook/bolts/TaskCompletionSource;", "facebook-bolts_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    @Deprecated(message = "Please use [TaskCompletionSource] instead. ")
    /* loaded from: classes4.dex */
    public final class TaskCompletionSource extends com.facebook.bolts.TaskCompletionSource<TResult> {
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u00002\u00020\u0001J#\u0010\u0007\u001a\u00020\u00062\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/facebook/bolts/Task$UnobservedExceptionHandler;", "", "Lcom/facebook/bolts/Task;", "t", "Lcom/facebook/bolts/UnobservedTaskException;", "e", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/bolts/Task;Lcom/facebook/bolts/UnobservedTaskException;)V", "facebook-bolts_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface UnobservedExceptionHandler {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Task<?> task, @NotNull UnobservedTaskException unobservedTaskException);
    }

    static {
        BoltsExecutors.Companion companion = BoltsExecutors.Companion;
        f6570Wwwwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        f6569Wwwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        f6568Wwwwwwwwwwwwwwwwwwwwwww = AndroidExecutors.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        f6566Wwwwwwwwwwwwwwwwwwwww = new Task<>((Object) null);
        f6565Wwwwwwwwwwwwwwwwwwww = new Task<>(Boolean.TRUE);
        f6564Wwwwwwwwwwwwwwwwwww = new Task<>(Boolean.FALSE);
        f6563Wwwwwwwwwwwwwwwwww = new Task<>(true);
    }

    public Task() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f6579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = reentrantLock;
        this.f6578Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = reentrantLock.newCondition();
        this.f6571Wwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
    }

    public static final Task Wwwwwwwwwwww(CancellationToken cancellationToken, Continuation continuation, Task task) {
        if (cancellationToken != null && cancellationToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (task.Wwwwwwwwwwwwwww()) {
            return Companion.Wwwwwwwwwwwwwwwwwwwwwww(task.Wwwwwwwwwwwwwwwwwww());
        }
        if (task.Wwwwwwwwwwwwwwwww()) {
            return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return task.Wwwwwwwwwwwwwwwwwwwwwww(continuation);
    }

    public static final Void Wwwwwwwwwwwwwwwwwwww(com.facebook.bolts.TaskCompletionSource taskCompletionSource, Continuation continuation, Executor executor, CancellationToken cancellationToken, Task task) {
        Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(taskCompletionSource, continuation, task, executor, cancellationToken);
        return null;
    }

    public static final Void Wwwwwwwwwwwwwwwwwwwwwwww(com.facebook.bolts.TaskCompletionSource taskCompletionSource, Continuation continuation, Executor executor, CancellationToken cancellationToken, Task task) {
        Companion.Wwwwwwwwwwwwwwwwwwwwwwwww(taskCompletionSource, continuation, task, executor, cancellationToken);
        return null;
    }

    public final boolean Wwwwwwww(@Nullable TResult tresult) {
        ReentrantLock reentrantLock = this.f6579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        reentrantLock.lock();
        try {
            if (this.f6577Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                reentrantLock.unlock();
                return false;
            }
            this.f6577Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            this.f6575Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = tresult;
            this.f6578Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.signalAll();
            Wwwwwwwwwww();
            return true;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean Wwwwwwwww(@Nullable Exception exc) {
        ReentrantLock reentrantLock = this.f6579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        reentrantLock.lock();
        try {
            if (this.f6577Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return false;
            }
            this.f6577Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            this.f6574Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = exc;
            this.f6573Wwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
            this.f6578Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.signalAll();
            Wwwwwwwwwww();
            if (!this.f6573Wwwwwwwwwwwwwwwwwwwwwwwwwwww && f6567Wwwwwwwwwwwwwwwwwwwwww != null) {
                this.f6572Wwwwwwwwwwwwwwwwwwwwwwwwwww = new UnobservedErrorNotifier(this);
            }
            return true;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean Wwwwwwwwww() {
        ReentrantLock reentrantLock = this.f6579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        reentrantLock.lock();
        try {
            if (this.f6577Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                reentrantLock.unlock();
                return false;
            }
            this.f6577Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            this.f6576Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            this.f6578Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.signalAll();
            Wwwwwwwwwww();
            return true;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void Wwwwwwwwwww() {
        ReentrantLock reentrantLock = this.f6579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        reentrantLock.lock();
        try {
            List<Continuation<TResult, Void>> list = this.f6571Wwwwwwwwwwwwwwwwwwwwwwwwww;
            if (list != null) {
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    try {
                        ((Continuation) it.next()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
                    } catch (RuntimeException e) {
                        throw e;
                    } catch (Throwable th) {
                        throw new RuntimeException(th);
                    }
                }
            }
            this.f6571Wwwwwwwwwwwwwwwwwwwwwwwwww = null;
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    @NotNull
    public final <TContinuationResult> Task<TContinuationResult> Wwwwwwwwwwwww(@NotNull final Continuation<TResult, Task<TContinuationResult>> continuation, @NotNull Executor executor, @Nullable final CancellationToken cancellationToken) {
        return Wwwwwwwwwwwwwwwwwwwwww(new Continuation() { // from class: com.facebook.bolts.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.facebook.bolts.Continuation
            public final Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Task task) {
                Task Wwwwwwwwwwww2;
                Wwwwwwwwwwww2 = Task.Wwwwwwwwwwww(CancellationToken.this, continuation, task);
                return Wwwwwwwwwwww2;
            }
        }, executor);
    }

    @NotNull
    public final <TContinuationResult> Task<TContinuationResult> Wwwwwwwwwwwwww(@NotNull Continuation<TResult, Task<TContinuationResult>> continuation, @NotNull Executor executor) {
        return Wwwwwwwwwwwww(continuation, executor, null);
    }

    public final boolean Wwwwwwwwwwwwwww() {
        boolean z;
        ReentrantLock reentrantLock = this.f6579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        reentrantLock.lock();
        try {
            if (this.f6574Wwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                z = true;
            } else {
                z = false;
            }
            return z;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean Wwwwwwwwwwwwwwww() {
        ReentrantLock reentrantLock = this.f6579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        reentrantLock.lock();
        try {
            return this.f6577Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean Wwwwwwwwwwwwwwwww() {
        ReentrantLock reentrantLock = this.f6579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        reentrantLock.lock();
        try {
            return this.f6576Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Nullable
    public final TResult Wwwwwwwwwwwwwwwwww() {
        ReentrantLock reentrantLock = this.f6579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        reentrantLock.lock();
        try {
            return this.f6575Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Nullable
    public final Exception Wwwwwwwwwwwwwwwwwww() {
        ReentrantLock reentrantLock = this.f6579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        reentrantLock.lock();
        try {
            if (this.f6574Wwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                this.f6573Wwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                UnobservedErrorNotifier unobservedErrorNotifier = this.f6572Wwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (unobservedErrorNotifier != null) {
                    unobservedErrorNotifier.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    this.f6572Wwwwwwwwwwwwwwwwwwwwwwwwwww = null;
                }
            }
            Exception exc = this.f6574Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            reentrantLock.unlock();
            return exc;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @NotNull
    public final <TContinuationResult> Task<TContinuationResult> Wwwwwwwwwwwwwwwwwwwww(@NotNull final Continuation<TResult, Task<TContinuationResult>> continuation, @NotNull final Executor executor, @Nullable final CancellationToken cancellationToken) {
        List<Continuation<TResult, Void>> list;
        final com.facebook.bolts.TaskCompletionSource taskCompletionSource = new com.facebook.bolts.TaskCompletionSource();
        ReentrantLock reentrantLock = this.f6579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        reentrantLock.lock();
        try {
            boolean Wwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwww();
            if (!Wwwwwwwwwwwwwwww2 && (list = this.f6571Wwwwwwwwwwwwwwwwwwwwwwwwww) != null) {
                list.add(new Continuation() { // from class: com.facebook.bolts.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // com.facebook.bolts.Continuation
                    public final Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Task task) {
                        Void Wwwwwwwwwwwwwwwwwwww2;
                        Wwwwwwwwwwwwwwwwwwww2 = Task.Wwwwwwwwwwwwwwwwwwww(TaskCompletionSource.this, continuation, executor, cancellationToken, task);
                        return Wwwwwwwwwwwwwwwwwwww2;
                    }
                });
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            if (Wwwwwwwwwwwwwwww2) {
                Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(taskCompletionSource, continuation, this, executor, cancellationToken);
            }
            return taskCompletionSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @NotNull
    public final <TContinuationResult> Task<TContinuationResult> Wwwwwwwwwwwwwwwwwwwwww(@NotNull Continuation<TResult, Task<TContinuationResult>> continuation, @NotNull Executor executor) {
        return Wwwwwwwwwwwwwwwwwwwww(continuation, executor, null);
    }

    @NotNull
    public final <TContinuationResult> Task<TContinuationResult> Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Continuation<TResult, Task<TContinuationResult>> continuation) {
        return Wwwwwwwwwwwwwwwwwwwww(continuation, f6569Wwwwwwwwwwwwwwwwwwwwwwww, null);
    }

    @NotNull
    public final <TContinuationResult> Task<TContinuationResult> Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final Continuation<TResult, TContinuationResult> continuation, @NotNull final Executor executor, @Nullable final CancellationToken cancellationToken) {
        List<Continuation<TResult, Void>> list;
        final com.facebook.bolts.TaskCompletionSource taskCompletionSource = new com.facebook.bolts.TaskCompletionSource();
        ReentrantLock reentrantLock = this.f6579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        reentrantLock.lock();
        try {
            boolean Wwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwww();
            if (!Wwwwwwwwwwwwwwww2 && (list = this.f6571Wwwwwwwwwwwwwwwwwwwwwwwwww) != null) {
                list.add(new Continuation() { // from class: com.facebook.bolts.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // com.facebook.bolts.Continuation
                    public final Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Task task) {
                        Void Wwwwwwwwwwwwwwwwwwwwwwww2;
                        Wwwwwwwwwwwwwwwwwwwwwwww2 = Task.Wwwwwwwwwwwwwwwwwwwwwwww(TaskCompletionSource.this, continuation, executor, cancellationToken, task);
                        return Wwwwwwwwwwwwwwwwwwwwwwww2;
                    }
                });
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            if (Wwwwwwwwwwwwwwww2) {
                Companion.Wwwwwwwwwwwwwwwwwwwwwwwww(taskCompletionSource, continuation, this, executor, cancellationToken);
            }
            return taskCompletionSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @NotNull
    public final <TContinuationResult> Task<TContinuationResult> Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Continuation<TResult, TContinuationResult> continuation) {
        return Wwwwwwwwwwwwwwwwwwwwwwwww(continuation, f6569Wwwwwwwwwwwwwwwwwwwwwwww, null);
    }

    public Task(TResult tresult) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f6579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = reentrantLock;
        this.f6578Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = reentrantLock.newCondition();
        this.f6571Wwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
        Wwwwwwww(tresult);
    }

    public Task(boolean z) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f6579Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = reentrantLock;
        this.f6578Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = reentrantLock.newCondition();
        this.f6571Wwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
        if (z) {
            Wwwwwwwwww();
        } else {
            Wwwwwwww(null);
        }
    }
}
