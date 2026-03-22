package com.unity3d.services.core.domain.task;

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
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.services.core.domain.task.InitializeSDK$doWork$2", f = "InitializeSDK.kt", i = {0, 1, 2, 2, 3, 4, 4, 5, 5, 5, 6, 6, 6, 7, 8, 9, 9, 10, 11}, l = {48, 53, 58, 60, 65, 67, 71, 74, 89, 92, 100, 103, 106}, m = "invokeSuspend", n = {"$this$withContext", "$this$withContext", "$this$withContext", "configuration", "resetResult", "$this$withContext", "configuration", "$this$withContext", "configuration", "configResult", "$this$withContext", "configuration", "configResult", "loadCacheResult", "configResult", "configResult", "loadWebResult", "configResult", "configResult"}, s = {"L$0", "L$0", "L$0", "L$2", "L$0", "L$0", "L$2", "L$0", "L$2", "L$3", "L$0", "L$2", "L$3", "L$0", "L$1", "L$1", "L$2", "L$1", "L$1"})
@SourceDebugExtension({"SMAP\nInitializeSDK.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializeSDK.kt\ncom/unity3d/services/core/domain/task/InitializeSDK$doWork$2\n+ 2 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,129:1\n24#2:130\n14#2,2:131\n16#2,10:134\n26#2:145\n1#3:133\n1#3:144\n*S KotlinDebug\n*F\n+ 1 InitializeSDK.kt\ncom/unity3d/services/core/domain/task/InitializeSDK$doWork$2\n*L\n41#1:130\n41#1:131,2\n41#1:134,10\n41#1:145\n41#1:144\n*E\n"})
/* loaded from: classes6.dex */
public final class InitializeSDK$doWork$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Unit>>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ InitializeSDK this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeSDK$doWork$2(InitializeSDK initializeSDK, Continuation<? super InitializeSDK$doWork$2> continuation) {
        super(2, continuation);
        this.this$0 = initializeSDK;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        InitializeSDK$doWork$2 initializeSDK$doWork$2 = new InitializeSDK$doWork$2(this.this$0, continuation);
        initializeSDK$doWork$2.L$0 = obj;
        return initializeSDK$doWork$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends Unit>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Result<Unit>>) continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:130:0x0355, code lost:
        if (r12 == r0) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0272 A[Catch: all -> 0x001e, CancellationException -> 0x0022, TryCatch #2 {CancellationException -> 0x0022, all -> 0x001e, blocks: (B:6:0x0013, B:132:0x0358, B:13:0x002c, B:129:0x033b, B:16:0x0037, B:124:0x0322, B:126:0x0328, B:19:0x004a, B:117:0x02ee, B:120:0x02ff, B:22:0x0055, B:112:0x02d3, B:114:0x02d9, B:26:0x0065, B:98:0x026c, B:100:0x0272, B:101:0x027d, B:29:0x007d, B:92:0x024b, B:94:0x0251, B:102:0x027e, B:104:0x0289, B:106:0x0293, B:108:0x0299, B:109:0x02b0, B:118:0x02f9, B:133:0x0362, B:134:0x0369, B:32:0x0096, B:89:0x0229, B:35:0x00a7, B:84:0x020c, B:86:0x0212, B:38:0x00b8, B:77:0x01e0, B:79:0x01e6, B:80:0x01f1, B:41:0x00ce, B:71:0x01c2, B:73:0x01c8, B:81:0x01f2, B:44:0x00e1, B:62:0x017b, B:64:0x0181, B:65:0x0199, B:68:0x01a5, B:48:0x00f6, B:58:0x015c, B:59:0x015e, B:51:0x0104, B:53:0x0121, B:55:0x0127), top: B:145:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x027e A[Catch: all -> 0x001e, CancellationException -> 0x0022, TryCatch #2 {CancellationException -> 0x0022, all -> 0x001e, blocks: (B:6:0x0013, B:132:0x0358, B:13:0x002c, B:129:0x033b, B:16:0x0037, B:124:0x0322, B:126:0x0328, B:19:0x004a, B:117:0x02ee, B:120:0x02ff, B:22:0x0055, B:112:0x02d3, B:114:0x02d9, B:26:0x0065, B:98:0x026c, B:100:0x0272, B:101:0x027d, B:29:0x007d, B:92:0x024b, B:94:0x0251, B:102:0x027e, B:104:0x0289, B:106:0x0293, B:108:0x0299, B:109:0x02b0, B:118:0x02f9, B:133:0x0362, B:134:0x0369, B:32:0x0096, B:89:0x0229, B:35:0x00a7, B:84:0x020c, B:86:0x0212, B:38:0x00b8, B:77:0x01e0, B:79:0x01e6, B:80:0x01f1, B:41:0x00ce, B:71:0x01c2, B:73:0x01c8, B:81:0x01f2, B:44:0x00e1, B:62:0x017b, B:64:0x0181, B:65:0x0199, B:68:0x01a5, B:48:0x00f6, B:58:0x015c, B:59:0x015e, B:51:0x0104, B:53:0x0121, B:55:0x0127), top: B:145:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02d9 A[Catch: all -> 0x001e, CancellationException -> 0x0022, TryCatch #2 {CancellationException -> 0x0022, all -> 0x001e, blocks: (B:6:0x0013, B:132:0x0358, B:13:0x002c, B:129:0x033b, B:16:0x0037, B:124:0x0322, B:126:0x0328, B:19:0x004a, B:117:0x02ee, B:120:0x02ff, B:22:0x0055, B:112:0x02d3, B:114:0x02d9, B:26:0x0065, B:98:0x026c, B:100:0x0272, B:101:0x027d, B:29:0x007d, B:92:0x024b, B:94:0x0251, B:102:0x027e, B:104:0x0289, B:106:0x0293, B:108:0x0299, B:109:0x02b0, B:118:0x02f9, B:133:0x0362, B:134:0x0369, B:32:0x0096, B:89:0x0229, B:35:0x00a7, B:84:0x020c, B:86:0x0212, B:38:0x00b8, B:77:0x01e0, B:79:0x01e6, B:80:0x01f1, B:41:0x00ce, B:71:0x01c2, B:73:0x01c8, B:81:0x01f2, B:44:0x00e1, B:62:0x017b, B:64:0x0181, B:65:0x0199, B:68:0x01a5, B:48:0x00f6, B:58:0x015c, B:59:0x015e, B:51:0x0104, B:53:0x0121, B:55:0x0127), top: B:145:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0328 A[Catch: all -> 0x001e, CancellationException -> 0x0022, TryCatch #2 {CancellationException -> 0x0022, all -> 0x001e, blocks: (B:6:0x0013, B:132:0x0358, B:13:0x002c, B:129:0x033b, B:16:0x0037, B:124:0x0322, B:126:0x0328, B:19:0x004a, B:117:0x02ee, B:120:0x02ff, B:22:0x0055, B:112:0x02d3, B:114:0x02d9, B:26:0x0065, B:98:0x026c, B:100:0x0272, B:101:0x027d, B:29:0x007d, B:92:0x024b, B:94:0x0251, B:102:0x027e, B:104:0x0289, B:106:0x0293, B:108:0x0299, B:109:0x02b0, B:118:0x02f9, B:133:0x0362, B:134:0x0369, B:32:0x0096, B:89:0x0229, B:35:0x00a7, B:84:0x020c, B:86:0x0212, B:38:0x00b8, B:77:0x01e0, B:79:0x01e6, B:80:0x01f1, B:41:0x00ce, B:71:0x01c2, B:73:0x01c8, B:81:0x01f2, B:44:0x00e1, B:62:0x017b, B:64:0x0181, B:65:0x0199, B:68:0x01a5, B:48:0x00f6, B:58:0x015c, B:59:0x015e, B:51:0x0104, B:53:0x0121, B:55:0x0127), top: B:145:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:146:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:147:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0181 A[Catch: all -> 0x001e, CancellationException -> 0x0022, TryCatch #2 {CancellationException -> 0x0022, all -> 0x001e, blocks: (B:6:0x0013, B:132:0x0358, B:13:0x002c, B:129:0x033b, B:16:0x0037, B:124:0x0322, B:126:0x0328, B:19:0x004a, B:117:0x02ee, B:120:0x02ff, B:22:0x0055, B:112:0x02d3, B:114:0x02d9, B:26:0x0065, B:98:0x026c, B:100:0x0272, B:101:0x027d, B:29:0x007d, B:92:0x024b, B:94:0x0251, B:102:0x027e, B:104:0x0289, B:106:0x0293, B:108:0x0299, B:109:0x02b0, B:118:0x02f9, B:133:0x0362, B:134:0x0369, B:32:0x0096, B:89:0x0229, B:35:0x00a7, B:84:0x020c, B:86:0x0212, B:38:0x00b8, B:77:0x01e0, B:79:0x01e6, B:80:0x01f1, B:41:0x00ce, B:71:0x01c2, B:73:0x01c8, B:81:0x01f2, B:44:0x00e1, B:62:0x017b, B:64:0x0181, B:65:0x0199, B:68:0x01a5, B:48:0x00f6, B:58:0x015c, B:59:0x015e, B:51:0x0104, B:53:0x0121, B:55:0x0127), top: B:145:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01c8 A[Catch: all -> 0x001e, CancellationException -> 0x0022, TryCatch #2 {CancellationException -> 0x0022, all -> 0x001e, blocks: (B:6:0x0013, B:132:0x0358, B:13:0x002c, B:129:0x033b, B:16:0x0037, B:124:0x0322, B:126:0x0328, B:19:0x004a, B:117:0x02ee, B:120:0x02ff, B:22:0x0055, B:112:0x02d3, B:114:0x02d9, B:26:0x0065, B:98:0x026c, B:100:0x0272, B:101:0x027d, B:29:0x007d, B:92:0x024b, B:94:0x0251, B:102:0x027e, B:104:0x0289, B:106:0x0293, B:108:0x0299, B:109:0x02b0, B:118:0x02f9, B:133:0x0362, B:134:0x0369, B:32:0x0096, B:89:0x0229, B:35:0x00a7, B:84:0x020c, B:86:0x0212, B:38:0x00b8, B:77:0x01e0, B:79:0x01e6, B:80:0x01f1, B:41:0x00ce, B:71:0x01c2, B:73:0x01c8, B:81:0x01f2, B:44:0x00e1, B:62:0x017b, B:64:0x0181, B:65:0x0199, B:68:0x01a5, B:48:0x00f6, B:58:0x015c, B:59:0x015e, B:51:0x0104, B:53:0x0121, B:55:0x0127), top: B:145:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01e6 A[Catch: all -> 0x001e, CancellationException -> 0x0022, TryCatch #2 {CancellationException -> 0x0022, all -> 0x001e, blocks: (B:6:0x0013, B:132:0x0358, B:13:0x002c, B:129:0x033b, B:16:0x0037, B:124:0x0322, B:126:0x0328, B:19:0x004a, B:117:0x02ee, B:120:0x02ff, B:22:0x0055, B:112:0x02d3, B:114:0x02d9, B:26:0x0065, B:98:0x026c, B:100:0x0272, B:101:0x027d, B:29:0x007d, B:92:0x024b, B:94:0x0251, B:102:0x027e, B:104:0x0289, B:106:0x0293, B:108:0x0299, B:109:0x02b0, B:118:0x02f9, B:133:0x0362, B:134:0x0369, B:32:0x0096, B:89:0x0229, B:35:0x00a7, B:84:0x020c, B:86:0x0212, B:38:0x00b8, B:77:0x01e0, B:79:0x01e6, B:80:0x01f1, B:41:0x00ce, B:71:0x01c2, B:73:0x01c8, B:81:0x01f2, B:44:0x00e1, B:62:0x017b, B:64:0x0181, B:65:0x0199, B:68:0x01a5, B:48:0x00f6, B:58:0x015c, B:59:0x015e, B:51:0x0104, B:53:0x0121, B:55:0x0127), top: B:145:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01f2 A[Catch: all -> 0x001e, CancellationException -> 0x0022, TryCatch #2 {CancellationException -> 0x0022, all -> 0x001e, blocks: (B:6:0x0013, B:132:0x0358, B:13:0x002c, B:129:0x033b, B:16:0x0037, B:124:0x0322, B:126:0x0328, B:19:0x004a, B:117:0x02ee, B:120:0x02ff, B:22:0x0055, B:112:0x02d3, B:114:0x02d9, B:26:0x0065, B:98:0x026c, B:100:0x0272, B:101:0x027d, B:29:0x007d, B:92:0x024b, B:94:0x0251, B:102:0x027e, B:104:0x0289, B:106:0x0293, B:108:0x0299, B:109:0x02b0, B:118:0x02f9, B:133:0x0362, B:134:0x0369, B:32:0x0096, B:89:0x0229, B:35:0x00a7, B:84:0x020c, B:86:0x0212, B:38:0x00b8, B:77:0x01e0, B:79:0x01e6, B:80:0x01f1, B:41:0x00ce, B:71:0x01c2, B:73:0x01c8, B:81:0x01f2, B:44:0x00e1, B:62:0x017b, B:64:0x0181, B:65:0x0199, B:68:0x01a5, B:48:0x00f6, B:58:0x015c, B:59:0x015e, B:51:0x0104, B:53:0x0121, B:55:0x0127), top: B:145:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0212 A[Catch: all -> 0x001e, CancellationException -> 0x0022, TryCatch #2 {CancellationException -> 0x0022, all -> 0x001e, blocks: (B:6:0x0013, B:132:0x0358, B:13:0x002c, B:129:0x033b, B:16:0x0037, B:124:0x0322, B:126:0x0328, B:19:0x004a, B:117:0x02ee, B:120:0x02ff, B:22:0x0055, B:112:0x02d3, B:114:0x02d9, B:26:0x0065, B:98:0x026c, B:100:0x0272, B:101:0x027d, B:29:0x007d, B:92:0x024b, B:94:0x0251, B:102:0x027e, B:104:0x0289, B:106:0x0293, B:108:0x0299, B:109:0x02b0, B:118:0x02f9, B:133:0x0362, B:134:0x0369, B:32:0x0096, B:89:0x0229, B:35:0x00a7, B:84:0x020c, B:86:0x0212, B:38:0x00b8, B:77:0x01e0, B:79:0x01e6, B:80:0x01f1, B:41:0x00ce, B:71:0x01c2, B:73:0x01c8, B:81:0x01f2, B:44:0x00e1, B:62:0x017b, B:64:0x0181, B:65:0x0199, B:68:0x01a5, B:48:0x00f6, B:58:0x015c, B:59:0x015e, B:51:0x0104, B:53:0x0121, B:55:0x0127), top: B:145:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0251 A[Catch: all -> 0x001e, CancellationException -> 0x0022, TryCatch #2 {CancellationException -> 0x0022, all -> 0x001e, blocks: (B:6:0x0013, B:132:0x0358, B:13:0x002c, B:129:0x033b, B:16:0x0037, B:124:0x0322, B:126:0x0328, B:19:0x004a, B:117:0x02ee, B:120:0x02ff, B:22:0x0055, B:112:0x02d3, B:114:0x02d9, B:26:0x0065, B:98:0x026c, B:100:0x0272, B:101:0x027d, B:29:0x007d, B:92:0x024b, B:94:0x0251, B:102:0x027e, B:104:0x0289, B:106:0x0293, B:108:0x0299, B:109:0x02b0, B:118:0x02f9, B:133:0x0362, B:134:0x0369, B:32:0x0096, B:89:0x0229, B:35:0x00a7, B:84:0x020c, B:86:0x0212, B:38:0x00b8, B:77:0x01e0, B:79:0x01e6, B:80:0x01f1, B:41:0x00ce, B:71:0x01c2, B:73:0x01c8, B:81:0x01f2, B:44:0x00e1, B:62:0x017b, B:64:0x0181, B:65:0x0199, B:68:0x01a5, B:48:0x00f6, B:58:0x015c, B:59:0x015e, B:51:0x0104, B:53:0x0121, B:55:0x0127), top: B:145:0x0008 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 948
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.domain.task.InitializeSDK$doWork$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Result<Unit>> continuation) {
        return ((InitializeSDK$doWork$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
