package com.tencent.rtmp.downloader.a;

import android.app.Application;
import android.content.Context;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Base64;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.txcvodplayer.b.e;
import com.tencent.liteav.txcvodplayer.b.f;
import com.tencent.liteav.txcvodplayer.b.g;
import com.tencent.rtmp.TXPlayerAuthBuilder;
import com.tencent.rtmp.TXPlayerDrmBuilder;
import com.tencent.rtmp.downloader.ITXVodDownloadListener;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
import com.tencent.rtmp.downloader.TXVodDownloadManager;
import com.tencent.rtmp.downloader.TXVodDownloadMediaInfo;
import com.tencent.rtmp.downloader.a.d;
import com.unity3d.services.UnityAdsConstants;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public d f10468a;
    public ArrayList<c> b;
    public ITXVodDownloadListener c;
    d.a d = new d.a() { // from class: com.tencent.rtmp.downloader.a.b.3
        @Override // com.tencent.rtmp.downloader.a.d.a
        public final void a(c cVar) {
            if (cVar != null) {
                LiteavLog.i("TXVodDownloadManagerImpl", "downloadBegin " + cVar.getPlayPath());
                cVar.d(1);
                b.a(b.this, cVar);
                ITXVodDownloadListener iTXVodDownloadListener = b.this.c;
                if (iTXVodDownloadListener != null) {
                    iTXVodDownloadListener.onDownloadStart(cVar);
                }
            }
        }

        @Override // com.tencent.rtmp.downloader.a.d.a
        public final void b(c cVar) {
            if (cVar != null) {
                LiteavLog.i("TXVodDownloadManagerImpl", "downloadEnd " + cVar.getPlayPath());
                cVar.d(2);
                b.a(b.this, cVar);
                synchronized (b.this.b) {
                    b.this.b.remove(cVar);
                }
                ITXVodDownloadListener iTXVodDownloadListener = b.this.c;
                if (iTXVodDownloadListener != null) {
                    iTXVodDownloadListener.onDownloadStop(cVar);
                }
            }
        }

        @Override // com.tencent.rtmp.downloader.a.d.a
        public final void c(c cVar) {
            if (cVar != null) {
                LiteavLog.i("TXVodDownloadManagerImpl", "downloadFinish " + cVar.getPlayPath());
                cVar.d(4);
                b.a(b.this, cVar);
                synchronized (b.this.b) {
                    b.this.b.remove(cVar);
                }
                ITXVodDownloadListener iTXVodDownloadListener = b.this.c;
                if (iTXVodDownloadListener != null) {
                    iTXVodDownloadListener.onDownloadFinish(cVar);
                }
            }
        }

        @Override // com.tencent.rtmp.downloader.a.d.a
        public final void d(c cVar) {
            ITXVodDownloadListener iTXVodDownloadListener;
            if (cVar != null && (iTXVodDownloadListener = b.this.c) != null) {
                iTXVodDownloadListener.onDownloadProgress(cVar);
            }
        }

        @Override // com.tencent.rtmp.downloader.a.d.a
        public final void a(c cVar, int i, String str) {
            if (cVar != null) {
                LiteavLog.w("TXVodDownloadManagerImpl", "downloadError " + cVar.getPlayPath() + " " + i + " ： " + str);
                cVar.d(3);
                b.a(b.this, cVar);
                synchronized (b.this.b) {
                    b.this.b.remove(cVar);
                }
                if (b.this.c != null) {
                    if (cVar.getDownloadState() == 2) {
                        b.this.c.onDownloadStop(cVar);
                    } else if (i == 1008) {
                        b.this.c.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_HLS_KEY_ERROR, str);
                    } else if (i == 14020003) {
                        b.this.c.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_403FORBIDDEN, str);
                    } else {
                        b.this.c.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_DISCONNECT, str);
                    }
                }
            }
        }
    };
    private com.tencent.liteav.txcplayer.a.c e;

    public b() {
        Context b = b();
        d a2 = d.a(b);
        this.f10468a = a2;
        if (a2 != null) {
            a2.b = this.d;
        }
        this.b = new ArrayList<>();
        if (b != null) {
            ContextUtils.initApplicationContext(b);
            ContextUtils.setDataDirectorySuffix("liteav");
            this.e = new com.tencent.liteav.txcplayer.a.c("vod_download");
        }
    }

    private static Context b() {
        try {
            Method method = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", null);
            if (method == null) {
                return null;
            }
            method.setAccessible(true);
            Object invoke = method.invoke(null, null);
            Method method2 = invoke.getClass().getMethod("getApplication", null);
            if (method2 == null) {
                return null;
            }
            return ((Application) method2.invoke(invoke, null)).getApplicationContext();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private String c(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        TXVodDownloadDataSource dataSource = tXVodDownloadMediaInfo.getDataSource();
        if (dataSource == null) {
            if (TextUtils.isEmpty(tXVodDownloadMediaInfo.getUrl())) {
                return null;
            }
            String str = "_" + com.tencent.liteav.txcplayer.a.a.b(tXVodDownloadMediaInfo.getUrl());
            if (!TextUtils.isEmpty(this.e.b(str))) {
                return str;
            }
            String str2 = tXVodDownloadMediaInfo.getUserName() + str;
            if (TextUtils.isEmpty(this.e.b(str2)) && tXVodDownloadMediaInfo.getPreferredResolution() > 0) {
                return str2 + "_" + tXVodDownloadMediaInfo.getPreferredResolution();
            }
            return str2;
        } else if (TextUtils.isEmpty(dataSource.getFileId())) {
            return null;
        } else {
            return dataSource.getUserName() + "_" + dataSource.getAppId() + "_" + dataSource.getFileId() + "_" + dataSource.getQuality();
        }
    }

    private c d(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        c cVar = null;
        if (tXVodDownloadMediaInfo == null) {
            return null;
        }
        synchronized (this.b) {
            try {
                ArrayList<c> arrayList = this.b;
                int size = arrayList.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    c cVar2 = arrayList.get(i);
                    i++;
                    c cVar3 = cVar2;
                    if (cVar3.getPlayPath().equals(tXVodDownloadMediaInfo.getPlayPath())) {
                        cVar = cVar3;
                        break;
                    }
                }
            } finally {
            }
        }
        return cVar;
    }

    public final c a(String str, long j, String str2, int i) {
        c cVar = new c();
        cVar.b(str);
        cVar.c(str2);
        cVar.f(i);
        cVar.c(j);
        c a2 = a((TXVodDownloadMediaInfo) cVar);
        if (a2 != null) {
            return a2;
        }
        a(cVar);
        return cVar;
    }

    public final c a(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        c b;
        String c = c(tXVodDownloadMediaInfo);
        if (TextUtils.isEmpty(c)) {
            return null;
        }
        String b2 = this.e.b(c);
        if (TextUtils.isEmpty(b2) || (b = b(b2)) == null) {
            return null;
        }
        LiteavLog.i("TXVodDownloadManagerImpl", "partly download, resume download");
        b.f(tXVodDownloadMediaInfo.getEncryptedLevel());
        a(b);
        return b;
    }

    public final boolean b(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        TXPlayerDrmBuilder drmBuilder;
        synchronized (this.b) {
            try {
                ArrayList<c> arrayList = this.b;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    c cVar = arrayList.get(i);
                    i++;
                    c cVar2 = cVar;
                    if (!TextUtils.isEmpty(cVar2.getPlayPath()) && cVar2.getPlayPath().equals(tXVodDownloadMediaInfo.getPlayPath())) {
                        LiteavLog.e("TXVodDownloadManagerImpl", "file is downloading, can not be delete");
                        return false;
                    }
                }
                d dVar = this.f10468a;
                String playPath = tXVodDownloadMediaInfo.getPlayPath();
                boolean a2 = dVar.a(playPath, tXVodDownloadMediaInfo.getPreferredResolution());
                if (a2 && (drmBuilder = tXVodDownloadMediaInfo.getDrmBuilder()) != null) {
                    String playUrl = drmBuilder.getPlayUrl();
                    String keyLicenseUrl = drmBuilder.getKeyLicenseUrl();
                    if (!TextUtils.isEmpty(playUrl) && !TextUtils.isEmpty(keyLicenseUrl)) {
                        String substring = playPath.substring(0, playPath.indexOf("?"));
                        a2 = dVar.d.deleteOfflineLicenseKeySetId(substring.substring(0, substring.lastIndexOf("/")), playUrl, keyLicenseUrl) == 0;
                    }
                }
                if (a2) {
                    String c = c(tXVodDownloadMediaInfo);
                    com.tencent.liteav.txcplayer.a.c cVar3 = this.e;
                    if (cVar3 != null) {
                        cVar3.a(c);
                        this.e.a(c + "_kv");
                        this.e.a();
                        TXVodDownloadDataSource dataSource = tXVodDownloadMediaInfo.getDataSource();
                        if (dataSource != null && !TextUtils.isEmpty(dataSource.getOverlayKey())) {
                            com.tencent.liteav.txcvodplayer.c.a a3 = com.tencent.liteav.txcvodplayer.c.a.a();
                            int appId = dataSource.getAppId();
                            String fileId = dataSource.getFileId();
                            if (!TextUtils.isEmpty(fileId)) {
                                a3.f10337a.a(com.tencent.liteav.txcvodplayer.c.a.b(appId, fileId));
                                a3.f10337a.a();
                            }
                        }
                        LiteavLog.i("TXVodDownloadManagerImpl", "delete DownloadMediaInfo and file complete");
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final c a(final TXVodDownloadDataSource tXVodDownloadDataSource) {
        final a aVar;
        final c cVar = new c();
        if (TextUtils.isEmpty(tXVodDownloadDataSource.getTemplateName())) {
            aVar = new a(tXVodDownloadDataSource.getAuthBuilder(), tXVodDownloadDataSource.getQuality());
        } else {
            aVar = new a(tXVodDownloadDataSource.getAuthBuilder(), tXVodDownloadDataSource.getTemplateName());
        }
        cVar.a(aVar);
        c a2 = a((TXVodDownloadMediaInfo) cVar);
        if (a2 != null) {
            return a2;
        }
        if (tXVodDownloadDataSource.getAuthBuilder() != null) {
            TXPlayerAuthBuilder authBuilder = aVar.getAuthBuilder();
            com.tencent.liteav.txcvodplayer.b.d dVar = new com.tencent.liteav.txcvodplayer.b.d();
            dVar.e = authBuilder.isHttps();
            dVar.a(new e() { // from class: com.tencent.rtmp.downloader.a.b.1
                @Override // com.tencent.liteav.txcvodplayer.b.e
                public final void a(com.tencent.liteav.txcvodplayer.b.d dVar2) {
                    String templateName;
                    String str;
                    List<Integer> list;
                    String str2;
                    if (cVar.getDownloadState() == 2) {
                        synchronized (b.this.b) {
                            b.this.b.remove(cVar);
                        }
                        ITXVodDownloadListener iTXVodDownloadListener = b.this.c;
                        if (iTXVodDownloadListener != null) {
                            iTXVodDownloadListener.onDownloadStop(cVar);
                        }
                        LiteavLog.w("TXVodDownloadManagerImpl", "Download task canceled");
                        return;
                    }
                    f a3 = dVar2.a();
                    g gVar = null;
                    if (tXVodDownloadDataSource.getQuality() != 1000) {
                        int quality = aVar.getQuality();
                        if (quality == 0) {
                            gVar = a3.f();
                        } else {
                            String b = a.b(quality);
                            List<f.a> k = a3.k();
                            if (k != null) {
                                for (f.a aVar2 : k) {
                                    if (aVar2.f10335a.equals(b)) {
                                        list = aVar2.c;
                                        break;
                                    }
                                }
                            }
                            list = null;
                            if (list != null) {
                                for (g gVar2 : a3.e()) {
                                    if (!list.contains(Integer.valueOf(gVar2.i)) || ((str2 = gVar2.g) != null && !str2.contains("hls"))) {
                                    }
                                    gVar = gVar2;
                                }
                            }
                        }
                    } else if (tXVodDownloadDataSource.getTemplateName() != null && (templateName = aVar.getTemplateName()) != null) {
                        for (g gVar22 : a3.e()) {
                            if (!templateName.equals(gVar22.h) || ((str = gVar22.g) != null && !str.contains("hls"))) {
                            }
                            gVar = gVar22;
                        }
                    }
                    if (gVar == null) {
                        synchronized (b.this.b) {
                            b.this.b.remove(cVar);
                        }
                        ITXVodDownloadListener iTXVodDownloadListener2 = b.this.c;
                        if (iTXVodDownloadListener2 != null) {
                            iTXVodDownloadListener2.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_NO_FILE, "No such resolution");
                            return;
                        }
                        return;
                    }
                    String str3 = gVar.f10336a;
                    TXVodDownloadDataSource tXVodDownloadDataSource2 = tXVodDownloadDataSource;
                    if (tXVodDownloadDataSource2 != null) {
                        str3 = com.tencent.liteav.txcplayer.a.a.a(str3, tXVodDownloadDataSource2.getToken());
                    }
                    cVar.b(str3);
                    cVar.a(gVar.d);
                    cVar.a(gVar.e * 1000);
                    b.this.a(cVar);
                }

                @Override // com.tencent.liteav.txcvodplayer.b.e
                public final void a(com.tencent.liteav.txcvodplayer.b.d dVar2, String str, int i) {
                    synchronized (b.this.b) {
                        b.this.b.remove(cVar);
                    }
                    ITXVodDownloadListener iTXVodDownloadListener = b.this.c;
                    if (iTXVodDownloadListener != null) {
                        iTXVodDownloadListener.onDownloadError(cVar, -5001, str);
                    }
                }
            });
            if (dVar.a(authBuilder.getAppId(), authBuilder.getFileId(), authBuilder.getTimeout(), authBuilder.getUs(), authBuilder.getExper(), authBuilder.getSign()) == 0) {
                cVar.a(dVar);
                synchronized (this.b) {
                    this.b.add(cVar);
                }
                return cVar;
            }
            LiteavLog.e("TXVodDownloadManagerImpl", "unable to getPlayInfo");
            return null;
        }
        return null;
    }

    public final void a(c cVar) {
        String url = cVar.getUrl();
        if (TextUtils.isEmpty(url)) {
            return;
        }
        cVar.a(a(this.f10468a.a(url), cVar));
        if (cVar.getPlayPath() == null) {
            ITXVodDownloadListener iTXVodDownloadListener = this.c;
            if (iTXVodDownloadListener != null) {
                iTXVodDownloadListener.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_PATH_ERROR, "Failed to create local path");
                return;
            }
            return;
        }
        LiteavLog.i("TXVodDownloadManagerImpl", "download url " + url + " to " + cVar.getPlayPath());
        synchronized (this.b) {
            this.b.add(cVar);
        }
        cVar.c(this.f10468a.c(cVar));
        if (cVar.getTaskId() < 0) {
            LiteavLog.e("TXVodDownloadManagerImpl", "start download failed");
            ITXVodDownloadListener iTXVodDownloadListener2 = this.c;
            if (iTXVodDownloadListener2 != null) {
                iTXVodDownloadListener2.onDownloadError(cVar, TXVodDownloadManager.DOWNLOAD_FORMAT_ERROR, UnityAdsConstants.Messages.MSG_INTERNAL_ERROR);
            }
        }
    }

    private c b(String str) {
        a aVar;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        byte[] decode = Base64.decode(str, 2);
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(decode, 0, decode.length);
        obtain.setDataPosition(0);
        c createFromParcel = c.CREATOR.createFromParcel(obtain);
        obtain.recycle();
        if (createFromParcel == null) {
            return null;
        }
        if (d(createFromParcel) == null) {
            if (createFromParcel.getDownloadState() == 1) {
                createFromParcel.d(2);
                createFromParcel.a(this.f10468a.a(createFromParcel));
            }
            if (!this.f10468a.b(createFromParcel)) {
                createFromParcel.a();
            }
        }
        if (!createFromParcel.getPlayPath().contains("&oversign=") && (aVar = (a) createFromParcel.getDataSource()) != null && !TextUtils.isEmpty(aVar.getOverlayKey())) {
            createFromParcel.a(a(createFromParcel.getPlayPath(), createFromParcel));
        }
        return createFromParcel;
    }

    private static String a(String str, c cVar) {
        TXVodDownloadDataSource dataSource = cVar.getDataSource();
        StringBuilder sb = new StringBuilder();
        if (dataSource != null && !TextUtils.isEmpty(dataSource.getOverlayKey())) {
            sb.append("&oversign=");
            sb.append(dataSource.getAppId());
            sb.append("&o1=");
            sb.append(dataSource.getUserName());
            sb.append("&o2=");
            sb.append(dataSource.getFileId());
            sb.append("&o3=");
            sb.append(dataSource.getQuality());
            sb.append("&o4=");
            sb.append(dataSource.getOverlayKey());
            sb.append("&o5=");
            sb.append(dataSource.getOverlayIv());
        }
        if (cVar.getPreferredResolution() > 0) {
            if (sb.length() == 0) {
                sb.append("&oversign=");
            }
            sb.append("&o6=");
            sb.append(cVar.getPreferredResolution());
        }
        TXPlayerDrmBuilder drmBuilder = cVar.getDrmBuilder();
        if (drmBuilder != null) {
            String keyLicenseUrl = drmBuilder.getKeyLicenseUrl();
            if (!TextUtils.isEmpty(keyLicenseUrl)) {
                if (sb.length() == 0) {
                    sb.append("&oversign=");
                }
                sb.append("&o7=");
                sb.append(keyLicenseUrl);
            }
        }
        if (sb.length() > 0) {
            sb.append("&oversign=");
            return str.concat(sb.toString());
        }
        return str;
    }

    public final boolean a(String str) {
        LiteavLog.i("TXVodDownloadManagerImpl", "delete file ".concat(String.valueOf(str)));
        synchronized (this.b) {
            try {
                ArrayList<c> arrayList = this.b;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    c cVar = arrayList.get(i);
                    i++;
                    c cVar2 = cVar;
                    if (cVar2.getPlayPath() != null && cVar2.getPlayPath().equals(str)) {
                        LiteavLog.e("TXVodDownloadManagerImpl", "file is downloading, can not be delete");
                        return false;
                    }
                }
                return this.f10468a.a(str, -1L);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final List<TXVodDownloadMediaInfo> a() {
        com.tencent.liteav.txcplayer.a.c cVar = this.e;
        if (cVar != null) {
            try {
                String[] b = cVar.b();
                if (b == null) {
                    return new ArrayList(0);
                }
                ArrayList arrayList = new ArrayList(b.length);
                for (String str : b) {
                    c b2 = b(this.e.b(str));
                    c d = d(b2);
                    if (d != null) {
                        arrayList.add(d);
                    } else if (b2 != null) {
                        arrayList.add(b2);
                    }
                }
                return arrayList;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return new ArrayList(0);
    }

    public final TXVodDownloadMediaInfo a(int i, String str, int i2, String str2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.b) {
            try {
                ArrayList<c> arrayList = this.b;
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    c cVar = arrayList.get(i3);
                    i3++;
                    c cVar2 = cVar;
                    TXVodDownloadDataSource dataSource = cVar2.getDataSource();
                    if (dataSource != null && dataSource.getAppId() == i && dataSource.getFileId().equals(str) && dataSource.getQuality() == i2) {
                        return cVar2;
                    }
                }
                if (this.e != null) {
                    c cVar3 = new c();
                    cVar3.a(new a(i, str, i2, null, str2));
                    return b(this.e.b(c(cVar3)));
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final TXVodDownloadMediaInfo a(String str, long j, String str2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.b) {
            try {
                ArrayList<c> arrayList = this.b;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    c cVar = arrayList.get(i);
                    i++;
                    c cVar2 = cVar;
                    if (cVar2.getUrl() != null && cVar2.getUrl().equals(str)) {
                        return cVar2;
                    }
                }
                if (this.e != null) {
                    c cVar3 = new c();
                    cVar3.b(str);
                    cVar3.c(str2);
                    if (j > 0) {
                        cVar3.c(j);
                    }
                    return b(this.e.b(c(cVar3)));
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00d2, code lost:
        if (r4 > 0) goto L55;
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void a(com.tencent.rtmp.downloader.a.b r11, com.tencent.rtmp.downloader.a.c r12, com.tencent.liteav.txcvodplayer.b.c r13) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.rtmp.downloader.a.b.a(com.tencent.rtmp.downloader.a.b, com.tencent.rtmp.downloader.a.c, com.tencent.liteav.txcvodplayer.b.c):void");
    }

    public static /* synthetic */ void a(b bVar, c cVar) {
        String str;
        if (bVar.e != null) {
            if (cVar == null) {
                str = "";
            } else {
                Parcel obtain = Parcel.obtain();
                cVar.writeToParcel(obtain, 0);
                obtain.setDataPosition(0);
                String encodeToString = Base64.encodeToString(obtain.marshall(), 2);
                obtain.recycle();
                str = encodeToString;
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String c = bVar.c(cVar);
            if (TextUtils.isEmpty(c)) {
                return;
            }
            bVar.e.a(c, str);
            bVar.e.a();
            LiteavLog.i("TXVodDownloadManagerImpl", "saveDownloadMediaInfo key: " + c + "| mediaInfo: " + str);
        }
    }
}
