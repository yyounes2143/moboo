package com.changdu.mobovideo.utils;

import android.os.Process;
import androidx.annotation.Nullable;
import j$.util.DesugarCollections;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ALocalCache {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Map<String, ALocalCache> f5631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ALocalCacheManager f5632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class ALocalCacheManager {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public File f5634Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Map<File, Long> f5635Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f5636Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f5637Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final AtomicInteger f5638Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final AtomicLong f5639Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public final long Wwwwwwwwwwwwwwwwwwww() {
            File file;
            try {
                if (this.f5635Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
                    return 0L;
                }
                Set<Map.Entry<File, Long>> entrySet = this.f5635Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.entrySet();
                synchronized (this.f5635Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    file = null;
                    Long l = null;
                    for (Map.Entry<File, Long> entry : entrySet) {
                        if (file == null) {
                            file = entry.getKey();
                            l = entry.getValue();
                        } else {
                            Long value = entry.getValue();
                            if (value.longValue() < l.longValue()) {
                                file = entry.getKey();
                                l = value;
                            }
                        }
                    }
                }
                long Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww(file);
                if (file.delete()) {
                    this.f5635Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(file);
                    return Wwwwwwwwwwwwwwwwwwwwwwwww2;
                }
                return Wwwwwwwwwwwwwwwwwwwwwwwww2;
            } catch (Exception e) {
                Map<String, ALocalCache> map = ALocalCache.f5631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                e.getMessage();
                return 0L;
            }
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwww(String str) {
            return Wwwwwwwwwwwwwwwwwwwwwwww(str).delete();
        }

        public final void Wwwwwwwwwwwwwwwwwwwwww(File file) {
            try {
                int i = this.f5638Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
                while (i + 1 > this.f5636Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    long Wwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwww2 == 0) {
                        break;
                    }
                    this.f5639Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.addAndGet(-Wwwwwwwwwwwwwwwwwwww2);
                    i = this.f5638Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.addAndGet(-1);
                }
                this.f5638Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.addAndGet(1);
                long Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww(file);
                long j = this.f5639Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
                while (j + Wwwwwwwwwwwwwwwwwwwwwwwww2 > this.f5637Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    long Wwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwww3 == 0) {
                        break;
                    }
                    j = this.f5639Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.addAndGet(-Wwwwwwwwwwwwwwwwwwww3);
                }
                this.f5639Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.addAndGet(Wwwwwwwwwwwwwwwwwwwwwwwww2);
                long currentTimeMillis = System.currentTimeMillis();
                Long valueOf = Long.valueOf(currentTimeMillis);
                file.setLastModified(currentTimeMillis);
                this.f5635Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(file, valueOf);
            } catch (Exception e) {
                Map<String, ALocalCache> map = ALocalCache.f5631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                e.getMessage();
            }
        }

        public final File Wwwwwwwwwwwwwwwwwwwwwww(String str) {
            File file = this.f5634Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            return new File(file, str.hashCode() + "");
        }

        public final File Wwwwwwwwwwwwwwwwwwwwwwww(String str) {
            File Wwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwww(str);
            long currentTimeMillis = System.currentTimeMillis();
            Long valueOf = Long.valueOf(currentTimeMillis);
            Wwwwwwwwwwwwwwwwwwwwwww2.setLastModified(currentTimeMillis);
            this.f5635Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(Wwwwwwwwwwwwwwwwwwwwwww2, valueOf);
            return Wwwwwwwwwwwwwwwwwwwwwww2;
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwww(File file) {
            return file.length();
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwww() {
            new Thread(new Runnable() { // from class: com.changdu.mobovideo.utils.ALocalCache.ALocalCacheManager.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        File[] listFiles = ALocalCacheManager.this.f5634Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.listFiles(new FilenameFilter() { // from class: com.changdu.mobovideo.utils.ALocalCache.ALocalCacheManager.1.1
                            @Override // java.io.FilenameFilter
                            public boolean accept(File file, String str) {
                                return true;
                            }
                        });
                        if (listFiles != null) {
                            int i = 0;
                            int i2 = 0;
                            for (File file : listFiles) {
                                i = (int) (i + ALocalCacheManager.this.Wwwwwwwwwwwwwwwwwwwwwwwww(file));
                                i2++;
                                ALocalCacheManager.this.f5635Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(file, Long.valueOf(file.lastModified()));
                            }
                            ALocalCacheManager.this.f5639Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(i);
                            ALocalCacheManager.this.f5638Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(i2);
                        }
                    } catch (Exception e) {
                        Map<String, ALocalCache> map = ALocalCache.f5631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        e.getMessage();
                    }
                }
            }, "ALocalCacheThread").start();
        }

        public ALocalCacheManager(File file, long j, int i) {
            this.f5635Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = DesugarCollections.synchronizedMap(new HashMap());
            this.f5634Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = file;
            this.f5637Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
            this.f5636Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f5639Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicLong();
            this.f5638Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicInteger();
            Wwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Utils {
        public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr) {
            try {
                String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length == 2) {
                    String str = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[0];
                    while (str.startsWith("0")) {
                        str = str.substring(1, str.length());
                    }
                    if (System.currentTimeMillis() > Long.valueOf(str).longValue() + (Long.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[1]).longValue() * 1000)) {
                        return true;
                    }
                }
            } catch (Exception e) {
                Map<String, ALocalCache> map = ALocalCache.f5631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                e.getMessage();
            }
            return false;
        }

        public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwww(str.getBytes());
        }

        public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, char c) {
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] == c) {
                    return i;
                }
            }
            return -1;
        }

        public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr) {
            if (bArr != null && bArr.length > 15 && bArr[13] == 45 && Wwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, ' ') > 14) {
                try {
                    Long.valueOf(new String(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, 0, 13)));
                    return true;
                } catch (Exception unused) {
                }
            }
            return false;
        }

        public static String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr)) {
                return new String[]{new String(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, 0, 13)), new String(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, 14, Wwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, ' ')))};
            }
            return null;
        }

        public static byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, int i, int i2) {
            int i3 = i2 - i;
            if (i3 >= 0) {
                byte[] bArr2 = new byte[i3];
                System.arraycopy(bArr, i, bArr2, 0, Math.min(bArr.length - i, i3));
                return bArr2;
            }
            throw new IllegalArgumentException(i + " > " + i2);
        }

        public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            if (str != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str.getBytes())) {
                return str.substring(str.indexOf(32) + 1, str.length());
            }
            return str;
        }
    }

    public ALocalCache(File file, long j, int i) {
        Exception exc;
        try {
            if (!file.exists()) {
                try {
                    if (!file.mkdirs()) {
                        throw new RuntimeException("can't make dirs in " + file.getAbsolutePath());
                    }
                } catch (Exception e) {
                    exc = e;
                    exc.getMessage();
                }
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            this.f5632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ALocalCacheManager(file, j, i);
        } catch (Exception e3) {
            e = e3;
            exc = e;
            exc.getMessage();
        }
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return "_" + Process.myPid();
    }

    @Nullable
    public static ALocalCache Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file, long j, int i) {
        try {
            Map<String, ALocalCache> map = f5631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            ALocalCache aLocalCache = map.get(file.getAbsoluteFile() + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            if (aLocalCache == null) {
                ALocalCache aLocalCache2 = new ALocalCache(file, j, i);
                Map<String, ALocalCache> map2 = f5631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                map2.put(file.getAbsolutePath() + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), aLocalCache2);
                return aLocalCache2;
            }
            if (!file.exists() && !file.mkdirs()) {
                throw new RuntimeException("can't make dirs in " + file.getAbsolutePath());
            }
            return aLocalCache;
        } catch (Exception e) {
            e.getMessage();
            return null;
        }
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return this.f5632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(str);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
        BufferedWriter bufferedWriter;
        ALocalCacheManager aLocalCacheManager = this.f5632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (aLocalCacheManager != null) {
            File Wwwwwwwwwwwwwwwwwwwwwww2 = aLocalCacheManager.Wwwwwwwwwwwwwwwwwwwwwww(str);
            BufferedWriter bufferedWriter2 = null;
            try {
                try {
                    try {
                        bufferedWriter = new BufferedWriter(new FileWriter(Wwwwwwwwwwwwwwwwwwwwwww2), 1024);
                    } catch (Exception unused) {
                    }
                } catch (IOException e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                bufferedWriter.write(str2);
                bufferedWriter.flush();
                bufferedWriter.close();
            } catch (IOException e2) {
                e = e2;
                bufferedWriter2 = bufferedWriter;
                e.getMessage();
                if (bufferedWriter2 != null) {
                    bufferedWriter2.flush();
                    bufferedWriter2.close();
                }
                this.f5632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww2);
            } catch (Throwable th2) {
                th = th2;
                bufferedWriter2 = bufferedWriter;
                if (bufferedWriter2 != null) {
                    try {
                        bufferedWriter2.flush();
                        bufferedWriter2.close();
                    } catch (Exception unused2) {
                    }
                }
                this.f5632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww2);
                throw th;
            }
            this.f5632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww2);
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    @Nullable
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        BufferedReader bufferedReader;
        ALocalCacheManager aLocalCacheManager = this.f5632Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        BufferedReader bufferedReader2 = null;
        if (aLocalCacheManager != null) {
            File Wwwwwwwwwwwwwwwwwwwwwwww2 = aLocalCacheManager.Wwwwwwwwwwwwwwwwwwwwwwww(str);
            ?? exists = Wwwwwwwwwwwwwwwwwwwwwwww2.exists();
            try {
                if (exists == 0) {
                    return null;
                }
                try {
                    bufferedReader = new BufferedReader(new FileReader(Wwwwwwwwwwwwwwwwwwwwwwww2));
                    String str2 = "";
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            str2 = str2 + readLine;
                        } catch (IOException e) {
                            e = e;
                            e.getMessage();
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused) {
                                }
                            }
                            return null;
                        }
                    }
                    if (!Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(str2)) {
                        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2);
                        try {
                            bufferedReader.close();
                        } catch (IOException unused2) {
                        }
                        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    }
                    try {
                        bufferedReader.close();
                    } catch (IOException unused3) {
                    }
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                    return null;
                } catch (IOException e2) {
                    e = e2;
                    bufferedReader = null;
                } catch (Throwable th) {
                    th = th;
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException unused4) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedReader2 = exists;
            }
        } else {
            return null;
        }
    }
}
