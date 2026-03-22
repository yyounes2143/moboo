package com.changdu.mobovideo.net;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Call;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.net.VideoHttpClient$downloadFileSafe$2", f = "VideoHttpClient.kt", i = {0, 0, 0}, l = {242}, m = "invokeSuspend", n = {"downloadFilePath", "targetFile", "result"}, s = {"L$0", "L$1", "I$0"})
/* loaded from: classes3.dex */
public final class VideoHttpClient$downloadFileSafe$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ Call $call;
    final /* synthetic */ String $downloadUrl;
    final /* synthetic */ boolean $force;
    final /* synthetic */ boolean $needReport;
    final /* synthetic */ String $savedFilePath;
    int I$0;
    Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoHttpClient$downloadFileSafe$2(String str, boolean z, String str2, Call call, boolean z2, Continuation<? super VideoHttpClient$downloadFileSafe$2> continuation) {
        super(2, continuation);
        this.$savedFilePath = str;
        this.$force = z;
        this.$downloadUrl = str2;
        this.$call = call;
        this.$needReport = z2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new VideoHttpClient$downloadFileSafe$2(this.$savedFilePath, this.$force, this.$downloadUrl, this.$call, this.$needReport, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00f3 A[Catch: Exception -> 0x00f8, TRY_ENTER, TRY_LEAVE, TryCatch #6 {Exception -> 0x00f8, blocks: (B:39:0x00a2, B:40:0x00a6, B:56:0x00f3), top: B:75:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0102 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.mobovideo.net.VideoHttpClient$downloadFileSafe$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return ((VideoHttpClient$downloadFileSafe$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
