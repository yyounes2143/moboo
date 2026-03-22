package com.unity3d.ads.core.data.repository;

import com.unity3d.ads.core.data.model.CacheResult;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/model/CacheResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileInternal$2", f = "AndroidCacheRepository.kt", i = {0, 1}, l = {70, 77, 89}, m = "invokeSuspend", n = {"filename", "fileResult"}, s = {"L$0", "L$0"})
/* loaded from: classes6.dex */
public final class AndroidCacheRepository$getFileInternal$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CacheResult>, Object> {
    final /* synthetic */ File $cacheDirectory;
    final /* synthetic */ int $priority;
    final /* synthetic */ String $url;
    Object L$0;
    int label;
    final /* synthetic */ AndroidCacheRepository this$0;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileInternal$2$1", f = "AndroidCacheRepository.kt", i = {}, l = {79, 85}, m = "invokeSuspend", n = {}, s = {})
    @SourceDebugExtension({"SMAP\nAndroidCacheRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidCacheRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2$1\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,132:1\n230#2,5:133\n230#2,5:138\n*S KotlinDebug\n*F\n+ 1 AndroidCacheRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2$1\n*L\n81#1:133,5\n86#1:138,5\n*E\n"})
    /* renamed from: com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileInternal$2$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ File $cacheDirectory;
        final /* synthetic */ MutableStateFlow<CacheResult> $fileResult;
        final /* synthetic */ String $filename;
        final /* synthetic */ int $priority;
        final /* synthetic */ String $url;
        int label;
        final /* synthetic */ AndroidCacheRepository this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(AndroidCacheRepository androidCacheRepository, File file, String str, String str2, int i, MutableStateFlow<CacheResult> mutableStateFlow, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.this$0 = androidCacheRepository;
            this.$cacheDirectory = file;
            this.$filename = str;
            this.$url = str2;
            this.$priority = i;
            this.$fileResult = mutableStateFlow;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@NotNull Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$cacheDirectory, this.$filename, this.$url, this.$priority, this.$fileResult, continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x003d, code lost:
            if (r11 == r0) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0070, code lost:
            if (r11 == r0) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0072, code lost:
            return r0;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r10.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L20
                if (r1 == r3) goto L1b
                if (r1 != r2) goto L13
                kotlin.ResultKt.throwOnFailure(r11)
                r8 = r10
                goto L73
            L13:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L1b:
                kotlin.ResultKt.throwOnFailure(r11)
                r8 = r10
                goto L40
            L20:
                kotlin.ResultKt.throwOnFailure(r11)
                com.unity3d.ads.core.data.repository.AndroidCacheRepository r11 = r10.this$0
                com.unity3d.ads.core.data.datasource.CacheDataSource r4 = com.unity3d.ads.core.data.repository.AndroidCacheRepository.access$getLocalCacheDataSource$p(r11)
                java.io.File r5 = r10.$cacheDirectory
                java.lang.String r6 = r10.$filename
                java.lang.String r7 = r10.$url
                int r11 = r10.$priority
                java.lang.Integer r8 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r11)
                r10.label = r3
                r9 = r10
                java.lang.Object r11 = r4.getFile(r5, r6, r7, r8, r9)
                r8 = r9
                if (r11 != r0) goto L40
                goto L72
            L40:
                com.unity3d.ads.core.data.model.CacheResult r11 = (com.unity3d.ads.core.data.model.CacheResult) r11
                boolean r1 = r11 instanceof com.unity3d.ads.core.data.model.CacheResult.Success
                if (r1 == 0) goto L58
                kotlinx.coroutines.flow.MutableStateFlow<com.unity3d.ads.core.data.model.CacheResult> r1 = r8.$fileResult
            L48:
                java.lang.Object r0 = r1.getValue()
                r2 = r0
                com.unity3d.ads.core.data.model.CacheResult r2 = (com.unity3d.ads.core.data.model.CacheResult) r2
                boolean r0 = r1.compareAndSet(r0, r11)
                if (r0 == 0) goto L48
                kotlin.Unit r11 = kotlin.Unit.INSTANCE
                return r11
            L58:
                com.unity3d.ads.core.data.repository.AndroidCacheRepository r11 = r8.this$0
                com.unity3d.ads.core.data.datasource.CacheDataSource r3 = com.unity3d.ads.core.data.repository.AndroidCacheRepository.access$getRemoteCacheDataSource$p(r11)
                java.io.File r4 = r8.$cacheDirectory
                java.lang.String r5 = r8.$filename
                java.lang.String r6 = r8.$url
                int r11 = r8.$priority
                java.lang.Integer r7 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r11)
                r8.label = r2
                java.lang.Object r11 = r3.getFile(r4, r5, r6, r7, r8)
                if (r11 != r0) goto L73
            L72:
                return r0
            L73:
                com.unity3d.ads.core.data.model.CacheResult r11 = (com.unity3d.ads.core.data.model.CacheResult) r11
                kotlinx.coroutines.flow.MutableStateFlow<com.unity3d.ads.core.data.model.CacheResult> r0 = r8.$fileResult
            L77:
                java.lang.Object r1 = r0.getValue()
                r2 = r1
                com.unity3d.ads.core.data.model.CacheResult r2 = (com.unity3d.ads.core.data.model.CacheResult) r2
                boolean r1 = r0.compareAndSet(r1, r11)
                if (r1 == 0) goto L77
                kotlin.Unit r11 = kotlin.Unit.INSTANCE
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileInternal$2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override // kotlin.jvm.functions.Function1
        @Nullable
        public final Object invoke(@Nullable Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidCacheRepository$getFileInternal$2(AndroidCacheRepository androidCacheRepository, String str, File file, int i, Continuation<? super AndroidCacheRepository$getFileInternal$2> continuation) {
        super(2, continuation);
        this.this$0 = androidCacheRepository;
        this.$url = str;
        this.$cacheDirectory = file;
        this.$priority = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new AndroidCacheRepository$getFileInternal$2(this.this$0, this.$url, this.$cacheDirectory, this.$priority, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x009a A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r19) {
        /*
            r18 = this;
            r5 = r18
            java.lang.Object r6 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r5.label
            r7 = 0
            r8 = 3
            r9 = 2
            r1 = 1
            if (r0 == 0) goto L33
            if (r0 == r1) goto L28
            if (r0 == r9) goto L20
            if (r0 != r8) goto L18
            kotlin.ResultKt.throwOnFailure(r19)
            return r19
        L18:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L20:
            java.lang.Object r0 = r5.L$0
            kotlinx.coroutines.flow.MutableStateFlow r0 = (kotlinx.coroutines.flow.MutableStateFlow) r0
            kotlin.ResultKt.throwOnFailure(r19)
            goto L8b
        L28:
            java.lang.Object r0 = r5.L$0
            java.lang.String r0 = (java.lang.String) r0
            kotlin.ResultKt.throwOnFailure(r19)
            r13 = r0
            r0 = r19
            goto L5d
        L33:
            kotlin.ResultKt.throwOnFailure(r19)
            com.unity3d.ads.core.data.repository.AndroidCacheRepository r0 = r5.this$0
            java.lang.String r2 = r5.$url
            java.lang.String r2 = r0.getFilename(r2)
            com.unity3d.ads.core.data.repository.AndroidCacheRepository r0 = r5.this$0
            com.unity3d.ads.core.data.datasource.CacheDataSource r0 = com.unity3d.ads.core.data.repository.AndroidCacheRepository.access$getLocalCacheDataSource$p(r0)
            java.io.File r3 = r5.$cacheDirectory
            r4 = r3
            java.lang.String r3 = r5.$url
            int r10 = r5.$priority
            java.lang.Integer r10 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r10)
            r5.L$0 = r2
            r5.label = r1
            r1 = r4
            r4 = r10
            java.lang.Object r0 = r0.getFile(r1, r2, r3, r4, r5)
            if (r0 != r6) goto L5c
            goto L99
        L5c:
            r13 = r2
        L5d:
            com.unity3d.ads.core.data.model.CacheResult r0 = (com.unity3d.ads.core.data.model.CacheResult) r0
            boolean r1 = r0 instanceof com.unity3d.ads.core.data.model.CacheResult.Success
            if (r1 == 0) goto L64
            return r0
        L64:
            kotlinx.coroutines.flow.MutableStateFlow r16 = kotlinx.coroutines.flow.StateFlowKt.MutableStateFlow(r7)
            com.unity3d.ads.core.data.repository.AndroidCacheRepository r0 = r5.this$0
            com.unity3d.ads.core.domain.work.DownloadPriorityQueue r0 = com.unity3d.ads.core.data.repository.AndroidCacheRepository.access$getDownloadPriorityQueue$p(r0)
            int r15 = r5.$priority
            com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileInternal$2$1 r10 = new com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileInternal$2$1
            com.unity3d.ads.core.data.repository.AndroidCacheRepository r11 = r5.this$0
            java.io.File r12 = r5.$cacheDirectory
            java.lang.String r14 = r5.$url
            r17 = 0
            r10.<init>(r11, r12, r13, r14, r15, r16, r17)
            r1 = r16
            r5.L$0 = r1
            r5.label = r9
            java.lang.Object r0 = r0.invoke(r15, r10, r5)
            if (r0 != r6) goto L8a
            goto L99
        L8a:
            r0 = r1
        L8b:
            kotlinx.coroutines.flow.Flow r0 = kotlinx.coroutines.flow.FlowKt.filterNotNull(r0)
            r5.L$0 = r7
            r5.label = r8
            java.lang.Object r0 = kotlinx.coroutines.flow.FlowKt.first(r0, r5)
            if (r0 != r6) goto L9a
        L99:
            return r6
        L9a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileInternal$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super CacheResult> continuation) {
        return ((AndroidCacheRepository$getFileInternal$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
