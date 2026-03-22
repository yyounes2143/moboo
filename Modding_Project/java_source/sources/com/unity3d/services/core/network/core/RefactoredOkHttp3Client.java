package com.unity3d.services.core.network.core;

import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.HttpResponse;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u000bJ\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client;", "Lcom/unity3d/services/core/network/core/HttpClient;", "dispatchers", "Lcom/unity3d/services/core/domain/ISDKDispatchers;", "client", "Lokhttp3/OkHttpClient;", "(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lokhttp3/OkHttpClient;)V", "execute", "Lcom/unity3d/services/core/network/model/HttpResponse;", AdActivity.REQUEST_KEY_EXTRA, "Lcom/unity3d/services/core/network/model/HttpRequest;", "(Lcom/unity3d/services/core/network/model/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "executeBlocking", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRefactoredOkHttp3Client.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RefactoredOkHttp3Client.kt\ncom/unity3d/services/core/network/core/RefactoredOkHttp3Client\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,118:1\n314#2,11:119\n*S KotlinDebug\n*F\n+ 1 RefactoredOkHttp3Client.kt\ncom/unity3d/services/core/network/core/RefactoredOkHttp3Client\n*L\n56#1:119,11\n*E\n"})
/* loaded from: classes6.dex */
public final class RefactoredOkHttp3Client implements HttpClient {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String MSG_CONNECTION_FAILED = "Network request failed";
    @NotNull
    public static final String MSG_CONNECTION_TIMEOUT = "Network request timeout";
    @NotNull
    public static final String NETWORK_CLIENT_OKHTTP = "refactored-okhttp";
    @NotNull
    private final OkHttpClient client;
    @NotNull
    private final ISDKDispatchers dispatchers;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/unity3d/services/core/network/core/RefactoredOkHttp3Client$Companion;", "", "()V", "MSG_CONNECTION_FAILED", "", "MSG_CONNECTION_TIMEOUT", "NETWORK_CLIENT_OKHTTP", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public RefactoredOkHttp3Client(@NotNull ISDKDispatchers iSDKDispatchers, @NotNull OkHttpClient okHttpClient) {
        this.dispatchers = iSDKDispatchers;
        this.client = okHttpClient;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003d  */
    @Override // com.unity3d.services.core.network.core.HttpClient
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object execute(@org.jetbrains.annotations.NotNull com.unity3d.services.core.network.model.HttpRequest r11, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super com.unity3d.services.core.network.model.HttpResponse> r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof com.unity3d.services.core.network.core.RefactoredOkHttp3Client$execute$1
            if (r0 == 0) goto L13
            r0 = r12
            com.unity3d.services.core.network.core.RefactoredOkHttp3Client$execute$1 r0 = (com.unity3d.services.core.network.core.RefactoredOkHttp3Client$execute$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.services.core.network.core.RefactoredOkHttp3Client$execute$1 r0 = new com.unity3d.services.core.network.core.RefactoredOkHttp3Client$execute$1
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r11 = r0.L$2
            okhttp3.OkHttpClient r11 = (okhttp3.OkHttpClient) r11
            java.lang.Object r11 = r0.L$1
            okhttp3.Request r11 = (okhttp3.Request) r11
            java.lang.Object r11 = r0.L$0
            com.unity3d.services.core.network.model.HttpRequest r11 = (com.unity3d.services.core.network.model.HttpRequest) r11
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            return r12
        L35:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L3d:
            kotlin.ResultKt.throwOnFailure(r12)
            okhttp3.Request r12 = com.unity3d.services.core.network.mapper.HttpRequestToOkHttpRequestKt.toOkHttpProtoRequest(r11)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            okhttp3.OkHttpClient r2 = r10.client     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            okhttp3.OkHttpClient$Builder r2 = r2.Wwwwwwww()     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            int r4 = r11.getConnectTimeout()     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            long r4 = (long) r4     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            java.util.concurrent.TimeUnit r6 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            okhttp3.OkHttpClient$Builder r2 = r2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r4, r6)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            int r4 = r11.getReadTimeout()     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            long r4 = (long) r4     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            okhttp3.OkHttpClient$Builder r2 = r2.Kkkkkkkkkkkkkkkk(r4, r6)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            int r4 = r11.getWriteTimeout()     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            long r4 = (long) r4     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            okhttp3.OkHttpClient$Builder r2 = r2.Illllllllllllllllllllllll(r4, r6)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            okhttp3.OkHttpClient r2 = r2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            r0.L$0 = r11     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            r0.L$1 = r12     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            r0.L$2 = r2     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            r0.label = r3     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            kotlinx.coroutines.CancellableContinuationImpl r4 = new kotlinx.coroutines.CancellableContinuationImpl     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            kotlin.coroutines.Continuation r5 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r0)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            r4.<init>(r5, r3)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            r4.initCancellability()     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            okhttp3.Call r12 = r2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r12)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            com.unity3d.services.core.network.core.RefactoredOkHttp3Client$execute$2$1 r2 = new com.unity3d.services.core.network.core.RefactoredOkHttp3Client$execute$2$1     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            r2.<init>()     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            r4.invokeOnCancellation(r2)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            com.unity3d.services.core.network.core.RefactoredOkHttp3Client$execute$2$2 r2 = new com.unity3d.services.core.network.core.RefactoredOkHttp3Client$execute$2$2     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            r2.<init>()     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            r12.Wwwwwwwwwwwwww(r2)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            java.lang.Object r12 = r4.getResult()     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
            if (r12 != r2) goto La0
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r0)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lb9
        La0:
            if (r12 != r1) goto La3
            return r1
        La3:
            return r12
        La4:
            com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException r0 = new com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException
            java.lang.String r4 = r11.getBaseURL()
            r8 = 54
            r9 = 0
            java.lang.String r1 = "Network request failed"
            r2 = 0
            r3 = 0
            r5 = 0
            r6 = 0
            java.lang.String r7 = "refactored-okhttp"
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            throw r0
        Lb9:
            com.unity3d.ads.core.data.model.exception.NetworkTimeoutException r0 = new com.unity3d.ads.core.data.model.exception.NetworkTimeoutException
            java.lang.String r4 = r11.getBaseURL()
            r8 = 54
            r9 = 0
            java.lang.String r1 = "Network request timeout"
            r2 = 0
            r3 = 0
            r5 = 0
            r6 = 0
            java.lang.String r7 = "refactored-okhttp"
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.network.core.RefactoredOkHttp3Client.execute(com.unity3d.services.core.network.model.HttpRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.unity3d.services.core.network.core.HttpClient
    @NotNull
    public HttpResponse executeBlocking(@NotNull HttpRequest httpRequest) {
        return (HttpResponse) BuildersKt.runBlocking(this.dispatchers.getIo(), new RefactoredOkHttp3Client$executeBlocking$1(this, httpRequest, null));
    }
}
