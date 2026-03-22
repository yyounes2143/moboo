package com.vungle.ads.internal.load;

import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.AssetDownloadError;
import com.vungle.ads.SingleValueMetric;
import com.vungle.ads.internal.downloader.AssetDownloadListener;
import com.vungle.ads.internal.downloader.DownloadRequest;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.model.AdAsset;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.Logger;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\u000b"}, d2 = {"com/vungle/ads/internal/load/BaseAdLoader$assetDownloadListener$1", "Lcom/vungle/ads/internal/downloader/AssetDownloadListener;", "onError", "", "error", "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;", "downloadRequest", "Lcom/vungle/ads/internal/downloader/DownloadRequest;", "onSuccess", "file", "Ljava/io/File;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class BaseAdLoader$assetDownloadListener$1 implements AssetDownloadListener {
    final /* synthetic */ BaseAdLoader this$0;

    public BaseAdLoader$assetDownloadListener$1(BaseAdLoader baseAdLoader) {
        this.this$0 = baseAdLoader;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onError$lambda-0  reason: not valid java name */
    public static final void m319onError$lambda0(BaseAdLoader baseAdLoader, DownloadRequest downloadRequest, AssetDownloadListener.DownloadError downloadError) {
        AtomicBoolean atomicBoolean;
        Integer num;
        AtomicLong atomicLong;
        AtomicLong atomicLong2;
        AtomicBoolean atomicBoolean2;
        atomicBoolean = baseAdLoader.fullyDownloaded;
        atomicBoolean.set(false);
        if (downloadRequest.getAsset().isRequired()) {
            atomicBoolean2 = baseAdLoader.requiredAssetDownloaded;
            atomicBoolean2.set(false);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Failed to download assets. required=");
        sb.append(downloadRequest.getAsset().isRequired());
        sb.append(" reason=");
        Throwable th = null;
        if (downloadError != null) {
            num = Integer.valueOf(downloadError.getReason());
        } else {
            num = null;
        }
        sb.append(num);
        sb.append(" cause=");
        if (downloadError != null) {
            th = downloadError.getCause();
        }
        sb.append(th);
        String sb2 = sb.toString();
        if (downloadRequest.getAsset().isRequired()) {
            atomicLong2 = baseAdLoader.downloadRequiredCount;
            if (atomicLong2.decrementAndGet() <= 0) {
                baseAdLoader.onAdLoadFailed(new AssetDownloadError(Sdk.SDKError.Reason.ASSET_RESPONSE_DATA_ERROR, sb2).setLogEntry$vungle_ads_release(baseAdLoader.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
                baseAdLoader.cancel();
                return;
            }
        }
        atomicLong = baseAdLoader.downloadCount;
        if (atomicLong.decrementAndGet() <= 0) {
            baseAdLoader.onAdLoadFailed(new AssetDownloadError(Sdk.SDKError.Reason.ASSET_RESPONSE_DATA_ERROR, sb2).setLogEntry$vungle_ads_release(baseAdLoader.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onSuccess$lambda-1  reason: not valid java name */
    public static final void m320onSuccess$lambda1(File file, BaseAdLoader$assetDownloadListener$1 baseAdLoader$assetDownloadListener$1, DownloadRequest downloadRequest, BaseAdLoader baseAdLoader) {
        SingleValueMetric singleValueMetric;
        SingleValueMetric singleValueMetric2;
        AtomicLong atomicLong;
        AtomicBoolean atomicBoolean;
        AtomicLong atomicLong2;
        AtomicBoolean atomicBoolean2;
        boolean processVmTemplate;
        AtomicBoolean atomicBoolean3;
        AtomicBoolean atomicBoolean4;
        if (!file.exists()) {
            baseAdLoader$assetDownloadListener$1.onError(new AssetDownloadListener.DownloadError(-1, new IOException("Downloaded file not found!"), AssetDownloadListener.DownloadError.ErrorReason.Companion.getFILE_NOT_FOUND_ERROR()), downloadRequest);
            return;
        }
        AdAsset asset = downloadRequest.getAsset();
        asset.setFileSize(file.length());
        asset.setStatus(AdAsset.Status.DOWNLOAD_SUCCESS);
        if (downloadRequest.isTemplate()) {
            downloadRequest.stopRecord();
            SingleValueMetric singleValueMetric3 = downloadRequest.isHtmlTemplate() ? baseAdLoader.templateHtmlSizeMetric : baseAdLoader.templateSizeMetric;
            singleValueMetric3.setValue(Long.valueOf(file.length()));
            AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(singleValueMetric3, baseAdLoader.getLogEntry$vungle_ads_release(), asset.getServerPath());
        } else if (downloadRequest.isMainVideo()) {
            singleValueMetric = baseAdLoader.mainVideoSizeMetric;
            singleValueMetric.setValue(Long.valueOf(file.length()));
            AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
            singleValueMetric2 = baseAdLoader.mainVideoSizeMetric;
            analyticsClient.logMetric$vungle_ads_release(singleValueMetric2, baseAdLoader.getLogEntry$vungle_ads_release(), asset.getServerPath());
        }
        AdPayload advertisement$vungle_ads_release = baseAdLoader.getAdvertisement$vungle_ads_release();
        if (advertisement$vungle_ads_release != null) {
            advertisement$vungle_ads_release.updateAdAssetPath(asset);
        }
        if (downloadRequest.isTemplate()) {
            processVmTemplate = baseAdLoader.processVmTemplate(asset, baseAdLoader.getAdvertisement$vungle_ads_release());
            if (!processVmTemplate) {
                atomicBoolean3 = baseAdLoader.fullyDownloaded;
                atomicBoolean3.set(false);
                if (asset.isRequired()) {
                    atomicBoolean4 = baseAdLoader.requiredAssetDownloaded;
                    atomicBoolean4.set(false);
                }
            }
        }
        if (asset.isRequired()) {
            atomicLong2 = baseAdLoader.downloadRequiredCount;
            if (atomicLong2.decrementAndGet() <= 0) {
                atomicBoolean2 = baseAdLoader.requiredAssetDownloaded;
                if (atomicBoolean2.get()) {
                    baseAdLoader.onRequiredDownloadCompleted();
                } else {
                    baseAdLoader.onAdLoadFailed(new AssetDownloadError(Sdk.SDKError.Reason.ASSET_RESPONSE_DATA_ERROR, "Failed to download required assets.").setLogEntry$vungle_ads_release(baseAdLoader.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
                    baseAdLoader.cancel();
                    return;
                }
            }
        }
        atomicLong = baseAdLoader.downloadCount;
        if (atomicLong.decrementAndGet() <= 0) {
            atomicBoolean = baseAdLoader.fullyDownloaded;
            if (atomicBoolean.get()) {
                baseAdLoader.onDownloadCompleted(baseAdLoader.getAdRequest());
            } else {
                baseAdLoader.onAdLoadFailed(new AssetDownloadError(Sdk.SDKError.Reason.ASSET_RESPONSE_DATA_ERROR, "Failed to download assets.").setLogEntry$vungle_ads_release(baseAdLoader.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
            }
        }
    }

    @Override // com.vungle.ads.internal.downloader.AssetDownloadListener
    public void onError(@Nullable final AssetDownloadListener.DownloadError downloadError, @NotNull final DownloadRequest downloadRequest) {
        Integer num;
        Logger.Companion companion = Logger.Companion;
        StringBuilder sb = new StringBuilder();
        sb.append("onError called: reason ");
        Throwable th = null;
        if (downloadError != null) {
            num = Integer.valueOf(downloadError.getReason());
        } else {
            num = null;
        }
        sb.append(num);
        sb.append("; cause ");
        if (downloadError != null) {
            th = downloadError.getCause();
        }
        sb.append(th);
        companion.e("BaseAdLoader", sb.toString());
        VungleThreadPoolExecutor backgroundExecutor = this.this$0.getSdkExecutors().getBackgroundExecutor();
        final BaseAdLoader baseAdLoader = this.this$0;
        backgroundExecutor.execute(new Runnable() { // from class: com.vungle.ads.internal.load.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                BaseAdLoader$assetDownloadListener$1.m319onError$lambda0(BaseAdLoader.this, downloadRequest, downloadError);
            }
        });
    }

    @Override // com.vungle.ads.internal.downloader.AssetDownloadListener
    public void onSuccess(@NotNull final File file, @NotNull final DownloadRequest downloadRequest) {
        VungleThreadPoolExecutor backgroundExecutor = this.this$0.getSdkExecutors().getBackgroundExecutor();
        final BaseAdLoader baseAdLoader = this.this$0;
        backgroundExecutor.execute(new Runnable() { // from class: com.vungle.ads.internal.load.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                BaseAdLoader$assetDownloadListener$1.m320onSuccess$lambda1(file, this, downloadRequest, baseAdLoader);
            }
        });
    }
}
