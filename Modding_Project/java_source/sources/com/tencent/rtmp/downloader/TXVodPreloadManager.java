package com.tencent.rtmp.downloader;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.sdk.common.LicenseChecker;
import com.tencent.liteav.txcplayer.common.c;
import com.tencent.liteav.txcvodplayer.b.c;
import com.tencent.liteav.txcvodplayer.hlsencoder.TXCHLSEncoder;
import com.tencent.rtmp.TXPlayInfoParams;
import com.tencent.rtmp.TXPlayerDrmBuilder;
import com.tencent.rtmp.TXVodConstants;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPDownloadProxy;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPreLoadListener;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDLProxyInitParam;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadParam;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TXVodPreloadManager {
    private static final String TAG = "TXVodPreloadManager";
    private static final String THUMB_PLAYER_GUID = "liteav_tbplayer_android_";
    private static final int THUMB_PLAYER_PLATFORM_ID = 2330303;
    private static Context mAppContext;
    private boolean mInit;
    private ITPDownloadProxy mTpDownloadProxy;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        static TXVodPreloadManager f10466a = new TXVodPreloadManager();
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class b implements ITPPreLoadListener {

        /* renamed from: a  reason: collision with root package name */
        int f10467a = -1;
        private final ITXVodPreloadListener b;
        private final String c;
        private ITPDownloadProxy d;

        public b(ITPDownloadProxy iTPDownloadProxy, String str, ITXVodPreloadListener iTXVodPreloadListener) {
            this.c = str;
            this.b = iTXVodPreloadListener;
            this.d = iTPDownloadProxy;
        }

        private void a(int i) {
            ITPDownloadProxy iTPDownloadProxy = this.d;
            if (iTPDownloadProxy != null) {
                iTPDownloadProxy.stopPreload(i);
            }
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPreLoadListener
        public final void onPrepareDownloadProgressUpdate(int i, int i2, long j, long j2, String str) {
            LiteavLog.i(TXVodPreloadManager.TAG, "preload: prepare process:" + i + "," + i2 + "," + j + "," + j2);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPreLoadListener
        public final void onPrepareError(int i, int i2, String str) {
            LiteavLog.e(TXVodPreloadManager.TAG, "preload error: moduleId: " + i + ", errorCode: " + i2 + ", extInfo: " + str);
            ITXVodPreloadListener iTXVodPreloadListener = this.b;
            if (iTXVodPreloadListener != null) {
                iTXVodPreloadListener.onError(this.f10467a, this.c, i2, str);
            }
            a(this.f10467a);
        }

        @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPPreLoadListener
        public final void onPrepareOK() {
            LiteavLog.d(TXVodPreloadManager.TAG, "preload: onPrepareOK");
            ITXVodPreloadListener iTXVodPreloadListener = this.b;
            if (iTXVodPreloadListener != null) {
                iTXVodPreloadListener.onComplete(this.f10467a, this.c);
            }
            a(this.f10467a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int checkDlType(int i, String str) {
        if (i == 1) {
            return 3;
        }
        if (i != 2) {
            if (i == 3) {
                return 10;
            }
            if (i != 4) {
                if (!TextUtils.isEmpty(str) && com.tencent.liteav.txcplayer.a.a.d(str).endsWith(".mp4")) {
                    return 10;
                }
                return 0;
            }
            return 19;
        }
        return 5;
    }

    private synchronized Pair<Integer, String> checkInit() {
        ITPDownloadProxy tPDownloadProxy = TPDownloadProxyFactory.getTPDownloadProxy(THUMB_PLAYER_PLATFORM_ID);
        this.mTpDownloadProxy = tPDownloadProxy;
        if (tPDownloadProxy != null) {
            int b2 = com.tencent.liteav.txcplayer.common.b.b();
            if (b2 < 0) {
                LiteavLog.e(TAG, "MaxCacheSize not set(-1).");
                return new Pair<>(-1, "MaxCacheSize not set.");
            }
            String a2 = com.tencent.liteav.txcplayer.common.b.a();
            if (TextUtils.equals(a2, "NO_SET")) {
                LiteavLog.e(TAG, "CacheFolderPath not set(-2).");
                return new Pair<>(-2, "CacheFolderPath not set.");
            }
            if (!this.mInit) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("VodCacheReserveSizeMB", b2);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                this.mTpDownloadProxy.init(mAppContext, new TPDLProxyInitParam(THUMB_PLAYER_PLATFORM_ID, "1.0.0", THUMB_PLAYER_GUID + mAppContext.getPackageName(), null, a2, jSONObject.toString()));
                this.mInit = true;
            }
            this.mTpDownloadProxy.updateStoragePath(a2);
            this.mTpDownloadProxy.setMaxStorageSizeMB(b2);
            return new Pair<>(0, null);
        }
        LiteavLog.e(TAG, "Inner error(-3).");
        return new Pair<>(-3, "Inner error.");
    }

    public static TXVodPreloadManager getInstance(Context context) {
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            mAppContext = applicationContext;
            ContextUtils.initApplicationContext(applicationContext);
            ContextUtils.setDataDirectorySuffix("liteav");
            return a.f10466a;
        }
        return null;
    }

    public int startPreload(String str, float f, long j, ITXVodPreloadListener iTXVodPreloadListener) {
        LiteavLog.i(TAG, "startPreload for url, url: " + str + " ,preloadSizeMB: " + f + " ,preferredResolution: " + j + " ,listener: " + iTXVodPreloadListener);
        return startPreload(str, f, j, iTXVodPreloadListener, 0, 0, null, "");
    }

    public void stopPreload(int i) {
        LiteavLog.i(TAG, "stopPreload, taskID: ".concat(String.valueOf(i)));
        if (((Integer) checkInit().first).intValue() < 0) {
            return;
        }
        this.mTpDownloadProxy.stopPreload(i);
    }

    private TXVodPreloadManager() {
        this.mInit = false;
    }

    private int startPreload(String str, float f, long j, ITXVodPreloadListener iTXVodPreloadListener, int i, int i2, Map<String, String> map, String str2) {
        Pair<Integer, String> checkInit = checkInit();
        if (((Integer) checkInit.first).intValue() < 0) {
            if (iTXVodPreloadListener != null) {
                iTXVodPreloadListener.onError(-1, str, ((Integer) checkInit.first).intValue(), (String) checkInit.second);
            }
            return -1;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        HashMap hashMap = new HashMap();
        if (map != null && map.size() > 0) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(map);
            hashMap.put(TPDownloadProxyEnum.DLPARAM_URL_HEADER, arrayList2);
        }
        hashMap.put(TPDownloadProxyEnum.DLPARAM_PRELOAD_SIZE, Long.valueOf(f * 1024.0f * 1024.0f));
        hashMap.put(TPDownloadProxyEnum.DLPARAM_PREFERRED_RESOLUTION, Long.valueOf(j));
        if (i2 == 2 && c.a(LicenseChecker.a.PLAYER_PREMIUM)) {
            hashMap.put(TPDownloadProxyEnum.DLPARAM_CACHE_NEED_ENCRYPT, Boolean.TRUE);
        }
        if (!TextUtils.isEmpty(str2) && c.a(LicenseChecker.a.PLAYER_PREMIUM)) {
            hashMap.put(TPDownloadProxyEnum.DLPARAM_PREFERRED_AUDIO_TRACK, str2);
        }
        TPDownloadParam tPDownloadParam = new TPDownloadParam(arrayList, checkDlType(i, str), hashMap);
        b bVar = new b(this.mTpDownloadProxy, str, iTXVodPreloadListener);
        int startPreload = this.mTpDownloadProxy.startPreload(com.tencent.liteav.txcplayer.a.a.d(str), tPDownloadParam, bVar);
        bVar.f10467a = startPreload;
        LiteavLog.i(TAG, "startPreload for url success, url: " + str + " ,taskID: " + startPreload);
        return startPreload;
    }

    public int startPreload(final TXPlayInfoParams tXPlayInfoParams, final float f, final long j, final ITXVodFilePreloadListener iTXVodFilePreloadListener) throws RuntimeException {
        LiteavLog.i(TAG, "startPreload for TXPlayInfoParams, playInfoParams: " + tXPlayInfoParams + " ,preloadSizeMB: " + f + " ,preferredResolution: " + j + " ,listener: " + iTXVodFilePreloadListener);
        if (tXPlayInfoParams != null && !TextUtils.isEmpty(tXPlayInfoParams.getUrl()) && TextUtils.isEmpty(tXPlayInfoParams.getFileId())) {
            return startPreload(tXPlayInfoParams.getUrl(), f, j, iTXVodFilePreloadListener, checkDlType(tXPlayInfoParams.getMediaType(), tXPlayInfoParams.getUrl()), tXPlayInfoParams.getEncryptedMp4Level(), tXPlayInfoParams.getHeaders(), tXPlayInfoParams.getPreferAudioTrack());
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            Pair<Integer, String> checkInit = checkInit();
            if (((Integer) checkInit.first).intValue() < 0) {
                if (iTXVodFilePreloadListener != null) {
                    iTXVodFilePreloadListener.onError(-1, "", ((Integer) checkInit.first).intValue(), (String) checkInit.second);
                }
                return -1;
            } else if (tXPlayInfoParams == null || tXPlayInfoParams.getAppId() == 0 || TextUtils.isEmpty(tXPlayInfoParams.getFileId())) {
                if (iTXVodFilePreloadListener != null) {
                    iTXVodFilePreloadListener.onError(-1, "", -1, " invalid params, appId or fileId is null");
                }
                return -1;
            } else {
                final AtomicInteger atomicInteger = new AtomicInteger(-1);
                final CountDownLatch countDownLatch = new CountDownLatch(1);
                new com.tencent.liteav.txcvodplayer.b.c(tXPlayInfoParams).a(new c.a() { // from class: com.tencent.rtmp.downloader.TXVodPreloadManager.1
                    @Override // com.tencent.liteav.txcvodplayer.b.c.a
                    public final void a(com.tencent.liteav.txcvodplayer.b.c cVar, TXPlayInfoParams tXPlayInfoParams2) {
                        Pair pair;
                        Bundle bundle = new Bundle();
                        long j2 = j;
                        String b2 = cVar.b();
                        String l = cVar.l();
                        if (TextUtils.isEmpty(l)) {
                            l = "plain";
                        }
                        if ("plain".equalsIgnoreCase(l)) {
                            pair = new Pair(b2, com.tencent.liteav.txcplayer.a.a.a(b2, tXPlayInfoParams2.getFileId(), l, tXPlayInfoParams2.getAppId()));
                        } else {
                            String a2 = cVar.a("Widevine");
                            boolean isEmpty = TextUtils.isEmpty(a2);
                            if (!"SimpleAES".equalsIgnoreCase(cVar.l()) && isEmpty) {
                                LiteavLog.e("VodPreloadUtil", "invalid drmType=" + cVar.l() + " ,fileId=" + tXPlayInfoParams2.getFileId());
                                pair = new Pair(b2, b2);
                            } else {
                                if (!isEmpty) {
                                    b2 = a2;
                                }
                                c.b bVar = cVar.d;
                                if (bVar != null && !TextUtils.isEmpty(bVar.f10327a)) {
                                    String a3 = TXCHLSEncoder.a(tXPlayInfoParams2.getAppId(), "default", tXPlayInfoParams2.getFileId(), 0);
                                    String a4 = TXCHLSEncoder.a(a3, bVar.f10327a);
                                    String a5 = TXCHLSEncoder.a(a3, bVar.b);
                                    if (!TextUtils.isEmpty(a4) && !TextUtils.isEmpty(a5)) {
                                        com.tencent.liteav.txcvodplayer.c.a.a().a(tXPlayInfoParams2.getAppId(), tXPlayInfoParams2.getFileId(), bVar);
                                        String a6 = com.tencent.liteav.txcplayer.a.a.a(b2, cVar.d());
                                        String a7 = com.tencent.liteav.txcplayer.a.a.a(a6, tXPlayInfoParams2.getFileId(), l, tXPlayInfoParams2.getAppId());
                                        StringBuilder sb = new StringBuilder();
                                        sb.append(a7);
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append("&oversign=");
                                        sb2.append(tXPlayInfoParams2.getAppId());
                                        sb2.append("&o1=default&o2=");
                                        sb2.append(tXPlayInfoParams2.getFileId());
                                        sb2.append("&o3=&o4=");
                                        sb2.append(a4);
                                        sb2.append("&o5=");
                                        sb2.append(a5);
                                        if (j2 > 0) {
                                            sb2.append("&o6=");
                                            sb2.append(j2);
                                        }
                                        String m = cVar.m();
                                        if (!TextUtils.isEmpty(m)) {
                                            sb2.append("&o7=");
                                            sb2.append(m);
                                        }
                                        if (sb2.length() > 0) {
                                            sb2.append("&oversign=");
                                        }
                                        sb.append(sb2.toString());
                                        pair = new Pair(a6, sb.toString());
                                    } else {
                                        LiteavLog.e("VodPreloadUtil", "create local key exception for fileId=" + tXPlayInfoParams2.getFileId());
                                        pair = new Pair(b2, b2);
                                    }
                                } else {
                                    LiteavLog.e("VodPreloadUtil", "overlayKey is null fileId=" + tXPlayInfoParams2.getFileId());
                                    pair = new Pair(b2, b2);
                                }
                            }
                        }
                        bundle.putString("EVT_PLAY_URL", (String) pair.second);
                        bundle.putString("EVT_PLAY_COVER_URL", cVar.c());
                        bundle.putString("EVT_PLAY_NAME", cVar.e());
                        bundle.putString("EVT_PLAY_DESCRIPTION", cVar.f());
                        bundle.putInt("EVT_PLAY_DURATION", cVar.g());
                        bundle.putString(TXVodConstants.EVT_DRM_TYPE, TextUtils.isEmpty(cVar.l()) ? "plain" : cVar.l());
                        c.C0210c i = cVar.i();
                        if (i != null) {
                            bundle.putString(TXVodConstants.EVT_IMAGESPRIT_WEBVTTURL, i.b);
                            bundle.putStringArrayList(TXVodConstants.EVT_IMAGESPRIT_IMAGEURL_LIST, i.f10328a);
                        }
                        List<c.d> j3 = cVar.j();
                        if (j3 != null && !j3.isEmpty()) {
                            ArrayList<String> arrayList = new ArrayList<>();
                            float[] fArr = new float[j3.size()];
                            for (int i2 = 0; i2 < j3.size(); i2++) {
                                arrayList.add(j3.get(i2).f10329a);
                                fArr[i2] = j3.get(i2).b;
                            }
                            bundle.putStringArrayList(TXVodConstants.EVT_KEY_FRAME_CONTENT_LIST, arrayList);
                            bundle.putFloatArray(TXVodConstants.EVT_KEY_FRAME_TIME_LIST, fArr);
                        }
                        bundle.putString(TXVodConstants.EVT_DRM_TYPE, cVar.l());
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(pair.first);
                        HashMap hashMap = new HashMap();
                        if (tXPlayInfoParams.getHeaders() != null && tXPlayInfoParams.getHeaders().size() > 0) {
                            ArrayList arrayList3 = new ArrayList();
                            arrayList3.add(tXPlayInfoParams.getHeaders());
                            hashMap.put(TPDownloadProxyEnum.DLPARAM_URL_HEADER, arrayList3);
                        }
                        hashMap.put(TPDownloadProxyEnum.DLPARAM_PRELOAD_SIZE, Float.valueOf(f * 1024.0f * 1024.0f));
                        hashMap.put(TPDownloadProxyEnum.DLPARAM_PREFERRED_RESOLUTION, Long.valueOf(j));
                        if (tXPlayInfoParams.getEncryptedMp4Level() == 2 && com.tencent.liteav.txcplayer.common.c.a(LicenseChecker.a.PLAYER_PREMIUM)) {
                            hashMap.put(TPDownloadProxyEnum.DLPARAM_CACHE_NEED_ENCRYPT, Boolean.TRUE);
                        }
                        if (!TextUtils.isEmpty(cVar.m())) {
                            hashMap.put(TPDownloadProxyEnum.DLPARAM_KEY_LICENSE_URL, cVar.m());
                            hashMap.put(TPDownloadProxyEnum.DLPARAM_DEVICE_CERTIFICATE_URL, new TXPlayerDrmBuilder().getDeviceCertificateUrl());
                        }
                        if (!TextUtils.isEmpty(tXPlayInfoParams.getPreferAudioTrack()) && com.tencent.liteav.txcplayer.common.c.a(LicenseChecker.a.PLAYER_PREMIUM)) {
                            hashMap.put(TPDownloadProxyEnum.DLPARAM_PREFERRED_AUDIO_TRACK, tXPlayInfoParams.getPreferAudioTrack());
                        }
                        TPDownloadParam tPDownloadParam = new TPDownloadParam(arrayList2, TXVodPreloadManager.this.checkDlType(tXPlayInfoParams.getMediaType(), (String) pair.first), hashMap);
                        b bVar2 = new b(TXVodPreloadManager.this.mTpDownloadProxy, (String) pair.second, iTXVodFilePreloadListener);
                        int startPreload = TXVodPreloadManager.this.mTpDownloadProxy.startPreload(com.tencent.liteav.txcplayer.a.a.d((String) pair.first), tPDownloadParam, bVar2);
                        bVar2.f10467a = startPreload;
                        atomicInteger.set(startPreload);
                        countDownLatch.countDown();
                        if (iTXVodFilePreloadListener != null) {
                            LiteavLog.i(TXVodPreloadManager.TAG, "startPreload for TXPlayInfoParams success, playInfoParams: " + tXPlayInfoParams + " ,taskID: " + startPreload);
                            iTXVodFilePreloadListener.onStart(startPreload, tXPlayInfoParams2.getFileId(), (String) pair.second, bundle);
                        }
                    }

                    @Override // com.tencent.liteav.txcvodplayer.b.c.a
                    public final void a(int i, String str) {
                        countDownLatch.countDown();
                        if (iTXVodFilePreloadListener != null) {
                            LiteavLog.i(TXVodPreloadManager.TAG, "startPreload for TXPlayInfoParams failed, playInfoParams: " + tXPlayInfoParams + " ,getPlayInfo failed: " + str);
                            iTXVodFilePreloadListener.onError(-1, "", i, "getPlayInfo failed: ".concat(String.valueOf(str)));
                        }
                    }
                });
                try {
                    countDownLatch.await(8L, TimeUnit.SECONDS);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                return atomicInteger.get();
            }
        }
        LiteavLog.e(TAG, "startPreload for TXPlayInfoParams can not be called on the main thread.");
        throw new RuntimeException("startPreload for TXPlayInfoParams can not be called on the main thread.");
    }
}
