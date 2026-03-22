package com.tencent.rtmp.downloader;

import android.text.TextUtils;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.txcvodplayer.b.c;
import com.tencent.liteav.txcvodplayer.hlsencoder.TXCHLSEncoder;
import com.tencent.rtmp.TXPlayInfoParams;
import com.tencent.rtmp.TXPlayerDrmBuilder;
import com.tencent.rtmp.downloader.ITXVodDownloadListener;
import com.tencent.rtmp.downloader.a.a;
import com.tencent.rtmp.downloader.a.b;
import com.tencent.rtmp.downloader.a.c;
import com.tencent.rtmp.downloader.a.d;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TXVodDownloadManager {
    public static final int DOWNLOAD_403FORBIDDEN = -5008;
    public static final int DOWNLOAD_AUTH_FAILED = -5001;
    public static final int DOWNLOAD_DISCONNECT = -5005;
    public static final int DOWNLOAD_FORMAT_ERROR = -5004;
    public static final int DOWNLOAD_HLS_KEY_ERROR = -5006;
    public static final int DOWNLOAD_NO_FILE = -5003;
    public static final int DOWNLOAD_PATH_ERROR = -5007;
    public static final int DOWNLOAD_SUCCESS = 0;
    private static final String TAG = "TXVodDownloadManager";
    private static TXVodDownloadManager sInstance;
    private final b mManagerImpl = new b();

    private TXVodDownloadManager() {
    }

    public static TXVodDownloadManager getInstance() {
        synchronized (TXVodDownloadManager.class) {
            try {
                if (sInstance == null) {
                    sInstance = new TXVodDownloadManager();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sInstance;
    }

    @Deprecated
    public boolean deleteDownloadFile(String str) {
        return this.mManagerImpl.a(str);
    }

    public boolean deleteDownloadMediaInfo(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        return this.mManagerImpl.b(tXVodDownloadMediaInfo);
    }

    @Deprecated
    public TXVodDownloadMediaInfo getDownloadMediaInfo(int i, String str, int i2) {
        return this.mManagerImpl.a(i, str, i2, "");
    }

    public List<TXVodDownloadMediaInfo> getDownloadMediaInfoList() {
        return this.mManagerImpl.a();
    }

    @Deprecated
    public void setDownloadPath(String str) {
        d dVar = this.mManagerImpl.f10468a;
        if (!TextUtils.isEmpty(str)) {
            String a2 = com.tencent.liteav.txcplayer.common.b.a();
            dVar.f10473a = a2;
            if (TextUtils.isEmpty(a2)) {
                String str2 = str + "/txcache";
                dVar.f10473a = str2;
                com.tencent.liteav.txcplayer.common.b.a(str2);
            }
            try {
                new File(dVar.f10473a).mkdirs();
            } catch (Exception e) {
                LiteavLog.e("ThumbPlayerDownloader", "setDownloadPath exception: " + e.getLocalizedMessage());
            }
        }
    }

    public void setHeaders(Map<String, String> map) {
        this.mManagerImpl.f10468a.c = map;
    }

    public void setListener(ITXVodDownloadListener iTXVodDownloadListener) {
        this.mManagerImpl.c = iTXVodDownloadListener;
    }

    public TXVodDownloadMediaInfo startDownload(TXVodDownloadDataSource tXVodDownloadDataSource) {
        final b bVar = this.mManagerImpl;
        if (tXVodDownloadDataSource != null && !TextUtils.isEmpty(tXVodDownloadDataSource.getUrl())) {
            return bVar.a(tXVodDownloadDataSource.getUrl(), tXVodDownloadDataSource.getQuality(), tXVodDownloadDataSource.getUserName(), tXVodDownloadDataSource.getEncryptedLevel());
        }
        if (tXVodDownloadDataSource.getAuthBuilder() != null) {
            LiteavLog.w("TXVodDownloadManagerImpl", "startDownloadV2");
            return bVar.a(tXVodDownloadDataSource);
        }
        LiteavLog.w("TXVodDownloadManagerImpl", "startDownloadV4");
        a aVar = new a(tXVodDownloadDataSource.getAppId(), tXVodDownloadDataSource.getFileId(), tXVodDownloadDataSource.getQuality(), tXVodDownloadDataSource.getPSign(), tXVodDownloadDataSource.getUserName());
        final c cVar = new c();
        cVar.a(aVar);
        c a2 = bVar.a((TXVodDownloadMediaInfo) cVar);
        if (a2 != null) {
            return a2;
        }
        new com.tencent.liteav.txcvodplayer.b.c(new TXPlayInfoParams(aVar.getAppId(), aVar.getFileId(), aVar.getPSign())).a(new c.a() { // from class: com.tencent.rtmp.downloader.a.b.2
            @Override // com.tencent.liteav.txcvodplayer.b.c.a
            public final void a(com.tencent.liteav.txcvodplayer.b.c cVar2, TXPlayInfoParams tXPlayInfoParams) {
                c.b bVar2;
                LiteavLog.i("TXVodDownloadManagerImpl", "onSuccess: protocol params = " + tXPlayInfoParams.toString());
                if (cVar.getDownloadState() == 2) {
                    synchronized (bVar.b) {
                        bVar.b.remove(cVar);
                    }
                    ITXVodDownloadListener iTXVodDownloadListener = bVar.c;
                    if (iTXVodDownloadListener != null) {
                        iTXVodDownloadListener.onDownloadStop(cVar);
                    }
                    LiteavLog.w("TXVodDownloadManagerImpl", "Download task canceled");
                    return;
                }
                if ("SimpleAES".equalsIgnoreCase(cVar2.l()) && (bVar2 = cVar2.d) != null && !TextUtils.isEmpty(bVar2.f10327a)) {
                    a aVar2 = (a) cVar.getDataSource();
                    String a3 = TXCHLSEncoder.a(aVar2.getAppId(), aVar2.getUserName(), aVar2.getFileId(), aVar2.getQuality());
                    String a4 = TXCHLSEncoder.a(a3, bVar2.f10327a);
                    String a5 = TXCHLSEncoder.a(a3, bVar2.b);
                    if (!TextUtils.isEmpty(a4) && !TextUtils.isEmpty(a5)) {
                        aVar2.a(a4);
                        aVar2.b(a5);
                        com.tencent.liteav.txcvodplayer.c.a.a().a(tXPlayInfoParams.getAppId(), tXPlayInfoParams.getFileId(), bVar2);
                    } else {
                        LiteavLog.e("TXVodDownloadManagerImpl", "create local key exception!");
                        return;
                    }
                }
                b.a(bVar, cVar, cVar2);
            }

            @Override // com.tencent.liteav.txcvodplayer.b.c.a
            public final void a(int i, String str) {
                LiteavLog.w("TXVodDownloadManagerImpl", "onFail: errorCode = " + i + " message = " + str);
                synchronized (bVar.b) {
                    bVar.b.remove(cVar);
                }
                ITXVodDownloadListener iTXVodDownloadListener = bVar.c;
                if (iTXVodDownloadListener != null) {
                    iTXVodDownloadListener.onDownloadError(cVar, -5001, str);
                }
            }
        });
        return cVar;
    }

    public TXVodDownloadMediaInfo startDownloadDrm(TXPlayerDrmBuilder tXPlayerDrmBuilder, long j, String str) {
        b bVar = this.mManagerImpl;
        com.tencent.rtmp.downloader.a.c cVar = new com.tencent.rtmp.downloader.a.c();
        cVar.b(tXPlayerDrmBuilder.getPlayUrl());
        cVar.c(str);
        cVar.c(j);
        cVar.a(tXPlayerDrmBuilder);
        com.tencent.rtmp.downloader.a.c a2 = bVar.a((TXVodDownloadMediaInfo) cVar);
        if (a2 != null) {
            return a2;
        }
        bVar.a(cVar);
        return cVar;
    }

    @Deprecated
    public TXVodDownloadMediaInfo startDownloadUrl(String str) {
        return startDownloadUrl(str, -1L, "default");
    }

    public void stopDownload(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        d.a aVar;
        b bVar = this.mManagerImpl;
        if (tXVodDownloadMediaInfo != null) {
            if (tXVodDownloadMediaInfo.getTaskId() < 0) {
                LiteavLog.w("TXVodDownloadManagerImpl", "stop download not start task");
                return;
            }
            synchronized (bVar.b) {
                try {
                    ArrayList<com.tencent.rtmp.downloader.a.c> arrayList = bVar.b;
                    int size = arrayList.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        com.tencent.rtmp.downloader.a.c cVar = arrayList.get(i);
                        i++;
                        com.tencent.rtmp.downloader.a.c cVar2 = cVar;
                        if (cVar2.getTaskId() == tXVodDownloadMediaInfo.getTaskId()) {
                            d dVar = bVar.f10468a;
                            if (dVar.d.pauseDownload(cVar2.getTaskId()) == 0 && (aVar = dVar.b) != null) {
                                aVar.b(cVar2);
                            }
                            LiteavLog.i("TXVodDownloadManagerImpl", "stop download " + tXVodDownloadMediaInfo.getUrl());
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public TXVodDownloadMediaInfo getDownloadMediaInfo(int i, String str, int i2, String str2) {
        return this.mManagerImpl.a(i, str, i2, str2);
    }

    @Deprecated
    public TXVodDownloadMediaInfo startDownloadUrl(String str, String str2) {
        return startDownloadUrl(str, -1L, str2);
    }

    @Deprecated
    public TXVodDownloadMediaInfo getDownloadMediaInfo(String str) {
        return getDownloadMediaInfo(str, -1L, "");
    }

    public TXVodDownloadMediaInfo startDownloadUrl(String str, long j, String str2) {
        return this.mManagerImpl.a(str, j, str2, 0);
    }

    public TXVodDownloadMediaInfo getDownloadMediaInfo(String str, long j, String str2) {
        return this.mManagerImpl.a(str, j, str2);
    }
}
