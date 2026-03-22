package kotlinx.coroutines.future;

import j$.util.function.BiFunction$CC;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionStage;
import java.util.concurrent.ExecutionException;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.ExceptionsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aX\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\t¢\u0006\u0002\b\f¢\u0006\u0002\u0010\r\u001a\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u000f\u001a\u0010\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u0001*\u00020\u0011\u001a\u0018\u0010\u0012\u001a\u00020\u0010*\u00020\u00112\n\u0010\u0000\u001a\u0006\u0012\u0002\b\u00030\u0001H\u0002\u001a\u001c\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00020\u000f\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0014\u001a\u001e\u0010\u0015\u001a\u0002H\u0002\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0014H\u0086@¢\u0006\u0002\u0010\u0016¨\u0006\u0017"}, d2 = {"future", "Ljava/util/concurrent/CompletableFuture;", "T", "Lkotlinx/coroutines/CoroutineScope;", "context", "Lkotlin/coroutines/CoroutineContext;", "start", "Lkotlinx/coroutines/CoroutineStart;", "block", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Ljava/util/concurrent/CompletableFuture;", "asCompletableFuture", "Lkotlinx/coroutines/Deferred;", "", "Lkotlinx/coroutines/Job;", "setupCancellation", "asDeferred", "Ljava/util/concurrent/CompletionStage;", "await", "(Ljava/util/concurrent/CompletionStage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFuture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Future.kt\nkotlinx/coroutines/future/FutureKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,208:1\n1#2:209\n426#3,11:210\n*S KotlinDebug\n*F\n+ 1 Future.kt\nkotlinx/coroutines/future/FutureKt\n*L\n168#1:210,11\n*E\n"})
/* loaded from: classes7.dex */
public final class FutureKt {
    @NotNull
    public static final <T> CompletableFuture<T> asCompletableFuture(@NotNull final Deferred<? extends T> deferred) {
        final CompletableFuture<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        setupCancellation(deferred, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        deferred.invokeOnCompletion(new Function1() { // from class: kotlinx.coroutines.future.Wwwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit asCompletableFuture$lambda$1;
                asCompletableFuture$lambda$1 = FutureKt.asCompletableFuture$lambda$1(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, deferred, (Throwable) obj);
                return asCompletableFuture$lambda$1;
            }
        });
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit asCompletableFuture$lambda$1(CompletableFuture completableFuture, Deferred deferred, Throwable th) {
        try {
            completableFuture.complete(deferred.getCompleted());
        } catch (Throwable th2) {
            completableFuture.completeExceptionally(th2);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit asCompletableFuture$lambda$2(CompletableFuture completableFuture, Throwable th) {
        if (th == null) {
            completableFuture.complete(Unit.INSTANCE);
        } else {
            completableFuture.completeExceptionally(th);
        }
        return Unit.INSTANCE;
    }

    @NotNull
    public static final <T> Deferred<T> asDeferred(@NotNull CompletionStage<T> completionStage) {
        CompletableFuture completableFuture;
        boolean isDone;
        ExecutionException executionException;
        Throwable cause;
        Object obj;
        completableFuture = completionStage.toCompletableFuture();
        isDone = completableFuture.isDone();
        if (isDone) {
            try {
                obj = completableFuture.get();
                return CompletableDeferredKt.CompletableDeferred(obj);
            } catch (Throwable th) {
                th = th;
                if (th instanceof ExecutionException) {
                    executionException = th;
                } else {
                    executionException = null;
                }
                if (executionException != null && (cause = executionException.getCause()) != null) {
                    th = cause;
                }
                CompletableDeferred CompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                CompletableDeferred$default.completeExceptionally(th);
                return CompletableDeferred$default;
            }
        }
        final CompletableDeferred CompletableDeferred$default2 = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        final Function2 function2 = new Function2() { // from class: kotlinx.coroutines.future.Wwwwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj2, Object obj3) {
                Object asDeferred$lambda$5;
                asDeferred$lambda$5 = FutureKt.asDeferred$lambda$5(CompletableDeferred.this, obj2, (Throwable) obj3);
                return asDeferred$lambda$5;
            }
        };
        completionStage.handle(new BiFunction() { // from class: kotlinx.coroutines.future.Wwwwwwwwwwwwwwwwwwww
            public /* synthetic */ BiFunction andThen(Function function) {
                return BiFunction$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj2, Object obj3) {
                Object invoke;
                invoke = Function2.this.invoke(obj2, (Throwable) obj3);
                return invoke;
            }
        });
        JobKt__JobKt.invokeOnCompletion$default(CompletableDeferred$default2, false, new CancelFutureOnCompletion(completableFuture), 1, null);
        return CompletableDeferred$default2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0015, code lost:
        r1 = r1.getCause();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object asDeferred$lambda$5(kotlinx.coroutines.CompletableDeferred r0, java.lang.Object r1, java.lang.Throwable r2) {
        /*
            if (r2 != 0) goto L7
            boolean r0 = r0.complete(r1)     // Catch: java.lang.Throwable -> L26
            goto L21
        L7:
            boolean r1 = kotlinx.coroutines.future.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)     // Catch: java.lang.Throwable -> L26
            if (r1 == 0) goto L12
            java.util.concurrent.CompletionException r1 = kotlinx.coroutines.future.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)     // Catch: java.lang.Throwable -> L26
            goto L13
        L12:
            r1 = 0
        L13:
            if (r1 == 0) goto L1d
            java.lang.Throwable r1 = kotlinx.coroutines.future.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1)     // Catch: java.lang.Throwable -> L26
            if (r1 != 0) goto L1c
            goto L1d
        L1c:
            r2 = r1
        L1d:
            boolean r0 = r0.completeExceptionally(r2)     // Catch: java.lang.Throwable -> L26
        L21:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)     // Catch: java.lang.Throwable -> L26
            return r0
        L26:
            r0 = move-exception
            kotlin.coroutines.EmptyCoroutineContext r1 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            kotlinx.coroutines.CoroutineExceptionHandlerKt.handleCoroutineException(r1, r0)
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.future.FutureKt.asDeferred$lambda$5(kotlinx.coroutines.CompletableDeferred, java.lang.Object, java.lang.Throwable):java.lang.Object");
    }

    @Nullable
    public static final <T> Object await(@NotNull CompletionStage<T> completionStage, @NotNull Continuation<? super T> continuation) {
        final CompletableFuture completableFuture;
        boolean isDone;
        Object obj;
        completableFuture = completionStage.toCompletableFuture();
        isDone = completableFuture.isDone();
        if (isDone) {
            try {
                obj = completableFuture.get();
                return obj;
            } catch (ExecutionException e) {
                Throwable cause = e.getCause();
                if (cause == null) {
                    throw e;
                }
                throw cause;
            }
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final ContinuationHandler continuationHandler = new ContinuationHandler(cancellableContinuationImpl);
        completionStage.handle(continuationHandler);
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.future.FutureKt$await$2$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                completableFuture.cancel(false);
                continuationHandler.cont = null;
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    @NotNull
    public static final <T> CompletableFuture<T> future(@NotNull CoroutineScope coroutineScope, @NotNull CoroutineContext coroutineContext, @NotNull CoroutineStart coroutineStart, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2) {
        if (!coroutineStart.isLazy()) {
            CoroutineContext newCoroutineContext = CoroutineContextKt.newCoroutineContext(coroutineScope, coroutineContext);
            CompletableFuture<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            CompletableFutureCoroutine completableFutureCoroutine = new CompletableFutureCoroutine(newCoroutineContext, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.handle((BiFunction) completableFutureCoroutine);
            completableFutureCoroutine.start(coroutineStart, completableFutureCoroutine, function2);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        throw new IllegalArgumentException((coroutineStart + " start is not supported").toString());
    }

    public static /* synthetic */ CompletableFuture future$default(CoroutineScope coroutineScope, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return future(coroutineScope, coroutineContext, coroutineStart, function2);
    }

    private static final void setupCancellation(final Job job, CompletableFuture<?> completableFuture) {
        final Function2 function2 = new Function2() { // from class: kotlinx.coroutines.future.FutureKt$setupCancellation$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke(obj, (Throwable) obj2);
                return Unit.INSTANCE;
            }

            public final void invoke(Object obj, Throwable th) {
                Job job2 = Job.this;
                if (th != null) {
                    r0 = th instanceof CancellationException ? (CancellationException) th : null;
                    if (r0 == null) {
                        r0 = ExceptionsKt.CancellationException("CompletableFuture was completed exceptionally", th);
                    }
                }
                job2.cancel(r0);
            }
        };
        completableFuture.handle((BiFunction<? super Object, Throwable, ? extends U>) new BiFunction() { // from class: kotlinx.coroutines.future.Wwwwwwwwwwwwwwwwwwwwwww
            public /* synthetic */ BiFunction andThen(Function function) {
                return BiFunction$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                Unit unit;
                unit = FutureKt.setupCancellation$lambda$3(Function2.this, obj, (Throwable) obj2);
                return unit;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setupCancellation$lambda$3(Function2 function2, Object obj, Throwable th) {
        return (Unit) function2.invoke(obj, th);
    }

    @NotNull
    public static final CompletableFuture<Unit> asCompletableFuture(@NotNull Job job) {
        final CompletableFuture<Unit> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        setupCancellation(job, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        job.invokeOnCompletion(new Function1() { // from class: kotlinx.coroutines.future.Wwwwwwwwwwwwwwwwwww
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit asCompletableFuture$lambda$2;
                asCompletableFuture$lambda$2 = FutureKt.asCompletableFuture$lambda$2(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, (Throwable) obj);
                return asCompletableFuture$lambda$2;
            }
        });
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }
}
