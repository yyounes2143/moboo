package com.vungle.ads.internal.downloader;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.unity3d.services.core.di.ServiceProvider;
import com.vungle.ads.NoSpaceError;
import com.vungle.ads.OutOfMemory;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.downloader.AssetDownloadListener;
import com.vungle.ads.internal.downloader.AssetDownloader;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.presenter.NativeAdPresenter;
import com.vungle.ads.internal.task.PriorityRunnable;
import com.vungle.ads.internal.ui.AdActivity;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.PathProvider;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import okhttp3.Cache;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.RealResponseBody;
import okio.GzipSource;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 )2\u00020\u0001:\u0002)*B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0013\u001a\u00020\u0011H\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000fH\u0002J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J$\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u000f2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0002J\"\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0016\u001a\u00020\u000f2\b\u0010#\u001a\u0004\u0018\u00010\u001dH\u0002J\u001c\u0010$\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u000f2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0012\u0010%\u001a\u00020\u00152\b\u0010&\u001a\u0004\u0018\u00010'H\u0002J\u001a\u0010(\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u000f2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcom/vungle/ads/internal/downloader/AssetDownloader;", "Lcom/vungle/ads/internal/downloader/Downloader;", "downloadExecutor", "Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;", "pathProvider", "Lcom/vungle/ads/internal/util/PathProvider;", "(Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;Lcom/vungle/ads/internal/util/PathProvider;)V", "okHttpClient", "Lokhttp3/OkHttpClient;", "getOkHttpClient", "()Lokhttp3/OkHttpClient;", "okHttpClient$delegate", "Lkotlin/Lazy;", "transitioning", "", "Lcom/vungle/ads/internal/downloader/DownloadRequest;", "cancel", "", AdActivity.REQUEST_KEY_EXTRA, "cancelAll", "checkSpaceAvailable", "", "downloadRequest", "decodeGzipIfNeeded", "Lokhttp3/ResponseBody;", "networkResponse", "Lokhttp3/Response;", "deliverError", "downloadListener", "Lcom/vungle/ads/internal/downloader/AssetDownloadListener;", "downloadError", "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;", "deliverSuccess", "file", "Ljava/io/File;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, NativeAdPresenter.DOWNLOAD, "isValidUrl", "httpUrl", "", "launchRequest", "Companion", "OkHttpSingleton", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class AssetDownloader implements Downloader {
    @NotNull
    private static final String CONTENT_ENCODING = "Content-Encoding";
    @NotNull
    private static final String CONTENT_TYPE = "Content-Type";
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int DOWNLOAD_CHUNK_SIZE = 2048;
    @NotNull
    private static final String GZIP = "gzip";
    private static final int MINIMUM_SPACE_REQUIRED_MB = 20971520;
    @NotNull
    private static final String TAG = "AssetDownloader";
    @NotNull
    private final VungleThreadPoolExecutor downloadExecutor;
    @NotNull
    private final PathProvider pathProvider;
    @NotNull
    private final Lazy okHttpClient$delegate = LazyKt.lazy(new Function0<OkHttpClient>() { // from class: com.vungle.ads.internal.downloader.AssetDownloader$okHttpClient$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final OkHttpClient invoke() {
            PathProvider pathProvider;
            AssetDownloader.OkHttpSingleton okHttpSingleton = AssetDownloader.OkHttpSingleton.INSTANCE;
            pathProvider = AssetDownloader.this.pathProvider;
            return okHttpSingleton.createOkHttpClient(pathProvider);
        }
    });
    @NotNull
    private final List<DownloadRequest> transitioning = new ArrayList();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/vungle/ads/internal/downloader/AssetDownloader$Companion;", "", "()V", "CONTENT_ENCODING", "", "CONTENT_TYPE", "DOWNLOAD_CHUNK_SIZE", "", "GZIP", "MINIMUM_SPACE_REQUIRED_MB", "TAG", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/vungle/ads/internal/downloader/AssetDownloader$OkHttpSingleton;", "", "()V", "client", "Lokhttp3/OkHttpClient;", "createOkHttpClient", "pathProvider", "Lcom/vungle/ads/internal/util/PathProvider;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class OkHttpSingleton {
        @NotNull
        public static final OkHttpSingleton INSTANCE = new OkHttpSingleton();
        @Nullable
        private static OkHttpClient client;

        private OkHttpSingleton() {
        }

        @NotNull
        public final OkHttpClient createOkHttpClient(@NotNull PathProvider pathProvider) {
            OkHttpClient okHttpClient = client;
            if (okHttpClient == null) {
                OkHttpClient.Builder builder = new OkHttpClient.Builder();
                TimeUnit timeUnit = TimeUnit.SECONDS;
                OkHttpClient.Builder Wwwwwwwwwwwwwwwwwwwwwwwww2 = builder.Kkkkkkkkkkkkkkkk(60L, timeUnit).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(60L, timeUnit).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null).Wwwwwwwwwwwwwwwwwwwwwwwwww(true).Wwwwwwwwwwwwwwwwwwwwwwwww(true);
                ConfigManager configManager = ConfigManager.INSTANCE;
                if (configManager.isCleverCacheEnabled()) {
                    long min = Math.min(configManager.getCleverCacheDiskSize(), (pathProvider.getAvailableBytes(pathProvider.getCleverCacheDir().getAbsolutePath()) * configManager.getCleverCacheDiskPercentage()) / 100);
                    if (min > 0) {
                        Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Cache(pathProvider.getCleverCacheDir(), min));
                    } else {
                        Logger.Companion.w("OkHttpClientWrapper", "cache disk capacity size <=0, no clever cache active.");
                    }
                }
                OkHttpClient Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                client = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            return okHttpClient;
        }
    }

    public AssetDownloader(@NotNull VungleThreadPoolExecutor vungleThreadPoolExecutor, @NotNull PathProvider pathProvider) {
        this.downloadExecutor = vungleThreadPoolExecutor;
        this.pathProvider = pathProvider;
    }

    private final boolean checkSpaceAvailable(DownloadRequest downloadRequest) {
        PathProvider pathProvider = this.pathProvider;
        long availableBytes = pathProvider.getAvailableBytes(pathProvider.getVungleDir().getAbsolutePath());
        if (availableBytes < ServiceProvider.HTTP_CACHE_DISK_SIZE) {
            new NoSpaceError("Insufficient space " + availableBytes).setLogEntry$vungle_ads_release(downloadRequest.getLogEntry$vungle_ads_release()).logErrorNoReturnValue$vungle_ads_release();
            return false;
        }
        return true;
    }

    private final ResponseBody decodeGzipIfNeeded(Response response) {
        ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = response.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (StringsKt.equals(GZIP, Response.Kkkkkkkkkkkkkkkkk(response, "Content-Encoding", null, 2, null), true) && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            return new RealResponseBody(Response.Kkkkkkkkkkkkkkkkk(response, "Content-Type", null, 2, null), -1L, Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new GzipSource(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.source())));
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    private final void deliverError(DownloadRequest downloadRequest, AssetDownloadListener assetDownloadListener, AssetDownloadListener.DownloadError downloadError) {
        if (assetDownloadListener != null) {
            assetDownloadListener.onError(downloadError, downloadRequest);
        }
    }

    private final void deliverSuccess(File file, DownloadRequest downloadRequest, AssetDownloadListener assetDownloadListener) {
        Logger.Companion companion = Logger.Companion;
        companion.d(TAG, "On success " + downloadRequest);
        if (assetDownloadListener != null) {
            assetDownloadListener.onSuccess(file, downloadRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: download$lambda-0  reason: not valid java name */
    public static final void m310download$lambda0(DownloadRequest downloadRequest, AssetDownloader assetDownloader, AssetDownloadListener assetDownloadListener) {
        assetDownloader.deliverError(downloadRequest, assetDownloadListener, new AssetDownloadListener.DownloadError(-1, new OutOfMemory("Failed to execute download request: " + downloadRequest.getAsset().getServerPath()), AssetDownloadListener.DownloadError.ErrorReason.Companion.getINTERNAL_ERROR()));
    }

    private final OkHttpClient getOkHttpClient() {
        return (OkHttpClient) this.okHttpClient$delegate.getValue();
    }

    private final boolean isValidUrl(String str) {
        if (str != null && str.length() != 0 && HttpUrl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str) != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x029e, code lost:
        new com.vungle.ads.AssetWriteError("Asset save error " + r8).setLogEntry$vungle_ads_release(r28.getLogEntry$vungle_ads_release()).logErrorNoReturnValue$vungle_ads_release();
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x02c6, code lost:
        throw new com.vungle.ads.internal.downloader.Downloader.RequestException("File is not existing");
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x02c7, code lost:
        r4.flush();
        r0 = r6.getStatus();
        r10 = com.vungle.ads.internal.downloader.AssetDownloadListener.Progress.ProgressStatus.Companion;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x02d4, code lost:
        if (r0 != r10.getIN_PROGRESS()) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x02d6, code lost:
        r6.setStatus(r10.getDONE());
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x02e1, code lost:
        if (r24.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x02e3, code lost:
        r0 = r24.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x02e7, code lost:
        if (r0 == null) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x02e9, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x02ec, code lost:
        r21.cancel();
        r0 = com.vungle.ads.internal.util.FileUtility.INSTANCE;
        r0.closeQuietly(r4);
        r0.closeQuietly(r13);
        r0 = com.vungle.ads.internal.util.Logger.Companion;
        r0.d(com.vungle.ads.internal.downloader.AssetDownloader.TAG, "download status: " + r6.getStatus());
        r4 = r6.getStatus();
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0317, code lost:
        if (r4 != r10.getERROR()) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x031e, code lost:
        if (r4 != r10.getSTARTED()) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0320, code lost:
        deliverError(r28, r29, r14);
        r10 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x032b, code lost:
        if (r4 != r10.getCANCELLED()) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x032d, code lost:
        r4 = new java.lang.StringBuilder();
        r10 = r16;
        r4.append(r10);
        r4.append(r28);
        r0.d(com.vungle.ads.internal.downloader.AssetDownloader.TAG, r4.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0343, code lost:
        r10 = r16;
        deliverSuccess(r9, r28, r29);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:217:0x049e  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x04d8  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x04dd  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x04e0  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x04ed  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x051b  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x052d  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0540  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0561  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0568  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x056c  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0579  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x05aa  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x045a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v101, types: [com.vungle.ads.internal.util.FileUtility] */
    /* JADX WARN: Type inference failed for: r15v21 */
    /* JADX WARN: Type inference failed for: r15v22 */
    /* JADX WARN: Type inference failed for: r15v23 */
    /* JADX WARN: Type inference failed for: r15v24 */
    /* JADX WARN: Type inference failed for: r15v25 */
    /* JADX WARN: Type inference failed for: r15v26 */
    /* JADX WARN: Type inference failed for: r15v27 */
    /* JADX WARN: Type inference failed for: r15v28 */
    /* JADX WARN: Type inference failed for: r15v29 */
    /* JADX WARN: Type inference failed for: r4v36, types: [okio.BufferedSink, java.io.Closeable] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void launchRequest(com.vungle.ads.internal.downloader.DownloadRequest r28, com.vungle.ads.internal.downloader.AssetDownloadListener r29) {
        /*
            Method dump skipped, instructions count: 1492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.downloader.AssetDownloader.launchRequest(com.vungle.ads.internal.downloader.DownloadRequest, com.vungle.ads.internal.downloader.AssetDownloadListener):void");
    }

    @Override // com.vungle.ads.internal.downloader.Downloader
    public void cancel(@Nullable DownloadRequest downloadRequest) {
        if (downloadRequest != null && !downloadRequest.isCancelled()) {
            downloadRequest.cancel();
        }
    }

    @Override // com.vungle.ads.internal.downloader.Downloader
    public void cancelAll() {
        for (DownloadRequest downloadRequest : this.transitioning) {
            cancel(downloadRequest);
        }
        this.transitioning.clear();
    }

    @Override // com.vungle.ads.internal.downloader.Downloader
    public void download(@Nullable final DownloadRequest downloadRequest, @Nullable final AssetDownloadListener assetDownloadListener) {
        if (downloadRequest == null) {
            return;
        }
        this.transitioning.add(downloadRequest);
        this.downloadExecutor.execute(new PriorityRunnable() { // from class: com.vungle.ads.internal.downloader.AssetDownloader$download$1
            @Override // com.vungle.ads.internal.task.PriorityRunnable
            public int getPriority() {
                return downloadRequest.getPriority();
            }

            @Override // java.lang.Runnable
            public void run() {
                AssetDownloader.this.launchRequest(downloadRequest, assetDownloadListener);
            }
        }, new Runnable() { // from class: com.vungle.ads.internal.downloader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                AssetDownloader.m310download$lambda0(DownloadRequest.this, this, assetDownloadListener);
            }
        });
    }
}
