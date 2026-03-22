package com.unity3d.ads.core.domain;

import android.content.Context;
import com.google.android.gms.net.CronetProviderInstaller;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.unity3d.ads.core.configuration.AlternativeFlowReader;
import com.unity3d.ads.core.configuration.MediationTraitsMetadataReader;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.services.UnityAdsConstants;
import com.unity3d.services.core.di.ServiceProvider;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.domain.task.ConfigFileFromLocalStorage;
import com.unity3d.services.core.network.core.CronetClient;
import com.unity3d.services.core.network.core.CronetEngineBuilderFactory;
import com.unity3d.services.core.network.core.HttpClient;
import com.unity3d.services.core.network.core.OkHttp3Client;
import com.unity3d.services.core.network.domain.CleanupDirectory;
import java.io.File;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import okhttp3.OkHttpClient;
import org.chromium.net.CronetEngine;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\n\u001a\u00020\u000bH\u0002J!\u0010\u0017\u001a\u00020\u00182\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0019J\u001b\u0010\u001a\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0096Bø\u0001\u0000¢\u0006\u0002\u0010\u001dR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidHttpClientProvider;", "Lcom/unity3d/ads/core/domain/HttpClientProvider;", "configFileFromLocalStorage", "Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;", "alternativeFlowReader", "Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;", "dispatchers", "Lcom/unity3d/services/core/domain/ISDKDispatchers;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "context", "Landroid/content/Context;", "cronetEngineBuilderFactory", "Lcom/unity3d/services/core/network/core/CronetEngineBuilderFactory;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "cleanupDirectory", "Lcom/unity3d/services/core/network/domain/CleanupDirectory;", "mediationTraitsMetadataReader", "Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;", "(Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Landroid/content/Context;Lcom/unity3d/services/core/network/core/CronetEngineBuilderFactory;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/services/core/network/domain/CleanupDirectory;Lcom/unity3d/ads/core/configuration/MediationTraitsMetadataReader;)V", "buildCronetCachePath", "", "buildNetworkClient", "Lcom/unity3d/services/core/network/core/HttpClient;", "(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "invoke", "gatewaySpecific", "", "(Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAndroidHttpClientProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidHttpClientProvider.kt\ncom/unity3d/ads/core/domain/AndroidHttpClientProvider\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,119:1\n314#2,11:120\n*S KotlinDebug\n*F\n+ 1 AndroidHttpClientProvider.kt\ncom/unity3d/ads/core/domain/AndroidHttpClientProvider\n*L\n81#1:120,11\n*E\n"})
/* loaded from: classes6.dex */
public final class AndroidHttpClientProvider implements HttpClientProvider {
    @NotNull
    private final AlternativeFlowReader alternativeFlowReader;
    @NotNull
    private final CleanupDirectory cleanupDirectory;
    @NotNull
    private final ConfigFileFromLocalStorage configFileFromLocalStorage;
    @NotNull
    private final Context context;
    @NotNull
    private final CronetEngineBuilderFactory cronetEngineBuilderFactory;
    @NotNull
    private final ISDKDispatchers dispatchers;
    @NotNull
    private final MediationTraitsMetadataReader mediationTraitsMetadataReader;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;
    @NotNull
    private final SessionRepository sessionRepository;

    public AndroidHttpClientProvider(@NotNull ConfigFileFromLocalStorage configFileFromLocalStorage, @NotNull AlternativeFlowReader alternativeFlowReader, @NotNull ISDKDispatchers iSDKDispatchers, @NotNull SendDiagnosticEvent sendDiagnosticEvent, @NotNull Context context, @NotNull CronetEngineBuilderFactory cronetEngineBuilderFactory, @NotNull SessionRepository sessionRepository, @NotNull CleanupDirectory cleanupDirectory, @NotNull MediationTraitsMetadataReader mediationTraitsMetadataReader) {
        this.configFileFromLocalStorage = configFileFromLocalStorage;
        this.alternativeFlowReader = alternativeFlowReader;
        this.dispatchers = iSDKDispatchers;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.context = context;
        this.cronetEngineBuilderFactory = cronetEngineBuilderFactory;
        this.sessionRepository = sessionRepository;
        this.cleanupDirectory = cleanupDirectory;
        this.mediationTraitsMetadataReader = mediationTraitsMetadataReader;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String buildCronetCachePath(Context context) {
        File resolve = FilesKt.resolve(context.getFilesDir(), UnityAdsConstants.DefaultUrls.HTTP_CACHE_DIR_NAME);
        if (!resolve.exists()) {
            resolve.mkdirs();
        }
        return resolve.getAbsolutePath();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object buildNetworkClient(final Context context, final ISDKDispatchers iSDKDispatchers, Continuation<? super HttpClient> continuation) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        CronetProviderInstaller.installProvider(context).addOnCompleteListener(new OnCompleteListener() { // from class: com.unity3d.ads.core.domain.AndroidHttpClientProvider$buildNetworkClient$2$1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(@NotNull Task<Void> task) {
                SessionRepository sessionRepository;
                CleanupDirectory cleanupDirectory;
                AlternativeFlowReader alternativeFlowReader;
                SessionRepository sessionRepository2;
                long j;
                SessionRepository sessionRepository3;
                CleanupDirectory cleanupDirectory2;
                AlternativeFlowReader alternativeFlowReader2;
                CronetEngineBuilderFactory cronetEngineBuilderFactory;
                String buildCronetCachePath;
                SessionRepository sessionRepository4;
                if (task.isSuccessful()) {
                    sessionRepository2 = AndroidHttpClientProvider.this.sessionRepository;
                    if (sessionRepository2.getNativeConfiguration().hasCachedAssetsConfiguration()) {
                        sessionRepository4 = AndroidHttpClientProvider.this.sessionRepository;
                        long j2 = 1024;
                        j = sessionRepository4.getNativeConfiguration().getCachedAssetsConfiguration().getMaxCachedAssetSizeMb() * j2 * j2;
                    } else {
                        j = ServiceProvider.HTTP_CACHE_DISK_SIZE;
                    }
                    try {
                        cronetEngineBuilderFactory = AndroidHttpClientProvider.this.cronetEngineBuilderFactory;
                        CronetEngine.Builder createCronetEngineBuilder = cronetEngineBuilderFactory.createCronetEngineBuilder(context);
                        buildCronetCachePath = AndroidHttpClientProvider.this.buildCronetCachePath(context);
                        CronetEngine build = createCronetEngineBuilder.setStoragePath(buildCronetCachePath).enableHttpCache(3, j).enableQuic(true).addQuicHint(ServiceProvider.GATEWAY_HOST, 443, 443).addQuicHint(ServiceProvider.CDN_CREATIVES_HOST, 443, 443).build();
                        CancellableContinuation<HttpClient> cancellableContinuation = cancellableContinuationImpl;
                        Result.Companion companion = Result.Companion;
                        cancellableContinuation.resumeWith(Result.m438constructorimpl(new CronetClient(build, iSDKDispatchers)));
                        return;
                    } catch (Throwable unused) {
                        CancellableContinuation<HttpClient> cancellableContinuation2 = cancellableContinuationImpl;
                        Result.Companion companion2 = Result.Companion;
                        ISDKDispatchers iSDKDispatchers2 = iSDKDispatchers;
                        OkHttpClient okHttpClient = new OkHttpClient();
                        Context context2 = context;
                        sessionRepository3 = AndroidHttpClientProvider.this.sessionRepository;
                        cleanupDirectory2 = AndroidHttpClientProvider.this.cleanupDirectory;
                        alternativeFlowReader2 = AndroidHttpClientProvider.this.alternativeFlowReader;
                        cancellableContinuation2.resumeWith(Result.m438constructorimpl(new OkHttp3Client(iSDKDispatchers2, okHttpClient, context2, sessionRepository3, cleanupDirectory2, alternativeFlowReader2)));
                        return;
                    }
                }
                CancellableContinuation<HttpClient> cancellableContinuation3 = cancellableContinuationImpl;
                Result.Companion companion3 = Result.Companion;
                ISDKDispatchers iSDKDispatchers3 = iSDKDispatchers;
                OkHttpClient okHttpClient2 = new OkHttpClient();
                Context context3 = context;
                sessionRepository = AndroidHttpClientProvider.this.sessionRepository;
                cleanupDirectory = AndroidHttpClientProvider.this.cleanupDirectory;
                alternativeFlowReader = AndroidHttpClientProvider.this.alternativeFlowReader;
                cancellableContinuation3.resumeWith(Result.m438constructorimpl(new OkHttp3Client(iSDKDispatchers3, okHttpClient2, context3, sessionRepository, cleanupDirectory, alternativeFlowReader)));
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d4 A[RETURN] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v19 */
    @Override // com.unity3d.ads.core.domain.HttpClientProvider
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object invoke(@org.jetbrains.annotations.Nullable java.lang.Boolean r23, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super com.unity3d.services.core.network.core.HttpClient> r24) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidHttpClientProvider.invoke(java.lang.Boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
