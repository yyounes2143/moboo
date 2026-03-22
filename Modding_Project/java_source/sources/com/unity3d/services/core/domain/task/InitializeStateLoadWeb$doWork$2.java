package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.domain.task.InitializeStateLoadWeb;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/unity3d/services/core/domain/task/InitializeStateLoadWeb$LoadWebResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.services.core.domain.task.InitializeStateLoadWeb$doWork$2", f = "InitializeStateLoadWeb.kt", i = {0, 0, 1}, l = {46, 64, 71}, m = "invokeSuspend", n = {"$this$withContext", AdActivity.REQUEST_KEY_EXTRA, AdActivity.REQUEST_KEY_EXTRA}, s = {"L$0", "L$3", "L$2"})
@SourceDebugExtension({"SMAP\nInitializeStateLoadWeb.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializeStateLoadWeb.kt\ncom/unity3d/services/core/domain/task/InitializeStateLoadWeb$doWork$2\n+ 2 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,109:1\n24#2:110\n14#2,12:111\n26#2:124\n1#3:123\n*S KotlinDebug\n*F\n+ 1 InitializeStateLoadWeb.kt\ncom/unity3d/services/core/domain/task/InitializeStateLoadWeb$doWork$2\n*L\n40#1:110\n40#1:111,12\n40#1:124\n40#1:123\n*E\n"})
/* loaded from: classes6.dex */
public final class InitializeStateLoadWeb$doWork$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends InitializeStateLoadWeb.LoadWebResult>>, Object> {
    final /* synthetic */ InitializeStateLoadWeb.Params $params;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ InitializeStateLoadWeb this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateLoadWeb$doWork$2(InitializeStateLoadWeb.Params params, InitializeStateLoadWeb initializeStateLoadWeb, Continuation<? super InitializeStateLoadWeb$doWork$2> continuation) {
        super(2, continuation);
        this.$params = params;
        this.this$0 = initializeStateLoadWeb;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        InitializeStateLoadWeb$doWork$2 initializeStateLoadWeb$doWork$2 = new InitializeStateLoadWeb$doWork$2(this.$params, this.this$0, continuation);
        initializeStateLoadWeb$doWork$2.L$0 = obj;
        return initializeStateLoadWeb$doWork$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends InitializeStateLoadWeb.LoadWebResult>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Result<InitializeStateLoadWeb.LoadWebResult>>) continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0178, code lost:
        if (r0 == r8) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01c8, code lost:
        com.unity3d.services.core.misc.Utilities.writeFile(new java.io.File(com.unity3d.services.core.properties.SdkProperties.getLocalWebViewFile()), r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0124 A[Catch: all -> 0x004a, TRY_ENTER, TryCatch #5 {CancellationException -> 0x0023, all -> 0x0020, blocks: (B:8:0x0018, B:50:0x017b, B:54:0x019e, B:56:0x01a8, B:59:0x01b3, B:60:0x01c5, B:62:0x01c8, B:63:0x01d4, B:45:0x0156, B:47:0x015c, B:51:0x017e, B:52:0x0190, B:37:0x011e, B:53:0x0191, B:36:0x0114, B:27:0x0075, B:17:0x003d, B:42:0x0143, B:39:0x0124), top: B:79:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x015c A[Catch: all -> 0x0020, CancellationException -> 0x0023, TryCatch #5 {CancellationException -> 0x0023, all -> 0x0020, blocks: (B:8:0x0018, B:50:0x017b, B:54:0x019e, B:56:0x01a8, B:59:0x01b3, B:60:0x01c5, B:62:0x01c8, B:63:0x01d4, B:45:0x0156, B:47:0x015c, B:51:0x017e, B:52:0x0190, B:37:0x011e, B:53:0x0191, B:36:0x0114, B:27:0x0075, B:17:0x003d, B:42:0x0143, B:39:0x0124), top: B:79:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x017e A[Catch: all -> 0x0020, CancellationException -> 0x0023, TryCatch #5 {CancellationException -> 0x0023, all -> 0x0020, blocks: (B:8:0x0018, B:50:0x017b, B:54:0x019e, B:56:0x01a8, B:59:0x01b3, B:60:0x01c5, B:62:0x01c8, B:63:0x01d4, B:45:0x0156, B:47:0x015c, B:51:0x017e, B:52:0x0190, B:37:0x011e, B:53:0x0191, B:36:0x0114, B:27:0x0075, B:17:0x003d, B:42:0x0143, B:39:0x0124), top: B:79:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0191 A[Catch: all -> 0x0020, CancellationException -> 0x0023, TryCatch #5 {CancellationException -> 0x0023, all -> 0x0020, blocks: (B:8:0x0018, B:50:0x017b, B:54:0x019e, B:56:0x01a8, B:59:0x01b3, B:60:0x01c5, B:62:0x01c8, B:63:0x01d4, B:45:0x0156, B:47:0x015c, B:51:0x017e, B:52:0x0190, B:37:0x011e, B:53:0x0191, B:36:0x0114, B:27:0x0075, B:17:0x003d, B:42:0x0143, B:39:0x0124), top: B:79:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01f7  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r35) {
        /*
            Method dump skipped, instructions count: 523
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.domain.task.InitializeStateLoadWeb$doWork$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Result<InitializeStateLoadWeb.LoadWebResult>> continuation) {
        return ((InitializeStateLoadWeb$doWork$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
