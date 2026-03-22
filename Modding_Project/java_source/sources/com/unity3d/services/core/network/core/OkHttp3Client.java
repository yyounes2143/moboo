package com.unity3d.services.core.network.core;

import android.content.Context;
import com.unity3d.ads.core.configuration.AlternativeFlowReader;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.extensions.StringExtensionsKt;
import com.unity3d.services.UnityAdsConstants;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.network.core.OkHttp3Client;
import com.unity3d.services.core.network.domain.CleanupDirectory;
import com.unity3d.services.core.network.mapper.HttpRequestToOkHttpRequestKt;
import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.HttpResponse;
import com.vungle.ads.internal.ui.AdActivity;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001f B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0017\u001a\u00020\u0010H\u0002J1\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001bH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u001eR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006!"}, d2 = {"Lcom/unity3d/services/core/network/core/OkHttp3Client;", "Lcom/unity3d/services/core/network/core/HttpClient;", "dispatchers", "Lcom/unity3d/services/core/domain/ISDKDispatchers;", "client", "Lokhttp3/OkHttpClient;", "context", "Landroid/content/Context;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "cleanupDirectory", "Lcom/unity3d/services/core/network/domain/CleanupDirectory;", "isAlternativeFlowReader", "Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;", "(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lokhttp3/OkHttpClient;Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/services/core/network/domain/CleanupDirectory;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;)V", "okHttpCache", "Ljava/io/File;", "execute", "Lcom/unity3d/services/core/network/model/HttpResponse;", AdActivity.REQUEST_KEY_EXTRA, "Lcom/unity3d/services/core/network/model/HttpRequest;", "(Lcom/unity3d/services/core/network/model/HttpRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "executeBlocking", "getOkHttpCache", "makeRequest", "Lcom/unity3d/services/core/network/core/OkHttp3Client$RequestComplete;", "connectTimeout", "", "readTimeout", "writeTimeout", "(Lcom/unity3d/services/core/network/model/HttpRequest;JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "RequestComplete", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nOkHttp3Client.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttp3Client.kt\ncom/unity3d/services/core/network/core/OkHttp3Client\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,228:1\n1#2:229\n314#3,11:230\n*S KotlinDebug\n*F\n+ 1 OkHttp3Client.kt\ncom/unity3d/services/core/network/core/OkHttp3Client\n*L\n142#1:230,11\n*E\n"})
/* loaded from: classes6.dex */
public final class OkHttp3Client implements HttpClient {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String MSG_CONNECTION_FAILED = "Network request failed";
    @NotNull
    public static final String MSG_CONNECTION_TIMEOUT = "Network request timeout";
    @NotNull
    public static final String NETWORK_CLIENT_OKHTTP = "okhttp";
    @NotNull
    private final CleanupDirectory cleanupDirectory;
    @NotNull
    private final OkHttpClient client;
    @NotNull
    private final Context context;
    @NotNull
    private final ISDKDispatchers dispatchers;
    @NotNull
    private final AlternativeFlowReader isAlternativeFlowReader;
    @NotNull
    private final File okHttpCache = getOkHttpCache();
    @NotNull
    private final SessionRepository sessionRepository;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/unity3d/services/core/network/core/OkHttp3Client$Companion;", "", "()V", "MSG_CONNECTION_FAILED", "", "MSG_CONNECTION_TIMEOUT", "NETWORK_CLIENT_OKHTTP", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010\u0005J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÆ\u0003J\u001f\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0001HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0014"}, d2 = {"Lcom/unity3d/services/core/network/core/OkHttp3Client$RequestComplete;", "", "response", "Lokhttp3/Response;", "body", "(Lokhttp3/Response;Ljava/lang/Object;)V", "getBody", "()Ljava/lang/Object;", "getResponse", "()Lokhttp3/Response;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class RequestComplete {
        @Nullable
        private final Object body;
        @NotNull
        private final Response response;

        public RequestComplete(@NotNull Response response, @Nullable Object obj) {
            this.response = response;
            this.body = obj;
        }

        public static /* synthetic */ RequestComplete copy$default(RequestComplete requestComplete, Response response, Object obj, int i, Object obj2) {
            if ((i & 1) != 0) {
                response = requestComplete.response;
            }
            if ((i & 2) != 0) {
                obj = requestComplete.body;
            }
            return requestComplete.copy(response, obj);
        }

        @NotNull
        public final Response component1() {
            return this.response;
        }

        @Nullable
        public final Object component2() {
            return this.body;
        }

        @NotNull
        public final RequestComplete copy(@NotNull Response response, @Nullable Object obj) {
            return new RequestComplete(response, obj);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RequestComplete)) {
                return false;
            }
            RequestComplete requestComplete = (RequestComplete) obj;
            if (Intrinsics.areEqual(this.response, requestComplete.response) && Intrinsics.areEqual(this.body, requestComplete.body)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final Object getBody() {
            return this.body;
        }

        @NotNull
        public final Response getResponse() {
            return this.response;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = this.response.hashCode() * 31;
            Object obj = this.body;
            if (obj == null) {
                hashCode = 0;
            } else {
                hashCode = obj.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "RequestComplete(response=" + this.response + ", body=" + this.body + ')';
        }

        public /* synthetic */ RequestComplete(Response response, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(response, (i & 2) != 0 ? null : obj);
        }
    }

    public OkHttp3Client(@NotNull ISDKDispatchers iSDKDispatchers, @NotNull OkHttpClient okHttpClient, @NotNull Context context, @NotNull SessionRepository sessionRepository, @NotNull CleanupDirectory cleanupDirectory, @NotNull AlternativeFlowReader alternativeFlowReader) {
        this.dispatchers = iSDKDispatchers;
        this.client = okHttpClient;
        this.context = context;
        this.sessionRepository = sessionRepository;
        this.cleanupDirectory = cleanupDirectory;
        this.isAlternativeFlowReader = alternativeFlowReader;
    }

    private final File getOkHttpCache() {
        File resolve = FilesKt.resolve(this.context.getFilesDir(), UnityAdsConstants.DefaultUrls.HTTP_CACHE_DIR_NAME);
        resolve.mkdirs();
        if (this.sessionRepository.getNativeConfiguration().hasCachedAssetsConfiguration()) {
            NativeConfigurationOuterClass.CachedAssetsConfiguration cachedAssetsConfiguration = this.sessionRepository.getNativeConfiguration().getCachedAssetsConfiguration();
            this.cleanupDirectory.invoke(resolve, cachedAssetsConfiguration.getMaxCachedAssetSizeMb(), cachedAssetsConfiguration.getMaxCachedAssetAgeMs());
        }
        return resolve;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object makeRequest(final HttpRequest httpRequest, long j, long j2, long j3, Continuation<? super RequestComplete> continuation) {
        Request okHttpRequest;
        long j4;
        if (httpRequest.isProtobuf()) {
            okHttpRequest = HttpRequestToOkHttpRequestKt.toOkHttpProtoRequest(httpRequest);
        } else {
            okHttpRequest = HttpRequestToOkHttpRequestKt.toOkHttpRequest(httpRequest);
        }
        OkHttpClient.Builder Wwwwwwww2 = this.client.Wwwwwwww();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        OkHttpClient Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, timeUnit).Kkkkkkkkkkkkkkkk(j2, timeUnit).Illllllllllllllllllllllll(j3, timeUnit).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        final File file = new File(this.okHttpCache, StringExtensionsKt.getSHA256Hash(httpRequest.getBaseURL()));
        if (file.exists() && file.isFile()) {
            j4 = file.length();
        } else {
            j4 = 0;
        }
        Long boxLong = Boxing.boxLong(j4);
        Request request = null;
        if (boxLong.longValue() <= 0) {
            boxLong = null;
        }
        if (boxLong != null) {
            long longValue = boxLong.longValue();
            DeviceLog.debug("Resuming download for " + httpRequest.getBaseURL());
            request = okHttpRequest.Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Range", "bytes=" + longValue + '-').Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        if (request != null) {
            okHttpRequest = request;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(okHttpRequest).Wwwwwwwwwwwwww(new Callback() { // from class: com.unity3d.services.core.network.core.OkHttp3Client$makeRequest$2$1
            @Override // okhttp3.Callback
            public void onFailure(@NotNull Call call, @NotNull IOException iOException) {
                CancellableContinuation<OkHttp3Client.RequestComplete> cancellableContinuation = cancellableContinuationImpl;
                Result.Companion companion = Result.Companion;
                cancellableContinuation.resumeWith(Result.m438constructorimpl(ResultKt.createFailure(iOException)));
            }

            /* JADX WARN: Removed duplicated region for block: B:45:0x00f0 A[Catch: IOException -> 0x0049, TryCatch #0 {IOException -> 0x0049, blocks: (B:6:0x0030, B:8:0x0038, B:12:0x004c, B:14:0x005f, B:21:0x006f, B:23:0x0077, B:24:0x007a, B:28:0x0088, B:31:0x0094, B:33:0x009c, B:35:0x00b3, B:37:0x00c7, B:39:0x00cd, B:42:0x00d7, B:43:0x00ea, B:45:0x00f0, B:47:0x00fd, B:49:0x0102, B:50:0x010a, B:52:0x010f, B:54:0x0114, B:55:0x0117, B:57:0x0122, B:59:0x0129, B:58:0x0125, B:41:0x00d3), top: B:63:0x0030 }] */
            /* JADX WARN: Removed duplicated region for block: B:52:0x010f A[Catch: IOException -> 0x0049, TryCatch #0 {IOException -> 0x0049, blocks: (B:6:0x0030, B:8:0x0038, B:12:0x004c, B:14:0x005f, B:21:0x006f, B:23:0x0077, B:24:0x007a, B:28:0x0088, B:31:0x0094, B:33:0x009c, B:35:0x00b3, B:37:0x00c7, B:39:0x00cd, B:42:0x00d7, B:43:0x00ea, B:45:0x00f0, B:47:0x00fd, B:49:0x0102, B:50:0x010a, B:52:0x010f, B:54:0x0114, B:55:0x0117, B:57:0x0122, B:59:0x0129, B:58:0x0125, B:41:0x00d3), top: B:63:0x0030 }] */
            /* JADX WARN: Removed duplicated region for block: B:54:0x0114 A[Catch: IOException -> 0x0049, TryCatch #0 {IOException -> 0x0049, blocks: (B:6:0x0030, B:8:0x0038, B:12:0x004c, B:14:0x005f, B:21:0x006f, B:23:0x0077, B:24:0x007a, B:28:0x0088, B:31:0x0094, B:33:0x009c, B:35:0x00b3, B:37:0x00c7, B:39:0x00cd, B:42:0x00d7, B:43:0x00ea, B:45:0x00f0, B:47:0x00fd, B:49:0x0102, B:50:0x010a, B:52:0x010f, B:54:0x0114, B:55:0x0117, B:57:0x0122, B:59:0x0129, B:58:0x0125, B:41:0x00d3), top: B:63:0x0030 }] */
            /* JADX WARN: Removed duplicated region for block: B:57:0x0122 A[Catch: IOException -> 0x0049, TryCatch #0 {IOException -> 0x0049, blocks: (B:6:0x0030, B:8:0x0038, B:12:0x004c, B:14:0x005f, B:21:0x006f, B:23:0x0077, B:24:0x007a, B:28:0x0088, B:31:0x0094, B:33:0x009c, B:35:0x00b3, B:37:0x00c7, B:39:0x00cd, B:42:0x00d7, B:43:0x00ea, B:45:0x00f0, B:47:0x00fd, B:49:0x0102, B:50:0x010a, B:52:0x010f, B:54:0x0114, B:55:0x0117, B:57:0x0122, B:59:0x0129, B:58:0x0125, B:41:0x00d3), top: B:63:0x0030 }] */
            /* JADX WARN: Removed duplicated region for block: B:58:0x0125 A[Catch: IOException -> 0x0049, TryCatch #0 {IOException -> 0x0049, blocks: (B:6:0x0030, B:8:0x0038, B:12:0x004c, B:14:0x005f, B:21:0x006f, B:23:0x0077, B:24:0x007a, B:28:0x0088, B:31:0x0094, B:33:0x009c, B:35:0x00b3, B:37:0x00c7, B:39:0x00cd, B:42:0x00d7, B:43:0x00ea, B:45:0x00f0, B:47:0x00fd, B:49:0x0102, B:50:0x010a, B:52:0x010f, B:54:0x0114, B:55:0x0117, B:57:0x0122, B:59:0x0129, B:58:0x0125, B:41:0x00d3), top: B:63:0x0030 }] */
            @Override // okhttp3.Callback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onResponse(@org.jetbrains.annotations.NotNull okhttp3.Call r14, @org.jetbrains.annotations.NotNull okhttp3.Response r15) {
                /*
                    Method dump skipped, instructions count: 330
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.network.core.OkHttp3Client$makeRequest$2$1.onResponse(okhttp3.Call, okhttp3.Response):void");
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    @Override // com.unity3d.services.core.network.core.HttpClient
    @Nullable
    public Object execute(@NotNull HttpRequest httpRequest, @NotNull Continuation<? super HttpResponse> continuation) {
        return BuildersKt.withContext(this.dispatchers.getIo(), new OkHttp3Client$execute$2(this, httpRequest, null), continuation);
    }

    @Override // com.unity3d.services.core.network.core.HttpClient
    @NotNull
    public HttpResponse executeBlocking(@NotNull HttpRequest httpRequest) {
        return (HttpResponse) BuildersKt.runBlocking(this.dispatchers.getIo(), new OkHttp3Client$executeBlocking$1(this, httpRequest, null));
    }
}
