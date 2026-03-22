package com.tencent.vod.flutter;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.rtmp.TXPlayInfoParams;
import com.tencent.rtmp.downloader.ITXVodDownloadListener;
import com.tencent.rtmp.downloader.ITXVodFilePreloadListener;
import com.tencent.rtmp.downloader.ITXVodPreloadListener;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
import com.tencent.rtmp.downloader.TXVodDownloadManager;
import com.tencent.rtmp.downloader.TXVodDownloadMediaInfo;
import com.tencent.rtmp.downloader.TXVodPreloadManager;
import com.tencent.vod.flutter.messages.FtxMessages;
import com.tencent.vod.flutter.messages.Wwwwwwwwwwwwwwwwwwwwww;
import com.tencent.vod.flutter.tools.TXCommonUtil;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXDownloadManager implements ITXVodDownloadListener, FtxMessages.TXFlutterDownloadApi, FtxMessages.VoidResult {
    private static final String TAG = "FTXDownloadManager";
    private final FtxMessages.TXDownloadFlutterAPI mDownloadFlutterApi;
    private final FlutterPlugin.FlutterPluginBinding mFlutterPluginBinding;
    private boolean isInitDownloadListener = false;
    private final ExecutorService mPreloadPool = Executors.newCachedThreadPool();
    private final Handler mMainHandler = new Handler(Looper.getMainLooper());

    public FTXDownloadManager(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.mFlutterPluginBinding = flutterPluginBinding;
        Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(flutterPluginBinding.getBinaryMessenger(), this);
        this.mDownloadFlutterApi = new FtxMessages.TXDownloadFlutterAPI(flutterPluginBinding.getBinaryMessenger());
    }

    private Bundle buildCommonDownloadBundle(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        Bundle bundle = new Bundle();
        bundle.putString("playPath", tXVodDownloadMediaInfo.getPlayPath());
        bundle.putFloat("progress", tXVodDownloadMediaInfo.getProgress());
        bundle.putInt("downloadState", TXCommonUtil.getDownloadEventByState(tXVodDownloadMediaInfo.getDownloadState()));
        bundle.putString("userName", tXVodDownloadMediaInfo.getUserName());
        bundle.putInt(TypedValues.TransitionType.S_DURATION, tXVodDownloadMediaInfo.getDuration());
        bundle.putInt("playableDuration", tXVodDownloadMediaInfo.getPlayableDuration());
        bundle.putLong("size", tXVodDownloadMediaInfo.getSize());
        bundle.putLong("downloadSize", tXVodDownloadMediaInfo.getDownloadSize());
        if (!TextUtils.isEmpty(tXVodDownloadMediaInfo.getUrl())) {
            bundle.putString("url", tXVodDownloadMediaInfo.getUrl());
        }
        if (tXVodDownloadMediaInfo.getDataSource() != null) {
            TXVodDownloadDataSource dataSource = tXVodDownloadMediaInfo.getDataSource();
            bundle.putInt(RemoteConfigConstants.RequestFieldKey.APP_ID, dataSource.getAppId());
            bundle.putString("fileId", dataSource.getFileId());
            bundle.putString("pSign", dataSource.getPSign());
            bundle.putInt("quality", dataSource.getQuality());
            bundle.putString(BidResponsed.KEY_TOKEN, dataSource.getToken());
        }
        bundle.putInt("speed", tXVodDownloadMediaInfo.getSpeed());
        bundle.putBoolean("isResourceBroken", tXVodDownloadMediaInfo.isResourceBroken());
        return bundle;
    }

    private FtxMessages.TXVodDownloadMediaMsg buildMsgFromDownloadInfo(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        FtxMessages.TXVodDownloadMediaMsg tXVodDownloadMediaMsg = new FtxMessages.TXVodDownloadMediaMsg();
        if (tXVodDownloadMediaInfo != null) {
            tXVodDownloadMediaMsg.setPlayPath(tXVodDownloadMediaInfo.getPlayPath());
            tXVodDownloadMediaMsg.setDownloadState(Long.valueOf(TXCommonUtil.getDownloadEventByState(tXVodDownloadMediaInfo.getDownloadState())));
            tXVodDownloadMediaMsg.setUserName(tXVodDownloadMediaInfo.getUserName());
            tXVodDownloadMediaMsg.setDuration(Long.valueOf(tXVodDownloadMediaInfo.getDuration()));
            tXVodDownloadMediaMsg.setPlayableDuration(Long.valueOf(tXVodDownloadMediaInfo.getPlayableDuration()));
            tXVodDownloadMediaMsg.setSize(Long.valueOf(tXVodDownloadMediaInfo.getSize()));
            tXVodDownloadMediaMsg.setDownloadSize(Long.valueOf(tXVodDownloadMediaInfo.getDownloadSize()));
            if (!TextUtils.isEmpty(tXVodDownloadMediaInfo.getUrl())) {
                tXVodDownloadMediaMsg.setUrl(tXVodDownloadMediaInfo.getUrl());
            }
            tXVodDownloadMediaMsg.setProgress(Double.valueOf(BigDecimal.valueOf(tXVodDownloadMediaInfo.getProgress()).doubleValue()));
            if (tXVodDownloadMediaInfo.getDataSource() != null) {
                TXVodDownloadDataSource dataSource = tXVodDownloadMediaInfo.getDataSource();
                tXVodDownloadMediaMsg.setAppId(Long.valueOf(dataSource.getAppId()));
                tXVodDownloadMediaMsg.setFileId(dataSource.getFileId());
                tXVodDownloadMediaMsg.setPSign(dataSource.getPSign());
                tXVodDownloadMediaMsg.setQuality(Long.valueOf(dataSource.getQuality()));
                tXVodDownloadMediaMsg.setToken(dataSource.getToken());
            }
            tXVodDownloadMediaMsg.setSpeed(Long.valueOf(tXVodDownloadMediaInfo.getSpeed()));
            tXVodDownloadMediaMsg.setIsResourceBroken(Boolean.valueOf(tXVodDownloadMediaInfo.isResourceBroken()));
        }
        return tXVodDownloadMediaMsg;
    }

    private TXVodDownloadMediaInfo getDownloadInfoFromMsg(FtxMessages.TXVodDownloadMediaMsg tXVodDownloadMediaMsg) {
        int i;
        Integer num;
        if (tXVodDownloadMediaMsg.getQuality() != null) {
            i = tXVodDownloadMediaMsg.getQuality().intValue();
        } else {
            i = 0;
        }
        Integer valueOf = Integer.valueOf(i);
        String url = tXVodDownloadMediaMsg.getUrl();
        if (tXVodDownloadMediaMsg.getAppId() != null) {
            num = Integer.valueOf(tXVodDownloadMediaMsg.getAppId().intValue());
        } else {
            num = null;
        }
        Integer num2 = num;
        String fileId = tXVodDownloadMediaMsg.getFileId();
        tXVodDownloadMediaMsg.getPSign();
        return parseMediaInfoFromInfo(valueOf, url, num2, fileId, tXVodDownloadMediaMsg.getUserName());
    }

    private void initDownloadListenerIfNeed() {
        if (!this.isInitDownloadListener) {
            this.isInitDownloadListener = true;
            TXVodDownloadManager.getInstance().setListener(this);
        }
    }

    private void onDownloadCallback(final Map<String, Object> map) {
        this.mMainHandler.post(new Runnable() { // from class: com.tencent.vod.flutter.FTXDownloadManager.2
            @Override // java.lang.Runnable
            public void run() {
                FTXDownloadManager.this.mDownloadFlutterApi.onDownloadEvent(map, FTXDownloadManager.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPreLoadCompleteEvent(int i, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("taskId", i);
        bundle.putString("url", str);
        onPreloadCallback(TXCommonUtil.getParams(200, bundle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPreLoadErrorEvent(long j, int i, String str, int i2, String str2) {
        Bundle bundle = new Bundle();
        if (j >= 0) {
            bundle.putLong("tmpTaskId", j);
        }
        bundle.putInt("taskId", i);
        bundle.putInt("code", i2);
        bundle.putString("url", str);
        bundle.putString(NotificationCompat.CATEGORY_MESSAGE, str2);
        onPreloadCallback(TXCommonUtil.getParams(201, bundle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPreLoadStartEvent(long j, int i, String str, String str2, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putLong("tmpTaskId", j);
        bundle2.putInt("taskId", i);
        bundle2.putString("fileId", str);
        bundle2.putString("url", str2);
        Map<String, Object> params = TXCommonUtil.getParams(202, bundle2);
        params.put("params", TXCommonUtil.transToMap(bundle));
        onPreloadCallback(params);
    }

    private void onPreloadCallback(final Map<String, Object> map) {
        this.mMainHandler.post(new Runnable() { // from class: com.tencent.vod.flutter.FTXDownloadManager.1
            @Override // java.lang.Runnable
            public void run() {
                FTXDownloadManager.this.mDownloadFlutterApi.onPreDownloadEvent(map, FTXDownloadManager.this);
            }
        });
    }

    private int optQuality(Integer num) {
        if (num == null) {
            return 1000;
        }
        return num.intValue();
    }

    private TXVodDownloadMediaInfo parseMediaInfoFromInfo(Integer num, String str, Integer num2, String str2, String str3) {
        if (str3 == null) {
            str3 = "default";
        }
        String str4 = str3;
        if (num2 != null && str2 != null) {
            return TXVodDownloadManager.getInstance().getDownloadMediaInfo(num2.intValue(), str2, optQuality(num), str4);
        }
        if (!TextUtils.isEmpty(str)) {
            TXVodDownloadMediaInfo downloadMediaInfo = TXVodDownloadManager.getInstance().getDownloadMediaInfo(str, -1L, str4);
            if (downloadMediaInfo == null) {
                return parseMediaInfoFromInfoByAll(num, str, num2, str2, str4);
            }
            return downloadMediaInfo;
        }
        return null;
    }

    private TXVodDownloadMediaInfo parseMediaInfoFromInfoByAll(Integer num, String str, Integer num2, String str2, String str3) {
        boolean z;
        if (num2 != null && str2 != null) {
            z = true;
        } else {
            z = false;
        }
        boolean isEmpty = TextUtils.isEmpty(str);
        List<TXVodDownloadMediaInfo> downloadMediaInfoList = TXVodDownloadManager.getInstance().getDownloadMediaInfoList();
        if (downloadMediaInfoList != null) {
            if (z || !isEmpty) {
                for (TXVodDownloadMediaInfo tXVodDownloadMediaInfo : downloadMediaInfoList) {
                    if (TextUtils.equals(str3, tXVodDownloadMediaInfo.getUserName())) {
                        if (z) {
                            TXVodDownloadDataSource dataSource = tXVodDownloadMediaInfo.getDataSource();
                            if (dataSource != null && dataSource.getAppId() == num2.intValue() && TextUtils.equals(dataSource.getFileId(), str2) && optQuality(num) == dataSource.getQuality()) {
                                return tXVodDownloadMediaInfo;
                            }
                        } else if (TextUtils.equals(str, tXVodDownloadMediaInfo.getUrl())) {
                            return tXVodDownloadMediaInfo;
                        }
                    }
                }
                return null;
            }
            return null;
        }
        return null;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterDownloadApi
    @NonNull
    public FtxMessages.BoolMsg deleteDownloadMediaInfo(@NonNull FtxMessages.TXVodDownloadMediaMsg tXVodDownloadMediaMsg) {
        boolean z;
        TXVodDownloadMediaInfo downloadInfoFromMsg = getDownloadInfoFromMsg(tXVodDownloadMediaMsg);
        if (downloadInfoFromMsg != null) {
            TXVodDownloadManager.getInstance().stopDownload(downloadInfoFromMsg);
            z = TXVodDownloadManager.getInstance().deleteDownloadMediaInfo(downloadInfoFromMsg);
        } else {
            z = false;
        }
        FtxMessages.BoolMsg boolMsg = new FtxMessages.BoolMsg();
        boolMsg.setValue(Boolean.valueOf(z));
        return boolMsg;
    }

    public void destroy() {
        TXVodDownloadManager.getInstance().setListener(null);
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.VoidResult
    public void error(@NonNull Throwable th) {
        LiteavLog.e(TAG, "callback message error:" + th);
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterDownloadApi
    @NonNull
    public FtxMessages.TXVodDownloadMediaMsg getDownloadInfo(@NonNull FtxMessages.TXVodDownloadMediaMsg tXVodDownloadMediaMsg) {
        return buildMsgFromDownloadInfo(getDownloadInfoFromMsg(tXVodDownloadMediaMsg));
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterDownloadApi
    @NonNull
    public FtxMessages.TXDownloadListMsg getDownloadList() {
        List<TXVodDownloadMediaInfo> downloadMediaInfoList = TXVodDownloadManager.getInstance().getDownloadMediaInfoList();
        ArrayList arrayList = new ArrayList();
        if (downloadMediaInfoList != null) {
            for (TXVodDownloadMediaInfo tXVodDownloadMediaInfo : downloadMediaInfoList) {
                if (tXVodDownloadMediaInfo != null) {
                    arrayList.add(buildMsgFromDownloadInfo(tXVodDownloadMediaInfo));
                }
            }
        }
        FtxMessages.TXDownloadListMsg tXDownloadListMsg = new FtxMessages.TXDownloadListMsg();
        tXDownloadListMsg.setInfoList(arrayList);
        return tXDownloadListMsg;
    }

    @Override // com.tencent.rtmp.downloader.ITXVodDownloadListener
    public int hlsKeyVerify(TXVodDownloadMediaInfo tXVodDownloadMediaInfo, String str, byte[] bArr) {
        return 0;
    }

    @Override // com.tencent.rtmp.downloader.ITXVodDownloadListener
    public void onDownloadError(TXVodDownloadMediaInfo tXVodDownloadMediaInfo, int i, String str) {
        Bundle buildCommonDownloadBundle = buildCommonDownloadBundle(tXVodDownloadMediaInfo);
        buildCommonDownloadBundle.putInt("errorCode", i);
        buildCommonDownloadBundle.putString("errorMsg", str);
        onDownloadCallback(TXCommonUtil.getParams(305, buildCommonDownloadBundle));
    }

    @Override // com.tencent.rtmp.downloader.ITXVodDownloadListener
    public void onDownloadFinish(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        onDownloadCallback(TXCommonUtil.getParams(304, buildCommonDownloadBundle(tXVodDownloadMediaInfo)));
    }

    @Override // com.tencent.rtmp.downloader.ITXVodDownloadListener
    public void onDownloadProgress(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        onDownloadCallback(TXCommonUtil.getParams(302, buildCommonDownloadBundle(tXVodDownloadMediaInfo)));
    }

    @Override // com.tencent.rtmp.downloader.ITXVodDownloadListener
    public void onDownloadStart(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        onDownloadCallback(TXCommonUtil.getParams(301, buildCommonDownloadBundle(tXVodDownloadMediaInfo)));
    }

    @Override // com.tencent.rtmp.downloader.ITXVodDownloadListener
    public void onDownloadStop(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        onDownloadCallback(TXCommonUtil.getParams(303, buildCommonDownloadBundle(tXVodDownloadMediaInfo)));
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterDownloadApi
    public void resumeDownload(@NonNull FtxMessages.TXVodDownloadMediaMsg tXVodDownloadMediaMsg) {
        initDownloadListenerIfNeed();
        TXVodDownloadMediaInfo downloadInfoFromMsg = getDownloadInfoFromMsg(tXVodDownloadMediaMsg);
        if (downloadInfoFromMsg != null) {
            TXVodDownloadDataSource dataSource = downloadInfoFromMsg.getDataSource();
            if (dataSource != null) {
                TXVodDownloadManager.getInstance().startDownload(dataSource);
            } else {
                TXVodDownloadManager.getInstance().startDownloadUrl(downloadInfoFromMsg.getUrl(), downloadInfoFromMsg.getUserName());
            }
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterDownloadApi
    public void setDownloadHeaders(@NonNull FtxMessages.MapMsg mapMsg) {
        TXVodDownloadManager.getInstance().setHeaders(mapMsg.getMap());
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterDownloadApi
    public void startDownload(@NonNull FtxMessages.TXVodDownloadMediaMsg tXVodDownloadMediaMsg) {
        int i;
        Integer num;
        initDownloadListenerIfNeed();
        if (tXVodDownloadMediaMsg.getQuality() != null) {
            i = tXVodDownloadMediaMsg.getQuality().intValue();
        } else {
            i = 0;
        }
        Integer valueOf = Integer.valueOf(i);
        String url = tXVodDownloadMediaMsg.getUrl();
        if (tXVodDownloadMediaMsg.getAppId() != null) {
            num = Integer.valueOf(tXVodDownloadMediaMsg.getAppId().intValue());
        } else {
            num = null;
        }
        String fileId = tXVodDownloadMediaMsg.getFileId();
        String pSign = tXVodDownloadMediaMsg.getPSign();
        String userName = tXVodDownloadMediaMsg.getUserName();
        if (!TextUtils.isEmpty(url)) {
            TXVodDownloadManager.getInstance().startDownloadUrl(url, userName);
        } else if (num != null && fileId != null) {
            TXVodDownloadDataSource tXVodDownloadDataSource = new TXVodDownloadDataSource(num.intValue(), fileId, optQuality(valueOf), pSign, userName);
            tXVodDownloadDataSource.setEncryptedLevel(2);
            TXVodDownloadManager.getInstance().startDownload(tXVodDownloadDataSource);
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterDownloadApi
    @NonNull
    public FtxMessages.IntMsg startPreLoad(@NonNull FtxMessages.PreLoadMsg preLoadMsg) {
        float f;
        long j;
        String playUrl = preLoadMsg.getPlayUrl();
        if (preLoadMsg.getPreloadSizeMB() != null) {
            f = preLoadMsg.getPreloadSizeMB().floatValue();
        } else {
            f = 0.0f;
        }
        float f2 = f;
        if (preLoadMsg.getPreferredResolution() != null) {
            j = preLoadMsg.getPreferredResolution().longValue();
        } else {
            j = 0;
        }
        int startPreload = TXVodPreloadManager.getInstance(this.mFlutterPluginBinding.getApplicationContext()).startPreload(playUrl, f2, j, new ITXVodPreloadListener() { // from class: com.tencent.vod.flutter.FTXDownloadManager.3
            @Override // com.tencent.rtmp.downloader.ITXVodPreloadListener
            public void onComplete(int i, String str) {
                FTXDownloadManager.this.onPreLoadCompleteEvent(i, str);
            }

            @Override // com.tencent.rtmp.downloader.ITXVodPreloadListener
            public void onError(int i, String str, int i2, String str2) {
                FTXDownloadManager.this.onPreLoadErrorEvent(-1L, i, str, i2, str2);
            }
        });
        FtxMessages.IntMsg intMsg = new FtxMessages.IntMsg();
        intMsg.setValue(Long.valueOf(startPreload));
        return intMsg;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterDownloadApi
    public void startPreLoadByParams(@NonNull final FtxMessages.PreLoadInfoMsg preLoadInfoMsg) {
        this.mPreloadPool.execute(new Runnable() { // from class: com.tencent.vod.flutter.FTXDownloadManager.4
            @Override // java.lang.Runnable
            public void run() {
                int i;
                TXPlayInfoParams tXPlayInfoParams;
                float f;
                final long j;
                long j2;
                boolean isEmpty = TextUtils.isEmpty(preLoadInfoMsg.getPlayUrl());
                if (!isEmpty) {
                    tXPlayInfoParams = new TXPlayInfoParams(preLoadInfoMsg.getPlayUrl());
                } else {
                    if (preLoadInfoMsg.getAppId() != null) {
                        i = preLoadInfoMsg.getAppId().intValue();
                    } else {
                        i = 0;
                    }
                    tXPlayInfoParams = new TXPlayInfoParams(i, preLoadInfoMsg.getFileId(), preLoadInfoMsg.getPSign());
                }
                if (preLoadInfoMsg.getHttpHeader() != null) {
                    tXPlayInfoParams.setHeaders(preLoadInfoMsg.getHttpHeader());
                }
                TXVodPreloadManager tXVodPreloadManager = TXVodPreloadManager.getInstance(FTXDownloadManager.this.mFlutterPluginBinding.getApplicationContext());
                if (preLoadInfoMsg.getPreloadSizeMB() != null) {
                    f = preLoadInfoMsg.getPreloadSizeMB().floatValue();
                } else {
                    f = 0.0f;
                }
                float f2 = f;
                if (preLoadInfoMsg.getTmpPreloadTaskId() != null) {
                    j = preLoadInfoMsg.getTmpPreloadTaskId().longValue();
                } else {
                    j = -1;
                }
                if (preLoadInfoMsg.getPreferredResolution() != null) {
                    j2 = preLoadInfoMsg.getPreferredResolution().longValue();
                } else {
                    j2 = 0;
                }
                int startPreload = tXVodPreloadManager.startPreload(tXPlayInfoParams, f2, j2, new ITXVodFilePreloadListener() { // from class: com.tencent.vod.flutter.FTXDownloadManager.4.1
                    @Override // com.tencent.rtmp.downloader.ITXVodPreloadListener
                    public void onComplete(int i2, String str) {
                        FTXDownloadManager.this.onPreLoadCompleteEvent(i2, str);
                    }

                    @Override // com.tencent.rtmp.downloader.ITXVodPreloadListener
                    public void onError(int i2, String str, int i3, String str2) {
                        FTXDownloadManager.this.onPreLoadErrorEvent(j, i2, str, i3, str2);
                    }

                    @Override // com.tencent.rtmp.downloader.ITXVodFilePreloadListener
                    public void onStart(int i2, String str, String str2, Bundle bundle) {
                        long j3 = j;
                        if (j3 >= 0) {
                            FTXDownloadManager.this.onPreLoadStartEvent(j3, i2, str, str2, bundle);
                        }
                    }
                });
                if (!isEmpty && j >= 0) {
                    FTXDownloadManager.this.onPreLoadStartEvent(j, startPreload, preLoadInfoMsg.getFileId(), preLoadInfoMsg.getPlayUrl(), new Bundle());
                }
            }
        });
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterDownloadApi
    public void stopDownload(@NonNull FtxMessages.TXVodDownloadMediaMsg tXVodDownloadMediaMsg) {
        initDownloadListenerIfNeed();
        TXVodDownloadManager.getInstance().stopDownload(getDownloadInfoFromMsg(tXVodDownloadMediaMsg));
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterDownloadApi
    public void stopPreLoad(@NonNull FtxMessages.IntMsg intMsg) {
        if (intMsg.getValue() != null) {
            TXVodPreloadManager.getInstance(this.mFlutterPluginBinding.getApplicationContext()).stopPreload(intMsg.getValue().intValue());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.VoidResult
    public void success() {
    }
}
