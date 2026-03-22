package com.tencent.liteav.txcvodplayer.c;

import android.text.TextUtils;
import com.tencent.liteav.base.storage.PersistStorage;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.txcvodplayer.b.c;
import com.tencent.liteav.txcvodplayer.hlsencoder.TXCHLSEncoder;
import java.io.File;
import java.util.HashSet;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class a {
    private static a d;

    /* renamed from: a  reason: collision with root package name */
    public final com.tencent.liteav.txcplayer.a.c f10337a;
    public final Object b = new Object();
    public final Set<String> c;
    private final com.tencent.liteav.txcplayer.a.c e;
    private volatile long f;
    private final com.tencent.liteav.txcplayer.a.c g;

    private a() {
        long longValue;
        com.tencent.liteav.txcplayer.a.c cVar = new com.tencent.liteav.txcplayer.a.c("v4_cache");
        this.e = cVar;
        Long l = cVar.b.getLong("clean_time");
        if (l == null) {
            PersistStorage persistStorage = cVar.f10289a;
            if (persistStorage != null) {
                l = persistStorage.getLong("clean_time");
                if (l != null) {
                    cVar.b.put("clean_time", l.longValue());
                    cVar.f10289a.clear("clean_time");
                    cVar.b.commit();
                    cVar.f10289a.commit();
                }
            } else {
                l = null;
            }
        }
        if (l == null) {
            longValue = 0;
        } else {
            longValue = l.longValue();
        }
        this.f = longValue;
        this.f10337a = new com.tencent.liteav.txcplayer.a.c("v4_download");
        this.g = new com.tencent.liteav.txcplayer.a.c("v4_common");
        this.c = new HashSet();
    }

    public static a a() {
        synchronized (a.class) {
            try {
                if (d == null) {
                    d = new a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return d;
    }

    public final void b() {
        String a2 = com.tencent.liteav.txcplayer.common.b.a();
        if (TextUtils.isEmpty(a2)) {
            LiteavLog.i("PlayInfoProtocolV4Storage", "clean cacheDir is empty");
            return;
        }
        long currentTimeMillis = System.currentTimeMillis() / 3600000;
        if (this.f > 0 && currentTimeMillis - this.f < 24) {
            LiteavLog.i("PlayInfoProtocolV4Storage", "clean mLastCacheCleanTime: " + this.f + " not more than 24h");
            return;
        }
        this.f = currentTimeMillis;
        com.tencent.liteav.txcplayer.common.a.a().execute(d.a(this, a2, currentTimeMillis));
    }

    public final String c() {
        String b = this.g.b("vld_host");
        if (b == null) {
            return "";
        }
        return b;
    }

    public final void a(int i, String str, c.b bVar, String str2) {
        if (!TextUtils.isEmpty(str) && bVar != null && !TextUtils.isEmpty(bVar.f10327a) && !TextUtils.isEmpty(bVar.b) && !TextUtils.isEmpty(bVar.c) && !TextUtils.isEmpty(bVar.d) && !TextUtils.isEmpty(str2)) {
            com.tencent.liteav.txcplayer.common.a.a().execute(b.a(this, i, str, str2, bVar));
            return;
        }
        LiteavLog.w("PlayInfoProtocolV4Storage", "put params empty fileId: " + str + " url:" + str2);
    }

    public static String b(int i, String str) {
        return i + "_" + str;
    }

    public static /* synthetic */ void a(a aVar, int i, String str, String str2, c.b bVar) {
        String b = b(i, str);
        String d2 = com.tencent.liteav.txcplayer.a.a.d(str2);
        String a2 = TXCHLSEncoder.a(i, "default", str, 0);
        String a3 = TXCHLSEncoder.a(a2, bVar.f10327a);
        String a4 = TXCHLSEncoder.a(a2, bVar.b);
        StringBuilder sb = new StringBuilder(a3);
        sb.append("_");
        sb.append(a4);
        sb.append("_");
        sb.append(d2);
        sb.append("_");
        sb.append(System.currentTimeMillis() / 3600000);
        sb.append("_");
        sb.append(bVar.c);
        sb.append("_");
        sb.append(bVar.d);
        aVar.e.a(b, sb.toString());
        aVar.e.a();
        LiteavLog.i("PlayInfoProtocolV4Storage", "put cache key: " + b + " value:" + sb.toString());
    }

    public final void a(int i, String str, c.b bVar) {
        if (!TextUtils.isEmpty(str) && bVar != null && !TextUtils.isEmpty(bVar.f10327a) && !TextUtils.isEmpty(bVar.b) && !TextUtils.isEmpty(bVar.c) && !TextUtils.isEmpty(bVar.d)) {
            com.tencent.liteav.txcplayer.common.a.a().execute(c.a(this, i, str, bVar));
        } else {
            LiteavLog.w("PlayInfoProtocolV4Storage", "put params empty fileId: ".concat(String.valueOf(str)));
        }
    }

    public static /* synthetic */ void a(a aVar, int i, String str, c.b bVar) {
        String b = b(i, str);
        String a2 = TXCHLSEncoder.a(i, "default", str, 0);
        String a3 = TXCHLSEncoder.a(a2, bVar.f10327a);
        String a4 = TXCHLSEncoder.a(a2, bVar.b);
        StringBuilder sb = new StringBuilder(a3);
        sb.append("_");
        sb.append(a4);
        sb.append("_");
        sb.append(bVar.c);
        sb.append("_");
        sb.append(bVar.d);
        aVar.f10337a.a(b, sb.toString());
        aVar.f10337a.a();
        LiteavLog.i("PlayInfoProtocolV4Storage", "put download key: " + b + " value:" + sb.toString());
    }

    public final c.b a(int i, String str) {
        boolean z;
        String[] split;
        c.b bVar = null;
        if (TextUtils.isEmpty(str)) {
            LiteavLog.w("PlayInfoProtocolV4Storage", "get fileId is empty");
            return null;
        }
        String b = b(i, str);
        String b2 = this.f10337a.b(b);
        if (TextUtils.isEmpty(b2)) {
            b2 = this.e.b(b);
            z = false;
        } else {
            z = true;
        }
        if (!TextUtils.isEmpty(b2) && (split = b2.split("_")) != null && split.length >= 2) {
            bVar = new c.b();
            String a2 = TXCHLSEncoder.a(i, "default", str, 0);
            bVar.f10327a = TXCHLSEncoder.b(a2, split[0]);
            bVar.b = TXCHLSEncoder.b(a2, split[1]);
            if (z) {
                if (split.length >= 4) {
                    bVar.c = split[2];
                    bVar.d = split[3];
                }
            } else if (split.length >= 6) {
                bVar.c = split[4];
                bVar.d = split[5];
            }
            LiteavLog.i("PlayInfoProtocolV4Storage", "get key: " + bVar.f10327a + " iv: " + bVar.b);
        }
        return bVar;
    }

    public static /* synthetic */ void a(a aVar, String str, long j) {
        if (!str.endsWith("/")) {
            str = str + "/";
        }
        String[] b = aVar.e.b();
        if (b == null) {
            return;
        }
        for (String str2 : b) {
            String b2 = aVar.e.b(str2);
            if (b2 != null) {
                String[] split = b2.split("_");
                if (split.length >= 4) {
                    try {
                        long parseLong = j - Long.parseLong(split[3]);
                        if (str2.startsWith("666_")) {
                            if (parseLong >= 24) {
                                if (new File(str + "tp_dp_file/" + split[2]).exists()) {
                                    continue;
                                } else {
                                    synchronized (aVar.b) {
                                        try {
                                            if (!aVar.c.contains(split[2])) {
                                                aVar.e.a(str2);
                                                aVar.e.a();
                                                LiteavLog.i("PlayInfoProtocolV4Storage", "clean key: " + str2 + " value: " + b2);
                                            }
                                        } finally {
                                        }
                                    }
                                }
                            } else {
                                continue;
                            }
                        } else if (parseLong >= 24) {
                            if (parseLong < 72) {
                                if (!new File(str + split[2]).exists()) {
                                    if (new File(str + "." + split[2] + ".m3u8").exists()) {
                                    }
                                }
                            }
                            aVar.e.a(str2);
                            aVar.e.a();
                            LiteavLog.i("PlayInfoProtocolV4Storage", "clean key: " + str2 + " value: " + b2);
                        }
                    } catch (Exception unused) {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        }
        com.tencent.liteav.txcplayer.a.c cVar = aVar.e;
        cVar.b.put("clean_time", aVar.f);
        PersistStorage persistStorage = cVar.f10289a;
        if (persistStorage != null) {
            persistStorage.clear("clean_time");
        }
        aVar.e.a();
    }

    public final void a(String str) {
        if (str == null) {
            str = "";
        }
        if (str.equals(c())) {
            return;
        }
        this.g.a("vld_host", str);
        this.g.a();
        LiteavLog.i("PlayInfoProtocolV4Storage", "save host: ".concat(str));
    }
}
