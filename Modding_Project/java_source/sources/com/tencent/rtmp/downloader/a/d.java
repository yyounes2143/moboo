package com.tencent.rtmp.downloader.a;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.sdk.common.LicenseChecker;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPDownloadProxy;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPOfflineDownloadListener;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDLProxyInitParam;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadParam;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyFactory;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class d {
    private static d e;

    /* renamed from: a  reason: collision with root package name */
    public String f10473a;
    public a b;
    public Map<String, String> c;
    public ITPDownloadProxy d = TPDownloadProxyFactory.getTPDownloadProxy(2330303);

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface a {
        void a(c cVar);

        void a(c cVar, int i, String str);

        void b(c cVar);

        void c(c cVar);

        void d(c cVar);
    }

    private d(Context context) {
        File externalFilesDir;
        if (context != null) {
            String a2 = com.tencent.liteav.txcplayer.common.b.a();
            this.f10473a = a2;
            try {
                if (TextUtils.isEmpty(a2) && (externalFilesDir = context.getExternalFilesDir(null)) != null) {
                    this.f10473a = externalFilesDir.getAbsolutePath() + "/txcache";
                }
                if (!TextUtils.isEmpty(this.f10473a)) {
                    File file = new File(this.f10473a);
                    if (!file.exists() || !file.isDirectory()) {
                        file.mkdirs();
                    }
                }
            } catch (Exception e2) {
                LiteavLog.e("ThumbPlayerDownloader", "downloader init exception: " + e2.getLocalizedMessage());
            }
            this.d.init(context, new TPDLProxyInitParam(2330303, "1.0.0", "liteav_tbplayer_android_" + context.getPackageName(), this.f10473a));
        }
    }

    public final boolean b(c cVar) {
        String playPath = cVar.getPlayPath();
        if (TextUtils.isEmpty(playPath)) {
            return false;
        }
        String substring = playPath.substring(0, playPath.indexOf("?"));
        String substring2 = substring.substring(0, substring.lastIndexOf("/"));
        String substring3 = substring.substring(substring.lastIndexOf("/") + 1);
        this.d.updateStoragePath(substring2);
        return this.d.checkResourceExist(substring2, substring3, cVar.getPreferredResolution());
    }

    public final int c(final c cVar) {
        String playPath = cVar.getPlayPath();
        if (TextUtils.isEmpty(playPath)) {
            return -1;
        }
        String substring = playPath.substring(0, playPath.indexOf("?"));
        String substring2 = substring.substring(substring.lastIndexOf("/") + 1);
        String url = cVar.getUrl();
        ArrayList arrayList = new ArrayList();
        arrayList.add(url);
        TPDownloadParam tPDownloadParam = new TPDownloadParam(arrayList, 0, null);
        HashMap hashMap = new HashMap();
        Map<String, String> map = this.c;
        if (map != null && map.size() > 0) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(this.c);
            hashMap.put(TPDownloadProxyEnum.DLPARAM_URL_HEADER, arrayList2);
        }
        long preferredResolution = cVar.getPreferredResolution();
        if (preferredResolution > 0) {
            hashMap.put(TPDownloadProxyEnum.DLPARAM_OFFLINE_SCHEDULER_LEVEL, 4);
            hashMap.put(TPDownloadProxyEnum.DLPARAM_PREFERRED_RESOLUTION, Long.valueOf(preferredResolution));
        }
        if (cVar.getEncryptedLevel() == 2 && com.tencent.liteav.txcplayer.common.c.a(LicenseChecker.a.PLAYER_PREMIUM)) {
            hashMap.put(TPDownloadProxyEnum.DLPARAM_CACHE_NEED_ENCRYPT, Boolean.TRUE);
        }
        if (cVar.getDrmBuilder() != null) {
            hashMap.put(TPDownloadProxyEnum.DLPARAM_KEY_LICENSE_URL, cVar.getDrmBuilder().getKeyLicenseUrl());
            hashMap.put(TPDownloadProxyEnum.DLPARAM_DEVICE_CERTIFICATE_URL, cVar.getDrmBuilder().getDeviceCertificateUrl());
        }
        tPDownloadParam.setExtInfoMap(hashMap);
        int startOfflineDownload = this.d.startOfflineDownload(substring2, tPDownloadParam, new ITPOfflineDownloadListener() { // from class: com.tencent.rtmp.downloader.a.d.1
            @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPOfflineDownloadListener
            public final void onDownloadCdnUrlExpired(Map<String, String> map2) {
                LiteavLog.i("ThumbPlayerDownloader", "onDownloadCdnUrlExpired!");
            }

            @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPOfflineDownloadListener
            public final void onDownloadCdnUrlUpdate(String str) {
                LiteavLog.i("ThumbPlayerDownloader", "onDownloadCdnUrlUpdate! url:".concat(String.valueOf(str)));
            }

            @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPOfflineDownloadListener
            public final void onDownloadError(int i, int i2, String str) {
                LiteavLog.e("ThumbPlayerDownloader", "offline download error! moduleID:" + i + ", errCode:" + i2);
                if (d.this.b != null) {
                    d.this.b.a(cVar, i2, str);
                }
            }

            @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPOfflineDownloadListener
            public final void onDownloadFinish() {
                if (d.this.b != null) {
                    d.this.b.c(cVar);
                }
            }

            @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPOfflineDownloadListener
            public final void onDownloadProgressUpdate(int i, int i2, long j, long j2, String str) {
                if (j > 1024 && j != cVar.getDownloadSize()) {
                    cVar.b(j);
                }
                if (cVar.getSize() <= 0 && j2 > 0) {
                    cVar.a(j2);
                }
                if (i > 0) {
                    cVar.b(i);
                }
                if (cVar.getDuration() <= 0 && !TextUtils.isEmpty(str) && str.contains("totalDuration")) {
                    String[] split = str.split(",");
                    int length = split.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 >= length) {
                            break;
                        }
                        String str2 = split[i3];
                        if (str2.contains("totalDuration")) {
                            cVar.a(Integer.valueOf(str2.split(":")[1]).intValue() * 1000);
                            break;
                        }
                        i3++;
                    }
                }
                cVar.e(i2);
                if (d.this.b != null) {
                    d.this.b.d(cVar);
                }
            }

            @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPOfflineDownloadListener
            public final void onDownloadProtocolUpdate(String str, String str2) {
                LiteavLog.i("ThumbPlayerDownloader", "onDownloadProtocolUpdate! protocol:" + str + ", protocolVer:" + str2);
            }

            @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPOfflineDownloadListener
            public final void onDownloadStatusUpdate(int i) {
                LiteavLog.i("ThumbPlayerDownloader", "onDownloadStatusUpdate! statusCode:".concat(String.valueOf(i)));
            }

            @Override // com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPOfflineDownloadListener
            public final void onDownloadCdnUrlInfoUpdate(String str, String str2, String str3, String str4) {
            }
        });
        cVar.c(startOfflineDownload);
        a aVar = this.b;
        if (aVar != null) {
            aVar.a(cVar);
        }
        return startOfflineDownload;
    }

    public static d a(Context context) {
        synchronized (d.class) {
            try {
                if (e == null) {
                    e = new d(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return e;
    }

    public final String a(String str) {
        String a2 = com.tencent.liteav.txcplayer.common.b.a();
        if (!TextUtils.equals(this.f10473a, a2)) {
            if (!TextUtils.isEmpty(a2)) {
                this.f10473a = a2;
            } else {
                com.tencent.liteav.txcplayer.common.b.a(this.f10473a);
            }
        }
        this.d.updateStoragePath(this.f10473a);
        String d = com.tencent.liteav.txcplayer.a.a.d(str);
        return this.f10473a + "/" + d + "?" + str;
    }

    public final float a(c cVar) {
        String playPath = cVar.getPlayPath();
        if (TextUtils.isEmpty(playPath)) {
            return 0.0f;
        }
        String substring = playPath.substring(0, playPath.indexOf("?"));
        return this.d.getResourceDownloadProgress(substring.substring(0, substring.lastIndexOf("/")), substring.substring(substring.lastIndexOf("/") + 1), cVar.getPreferredResolution());
    }

    public final boolean a(String str, long j) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.trim().endsWith(".sqlite")) {
            return new File(str).delete();
        }
        String substring = str.substring(0, str.indexOf("?"));
        String substring2 = substring.substring(substring.lastIndexOf("/") + 1);
        if (!TextUtils.isEmpty(substring2)) {
            String substring3 = substring.substring(0, substring.lastIndexOf("/"));
            this.d.updateStoragePath(substring3);
            if (this.d.clearCache(substring3, substring2, 1, j) == 0) {
                return true;
            }
        }
        return false;
    }
}
