package androidx.work;

import androidx.tracing.Trace;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\b\u0010\u0006\u001a\u00020\u0007H\u0002\u001a\u0010\u0010\b\u001a\u0004\u0018\u00010\u0003*\u0004\u0018\u00010\tH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"DEFAULT_CONTENT_URI_TRIGGERS_WORKERS_LIMIT", "", "createDefaultExecutor", "Ljava/util/concurrent/Executor;", "isTaskExecutor", "", "createDefaultTracer", "Landroidx/work/Tracer;", "asExecutor", "Lkotlin/coroutines/CoroutineContext;", "work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ConfigurationKt {
    public static final int DEFAULT_CONTENT_URI_TRIGGERS_WORKERS_LIMIT = 8;

    public static final /* synthetic */ Executor access$asExecutor(CoroutineContext coroutineContext) {
        return asExecutor(coroutineContext);
    }

    public static final /* synthetic */ Executor access$createDefaultExecutor(boolean z) {
        return createDefaultExecutor(z);
    }

    public static final /* synthetic */ Tracer access$createDefaultTracer() {
        return createDefaultTracer();
    }

    public static final Executor asExecutor(CoroutineContext coroutineContext) {
        ContinuationInterceptor continuationInterceptor;
        CoroutineDispatcher coroutineDispatcher;
        if (coroutineContext != null) {
            continuationInterceptor = (ContinuationInterceptor) coroutineContext.get(ContinuationInterceptor.Key);
        } else {
            continuationInterceptor = null;
        }
        if (continuationInterceptor instanceof CoroutineDispatcher) {
            coroutineDispatcher = (CoroutineDispatcher) continuationInterceptor;
        } else {
            coroutineDispatcher = null;
        }
        if (coroutineDispatcher == null) {
            return null;
        }
        return ExecutorsKt.asExecutor(coroutineDispatcher);
    }

    public static final Executor createDefaultExecutor(final boolean z) {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new ThreadFactory() { // from class: androidx.work.ConfigurationKt$createDefaultExecutor$factory$1
            private final AtomicInteger threadCount = new AtomicInteger(0);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                String str;
                if (z) {
                    str = "WM.task-";
                } else {
                    str = "androidx.work-";
                }
                return new Thread(runnable, str + this.threadCount.incrementAndGet());
            }
        });
    }

    public static final Tracer createDefaultTracer() {
        return new Tracer() { // from class: androidx.work.ConfigurationKt$createDefaultTracer$tracer$1
            @Override // androidx.work.Tracer
            public void beginAsyncSection(String str, int i) {
                Trace.beginAsyncSection(str, i);
            }

            @Override // androidx.work.Tracer
            public void beginSection(String str) {
                Trace.beginSection(str);
            }

            @Override // androidx.work.Tracer
            public void endAsyncSection(String str, int i) {
                Trace.endAsyncSection(str, i);
            }

            @Override // androidx.work.Tracer
            public void endSection() {
                Trace.endSection();
            }

            @Override // androidx.work.Tracer
            public boolean isEnabled() {
                return Trace.isEnabled();
            }
        };
    }
}
