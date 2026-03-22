package com.unity3d.ads.core.domain.work;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.unity3d.ads.core.data.datasource.UniversalRequestDataSource;
import com.unity3d.ads.core.domain.events.UniversalRequestEventSender;
import com.unity3d.ads.gatewayclient.RequestPolicy;
import com.unity3d.services.core.di.IServiceComponent;
import com.unity3d.services.core.di.IServiceProvider;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0011\u0010\u001b\u001a\u00020\u001cH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u001dR\u001a\u0010\b\u001a\u00020\tX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001b\u0010\u000e\u001a\u00020\u000f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0014\u001a\u00020\u00158FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0005\u001a\u00020\u0006X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {"Lcom/unity3d/ads/core/domain/work/UniversalRequestJob;", "Landroidx/work/CoroutineWorker;", "Lcom/unity3d/services/core/di/IServiceComponent;", "context", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "requestPolicy", "Lcom/unity3d/ads/gatewayclient/RequestPolicy;", "getRequestPolicy", "()Lcom/unity3d/ads/gatewayclient/RequestPolicy;", "setRequestPolicy", "(Lcom/unity3d/ads/gatewayclient/RequestPolicy;)V", "universalRequestDataSource", "Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;", "getUniversalRequestDataSource", "()Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;", "universalRequestDataSource$delegate", "Lkotlin/Lazy;", "universalRequestEventSender", "Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender;", "getUniversalRequestEventSender", "()Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender;", "universalRequestEventSender$delegate", "getWorkerParams", "()Landroidx/work/WorkerParameters;", "doWork", "Landroidx/work/ListenableWorker$Result;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUniversalRequestJob.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalRequestJob.kt\ncom/unity3d/ads/core/domain/work/UniversalRequestJob\n+ 2 IServiceComponent.kt\ncom/unity3d/services/core/di/IServiceComponentKt\n*L\n1#1,37:1\n29#2,5:38\n29#2,5:43\n*S KotlinDebug\n*F\n+ 1 UniversalRequestJob.kt\ncom/unity3d/ads/core/domain/work/UniversalRequestJob\n*L\n19#1:38,5\n20#1:43,5\n*E\n"})
/* loaded from: classes6.dex */
public abstract class UniversalRequestJob extends CoroutineWorker implements IServiceComponent {
    public RequestPolicy requestPolicy;
    @NotNull
    private final Lazy universalRequestDataSource$delegate;
    @NotNull
    private final Lazy universalRequestEventSender$delegate;
    @NotNull
    private final WorkerParameters workerParams;

    public UniversalRequestJob(@NotNull Context context, @NotNull WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.workerParams = workerParameters;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.universalRequestEventSender$delegate = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<UniversalRequestEventSender>() { // from class: com.unity3d.ads.core.domain.work.UniversalRequestJob$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.unity3d.ads.core.domain.events.UniversalRequestEventSender] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final UniversalRequestEventSender invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(UniversalRequestEventSender.class));
            }
        });
        this.universalRequestDataSource$delegate = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<UniversalRequestDataSource>() { // from class: com.unity3d.ads.core.domain.work.UniversalRequestJob$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.unity3d.ads.core.data.datasource.UniversalRequestDataSource] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final UniversalRequestDataSource invoke() {
                IServiceComponent iServiceComponent = IServiceComponent.this;
                return iServiceComponent.getServiceProvider().getRegistry().getService(r2, Reflection.getOrCreateKotlinClass(UniversalRequestDataSource.class));
            }
        });
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:1|(2:3|(10:5|6|7|(1:(1:(1:(3:12|13|14)(2:16|17))(5:18|19|20|21|(1:23)(2:26|27)))(1:29))(2:34|(2:36|37)(3:38|(1:40)|25))|30|31|(2:33|25)|20|21|(0)(0)))|43|6|7|(0)(0)|30|31|(0)|20|21|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0044, code lost:
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a5, code lost:
        r4 = kotlin.Result.Companion;
        r9 = kotlin.Result.m438constructorimpl(kotlin.ResultKt.createFailure(r9));
        r2 = r2;
        r8 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c4, code lost:
        if (r9.remove(r8, r0) == r1) goto L25;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00cc  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r8v13, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.lang.Object doWork$suspendImpl(com.unity3d.ads.core.domain.work.UniversalRequestJob r8, kotlin.coroutines.Continuation<? super androidx.work.ListenableWorker.Result> r9) {
        /*
            boolean r0 = r9 instanceof com.unity3d.ads.core.domain.work.UniversalRequestJob$doWork$1
            if (r0 == 0) goto L13
            r0 = r9
            com.unity3d.ads.core.domain.work.UniversalRequestJob$doWork$1 r0 = (com.unity3d.ads.core.domain.work.UniversalRequestJob$doWork$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.work.UniversalRequestJob$doWork$1 r0 = new com.unity3d.ads.core.domain.work.UniversalRequestJob$doWork$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L52
            if (r2 == r5) goto L46
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            kotlin.ResultKt.throwOnFailure(r9)
            goto Lc7
        L30:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L38:
            java.lang.Object r8 = r0.L$1
            java.lang.String r8 = (java.lang.String) r8
            java.lang.Object r2 = r0.L$0
            com.unity3d.ads.core.domain.work.UniversalRequestJob r2 = (com.unity3d.ads.core.domain.work.UniversalRequestJob) r2
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L44
            goto L9e
        L44:
            r9 = move-exception
            goto La5
        L46:
            java.lang.Object r8 = r0.L$1
            java.lang.String r8 = (java.lang.String) r8
            java.lang.Object r2 = r0.L$0
            com.unity3d.ads.core.domain.work.UniversalRequestJob r2 = (com.unity3d.ads.core.domain.work.UniversalRequestJob) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L7d
        L52:
            kotlin.ResultKt.throwOnFailure(r9)
            androidx.work.WorkerParameters r9 = r8.workerParams
            androidx.work.Data r9 = r9.getInputData()
            java.lang.String r2 = "universalRequestId"
            java.lang.String r9 = r9.getString(r2)
            if (r9 != 0) goto L68
            androidx.work.ListenableWorker$Result r8 = androidx.work.ListenableWorker.Result.success()
            return r8
        L68:
            com.unity3d.ads.core.data.datasource.UniversalRequestDataSource r2 = r8.getUniversalRequestDataSource()
            r0.L$0 = r8
            r0.L$1 = r9
            r0.label = r5
            java.lang.Object r2 = r2.get(r0)
            if (r2 != r1) goto L79
            goto Lc6
        L79:
            r7 = r2
            r2 = r8
            r8 = r9
            r9 = r7
        L7d:
            com.unity3d.ads.datastore.UniversalRequestStoreOuterClass$UniversalRequestStore r9 = (com.unity3d.ads.datastore.UniversalRequestStoreOuterClass.UniversalRequestStore) r9
            com.google.protobuf.ByteString r9 = r9.getUniversalRequestMapOrThrow(r8)
            gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest r9 = gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest.parseFrom(r9)
            kotlin.Result$Companion r5 = kotlin.Result.Companion     // Catch: java.lang.Throwable -> L44
            com.unity3d.ads.core.domain.events.UniversalRequestEventSender r5 = r2.getUniversalRequestEventSender()     // Catch: java.lang.Throwable -> L44
            com.unity3d.ads.gatewayclient.RequestPolicy r6 = r2.getRequestPolicy()     // Catch: java.lang.Throwable -> L44
            r0.L$0 = r2     // Catch: java.lang.Throwable -> L44
            r0.L$1 = r8     // Catch: java.lang.Throwable -> L44
            r0.label = r4     // Catch: java.lang.Throwable -> L44
            java.lang.Object r9 = r5.invoke(r9, r6, r0)     // Catch: java.lang.Throwable -> L44
            if (r9 != r1) goto L9e
            goto Lc6
        L9e:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L44
            java.lang.Object r9 = kotlin.Result.m438constructorimpl(r9)     // Catch: java.lang.Throwable -> L44
            goto Laf
        La5:
            kotlin.Result$Companion r4 = kotlin.Result.Companion
            java.lang.Object r9 = kotlin.ResultKt.createFailure(r9)
            java.lang.Object r9 = kotlin.Result.m438constructorimpl(r9)
        Laf:
            boolean r9 = kotlin.Result.m445isSuccessimpl(r9)
            if (r9 == 0) goto Lcc
            com.unity3d.ads.core.data.datasource.UniversalRequestDataSource r9 = r2.getUniversalRequestDataSource()
            r2 = 0
            r0.L$0 = r2
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r8 = r9.remove(r8, r0)
            if (r8 != r1) goto Lc7
        Lc6:
            return r1
        Lc7:
            androidx.work.ListenableWorker$Result r8 = androidx.work.ListenableWorker.Result.success()
            goto Ld0
        Lcc:
            androidx.work.ListenableWorker$Result r8 = androidx.work.ListenableWorker.Result.retry()
        Ld0:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.work.UniversalRequestJob.doWork$suspendImpl(com.unity3d.ads.core.domain.work.UniversalRequestJob, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.work.CoroutineWorker
    @Nullable
    public Object doWork(@NotNull Continuation<? super ListenableWorker.Result> continuation) {
        return doWork$suspendImpl(this, continuation);
    }

    @NotNull
    public final RequestPolicy getRequestPolicy() {
        RequestPolicy requestPolicy = this.requestPolicy;
        if (requestPolicy != null) {
            return requestPolicy;
        }
        return null;
    }

    @Override // com.unity3d.services.core.di.IServiceComponent
    @NotNull
    public IServiceProvider getServiceProvider() {
        return IServiceComponent.DefaultImpls.getServiceProvider(this);
    }

    @NotNull
    public final UniversalRequestDataSource getUniversalRequestDataSource() {
        return (UniversalRequestDataSource) this.universalRequestDataSource$delegate.getValue();
    }

    @NotNull
    public final UniversalRequestEventSender getUniversalRequestEventSender() {
        return (UniversalRequestEventSender) this.universalRequestEventSender$delegate.getValue();
    }

    @NotNull
    public final WorkerParameters getWorkerParams() {
        return this.workerParams;
    }

    public final void setRequestPolicy(@NotNull RequestPolicy requestPolicy) {
        this.requestPolicy = requestPolicy;
    }
}
