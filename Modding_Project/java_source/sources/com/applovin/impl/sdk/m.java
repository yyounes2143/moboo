package com.applovin.impl.sdk;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import com.applovin.impl.f6;
import com.applovin.impl.l4;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.w4;
import com.applovin.impl.y1;
import com.applovin.impl.z6;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class m {
    private final k b;
    private final o c;
    private final boolean f;

    /* renamed from: a  reason: collision with root package name */
    private final String f3695a = "FileManager";
    private final Object d = new Object();
    private final Set e = new HashSet();

    public m(k kVar) {
        this.b = kVar;
        this.c = kVar.O();
        this.f = ((Boolean) kVar.a(l4.R0)).booleanValue();
    }

    private boolean e(File file) {
        if (file == null) {
            return false;
        }
        String absolutePath = file.getAbsolutePath();
        synchronized (this.d) {
            try {
                if (this.e.contains(absolutePath)) {
                    return false;
                }
                d(file);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean g(File file) {
        if (o.a()) {
            o oVar = this.c;
            oVar.a("FileManager", "Removing file " + file.getName() + " from filesystem...");
        }
        try {
            d(file);
            boolean delete = file.delete();
            if (!delete) {
                HashMap<String, String> hashMap = CollectionUtils.hashMap(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, file.getAbsolutePath());
                hashMap.put("details", b(file));
                this.b.E().a(y1.t0, "removeFile", hashMap);
            }
            h(file);
            return delete;
        } catch (Throwable th) {
            try {
                if (o.a()) {
                    o oVar2 = this.c;
                    oVar2.a("FileManager", "Failed to remove file " + file.getName() + " from filesystem!", th);
                }
                this.b.E().a("FileManager", "removeFile", th);
                h(file);
                return false;
            } catch (Throwable th2) {
                h(file);
                throw th2;
            }
        }
    }

    private void h(File file) {
        String absolutePath = file.getAbsolutePath();
        synchronized (this.d) {
            try {
                if (!this.e.remove(absolutePath)) {
                    this.b.E().a(y1.t0, "unlockFile", CollectionUtils.hashMap(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, absolutePath));
                }
                this.d.notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public File a(String str, Context context) {
        return a(str, true, context);
    }

    public void b(Context context) {
        if (this.b.E0()) {
            if (o.a()) {
                this.c.a("FileManager", "Compacting cache...");
            }
            a(a(context), context);
        }
    }

    public void c(final com.applovin.impl.sdk.ad.b bVar, final Context context) {
        this.b.q0().a((w4) new f6(this.b, false, "removeCachedResourcesForAd", new Runnable() { // from class: com.applovin.impl.sdk.Kkkkkkkkkkkkkkkkkkkkkkkk
            @Override // java.lang.Runnable
            public final void run() {
                m.this.a(bVar, context);
            }
        }), r5.b.CACHING);
    }

    public void d(final com.applovin.impl.sdk.ad.b bVar, final Context context) {
        this.b.q0().a((w4) new f6(this.b, false, "removeCachedVideoResourceForAd", new Runnable() { // from class: com.applovin.impl.sdk.Kkkkkkkkkkkkkkkkkkkkkkk
            @Override // java.lang.Runnable
            public final void run() {
                m.this.b(bVar, context);
            }
        }), r5.b.CACHING);
    }

    public String f(File file) {
        if (file == null) {
            return null;
        }
        if (o.a()) {
            this.c.a("FileManager", "Reading resource from filesystem: " + file.getName());
        }
        boolean z = true;
        boolean z2 = false;
        try {
            try {
                try {
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        try {
                            d(file);
                            String a2 = a(fileInputStream);
                            if (a2 == null) {
                                z2 = true;
                            }
                            fileInputStream.close();
                            if (z2 && ((Boolean) this.b.a(l4.J0)).booleanValue()) {
                                a(file, "removeFileAfterReadFail");
                            }
                            h(file);
                            return a2;
                        } catch (Throwable th) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (FileNotFoundException e) {
                        if (o.a()) {
                            this.c.d("FileManager", "File not found. " + e);
                        }
                        this.c.a("FileManager", e);
                        this.b.E().a("FileManager", "readFileNotFound", e);
                        if (0 != 0 && ((Boolean) this.b.a(l4.J0)).booleanValue()) {
                            a(file, "removeFileAfterReadFail");
                        }
                        h(file);
                        return null;
                    }
                } catch (IOException e2) {
                    if (o.a()) {
                        this.c.a("FileManager", "Failed to read file: " + file.getName() + e2);
                    }
                    this.c.a("FileManager", e2);
                    this.b.E().a("FileManager", "readFileIO", e2);
                    if (((Boolean) this.b.a(l4.J0)).booleanValue()) {
                        a(file, "removeFileAfterReadFail");
                    }
                    h(file);
                    return null;
                } catch (Throwable th3) {
                    if (o.a()) {
                        this.c.a("FileManager", "Unknown failure to read file.", th3);
                    }
                    this.c.a("FileManager", th3);
                    this.b.E().a("FileManager", "readFile", th3);
                    if (((Boolean) this.b.a(l4.J0)).booleanValue()) {
                        a(file, "removeFileAfterReadFail");
                    }
                    h(file);
                    return null;
                }
            } catch (Throwable th4) {
                th = th4;
                z = false;
                if (z && ((Boolean) this.b.a(l4.J0)).booleanValue()) {
                    a(file, "removeFileAfterReadFail");
                }
                h(file);
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    private File a(String str, boolean z, Context context) {
        if (!StringUtils.isValidString(str)) {
            if (o.a()) {
                this.c.a("FileManager", "Nothing to look up, skipping...");
            }
            return null;
        }
        if (o.a()) {
            o oVar = this.c;
            oVar.a("FileManager", "Looking up cached resource: " + str);
        }
        if (str.contains(RewardPlus.ICON)) {
            str = str.replace("/", "_").replace(".", "_");
        }
        File d = d(context);
        File file = new File(d, str);
        if (z) {
            try {
                d.mkdirs();
                return file;
            } catch (Throwable th) {
                if (o.a()) {
                    o oVar2 = this.c;
                    oVar2.a("FileManager", "Unable to make cache directory at " + d, th);
                }
                this.b.E().a("FileManager", "createCacheDir", th);
                return null;
            }
        }
        return file;
    }

    private boolean c(File file) {
        boolean contains;
        String absolutePath = file.getAbsolutePath();
        synchronized (this.d) {
            contains = this.e.contains(absolutePath);
        }
        return contains;
    }

    private void d(File file) {
        String absolutePath = file.getAbsolutePath();
        synchronized (this.d) {
            boolean add = this.e.add(absolutePath);
            while (!add) {
                try {
                    this.d.wait();
                    add = this.e.add(absolutePath);
                } catch (InterruptedException e) {
                    if (o.a()) {
                        o oVar = this.c;
                        oVar.a("FileManager", "Lock '" + absolutePath + "' interrupted", e);
                    }
                    throw new RuntimeException(e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(com.applovin.impl.sdk.ad.b bVar, Context context) {
        if (bVar.w0() == null) {
            return;
        }
        g(a(bVar.w0().getLastPathSegment(), context));
    }

    private List c(Context context) {
        File[] listFiles;
        File d = d(context);
        if (d.isDirectory() && (listFiles = d.listFiles()) != null) {
            return Arrays.asList(listFiles);
        }
        return Collections.EMPTY_LIST;
    }

    public void e(Context context) {
        try {
            a(".nomedia", context);
            File file = new File(d(context), ".nomedia");
            if (a(file)) {
                return;
            }
            if (o.a()) {
                o oVar = this.c;
                oVar.a("FileManager", "Creating .nomedia file at " + file.getAbsolutePath());
            }
            if (file.createNewFile()) {
                return;
            }
            if (o.a()) {
                this.c.b("FileManager", "Failed to create .nomedia file");
            }
            this.b.E().a(y1.t0, "createNoMediaFile");
        } catch (IOException e) {
            if (o.a()) {
                this.c.a("FileManager", "Failed to create .nomedia file", e);
            }
        }
    }

    private String b(File file) {
        try {
            boolean exists = file.exists();
            boolean isDirectory = file.isDirectory();
            String[] list = file.list();
            boolean z = false;
            boolean z2 = isDirectory && list != null && list.length == 0;
            File parentFile = file.getParentFile();
            boolean z3 = parentFile != null && parentFile.exists();
            if (z3 && parentFile.canWrite()) {
                z = true;
            }
            return "fileExists: " + exists + "\nisDirectory: " + isDirectory + "\nisEmptyDirectory: " + z2 + "\nparentDirectoryExists: " + z3 + "\nisParentDirectoryWritable: " + z;
        } catch (Throwable th) {
            return "Error retrieving file deletion failure reason: " + th;
        }
    }

    private File d(Context context) {
        return new File(context.getFilesDir(), CampaignEx.JSON_KEY_AD_AL);
    }

    public boolean c(String str, Context context) {
        if (this.f) {
            return b(str, context);
        }
        boolean z = false;
        File a2 = a(str, false, context);
        if (e(a2)) {
            if (a2.exists() && !a2.isDirectory()) {
                z = true;
            }
            h(a2);
            return z;
        }
        return false;
    }

    public String a(InputStream inputStream) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[8192];
            while (true) {
                int read = inputStream.read(bArr, 0, 8192);
                if (read >= 0) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    String byteArrayOutputStream2 = byteArrayOutputStream.toString("UTF-8");
                    byteArrayOutputStream.close();
                    return byteArrayOutputStream2;
                }
            }
        } catch (Throwable th) {
            this.c.a("FileManager", th);
            this.b.E().a("FileManager", "readInputStreamAsString", th);
            return null;
        }
    }

    public boolean b(String str, Context context) {
        return a(a(str, false, context));
    }

    public boolean a(InputStream inputStream, File file, boolean z) {
        return a(inputStream, file, z, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x01d4 A[Catch: all -> 0x01da, TRY_LEAVE, TryCatch #14 {all -> 0x01da, blocks: (B:118:0x01ce, B:120:0x01d4), top: B:150:0x01ce }] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:160:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(java.io.InputStream r20, java.io.File r21, boolean r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 519
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.m.a(java.io.InputStream, java.io.File, boolean, boolean):boolean");
    }

    public boolean a(File file, String str, List list, int i, String str2, Map map) {
        return a(file, str, list, true, i, str2, map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean a(File file, String str, List list, boolean z, int i, String str2, Map map) {
        HashMap<String, String> hashMap = CollectionUtils.hashMap("url", str);
        Map map2 = map;
        hashMap.putAll(map2);
        this.b.g().d(y1.x, hashMap);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int i2 = 1;
        while (i2 <= i) {
            if (a(file, str, list, z, str2, map2)) {
                a(true, str, i2, elapsedRealtime, map);
                return true;
            }
            i2++;
            map2 = map;
        }
        a(false, str, i, elapsedRealtime, map);
        return false;
    }

    private boolean a(File file, String str, List list, boolean z, String str2, Map map) {
        Boolean bool = (Boolean) this.b.a(l4.S0);
        if (bool.booleanValue()) {
            d(file);
        }
        if (a(file)) {
            if (o.a()) {
                o oVar = this.c;
                oVar.a("FileManager", "File exists for " + str);
            }
            HashMap<String, String> hashMap = CollectionUtils.hashMap("url", str);
            hashMap.putAll(map);
            this.b.g().d(y1.y, hashMap);
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        try {
            InputStream a2 = a(str, list, z, map);
            boolean a3 = a(a2, file, bool.booleanValue(), map);
            if (a3) {
                double d = z6.d(SystemClock.elapsedRealtime() - elapsedRealtime);
                double c = z6.c(file.length());
                long j = (long) (c / d);
                HashMap<String, String> hashMap2 = CollectionUtils.hashMap(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, file.getAbsolutePath());
                CollectionUtils.putObjectToStringIfValid("network_throughput_kbps", Long.valueOf(j), hashMap2);
                CollectionUtils.putObjectToStringIfValid("details", Double.valueOf(c), hashMap2);
                hashMap2.putAll(map);
                this.b.g().d(y1.C, hashMap2);
                if (StringUtils.isValidString(str2) && str.endsWith(str2)) {
                    this.b.B().a(Long.valueOf(j));
                }
            }
            if (a2 != null) {
                a2.close();
            }
            if (bool.booleanValue()) {
                h(file);
            }
            return a3;
        } catch (Throwable th) {
            try {
                this.c.a("FileManager", th);
                this.b.E().a("FileManager", "loadAndCacheResource", th);
                if (bool.booleanValue()) {
                    h(file);
                    return false;
                }
                return false;
            } finally {
                if (bool.booleanValue()) {
                    h(file);
                }
            }
        }
    }

    private void a(boolean z, String str, int i, long j, Map map) {
        y1 y1Var = z ? y1.z : y1.A;
        long elapsedRealtime = SystemClock.elapsedRealtime() - j;
        HashMap hashMap = new HashMap(3);
        hashMap.put("attempt_number", Integer.toString(i));
        hashMap.put("url", str);
        hashMap.put("duration_ms", String.valueOf(elapsedRealtime));
        hashMap.putAll(map);
        this.b.g().d(y1Var, hashMap);
    }

    public InputStream a(String str, List list, boolean z, Map map) {
        HttpURLConnection httpURLConnection;
        if (z && !z6.a(str, list)) {
            if (o.a()) {
                this.c.a("FileManager", "Domain is not whitelisted, skipping precache for url: " + str);
            }
            return null;
        }
        String httpsString = StringUtils.toHttpsString(str);
        if (o.a()) {
            this.c.a("FileManager", "Loading " + httpsString + "...");
        }
        HashMap<String, String> hashMap = CollectionUtils.hashMap("url", httpsString);
        hashMap.putAll(map);
        this.b.g().d(y1.B, hashMap);
        try {
            httpURLConnection = (HttpURLConnection) new URL(httpsString).openConnection();
            try {
                httpURLConnection.setConnectTimeout(((Integer) this.b.a(l4.L2)).intValue());
                httpURLConnection.setReadTimeout(((Integer) this.b.a(l4.M2)).intValue());
                httpURLConnection.setDefaultUseCaches(true);
                httpURLConnection.setUseCaches(true);
                httpURLConnection.setAllowUserInteraction(false);
                httpURLConnection.setInstanceFollowRedirects(true);
                int responseCode = httpURLConnection.getResponseCode();
                this.b.E().a("loadResource", httpsString, responseCode, httpURLConnection.getResponseMessage());
                if (responseCode >= 200 && responseCode < 300) {
                    if (o.a()) {
                        this.c.a("FileManager", "Opened stream to resource " + httpsString);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    if (((Boolean) this.b.a(l4.j3)).booleanValue()) {
                        z6.a(httpURLConnection, this.b);
                    }
                    return inputStream;
                }
                return null;
            } catch (Throwable th) {
                th = th;
                try {
                    if (o.a()) {
                        this.c.a("FileManager", "Error loading " + httpsString, th);
                    }
                    this.b.E().a("FileManager", "loadResource", th, CollectionUtils.hashMap("url", httpsString));
                    if (((Boolean) this.b.a(l4.j3)).booleanValue()) {
                        z6.a(httpURLConnection, this.b);
                    }
                    return null;
                } finally {
                    if (((Boolean) this.b.a(l4.j3)).booleanValue()) {
                        z6.a(httpURLConnection, this.b);
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection = null;
        }
    }

    private boolean a(InputStream inputStream, File file, boolean z, Map map) {
        if (file == null) {
            return false;
        }
        if (o.a()) {
            o oVar = this.c;
            oVar.a("FileManager", "Caching " + file.getAbsolutePath() + "...");
        }
        if (!a(inputStream, file, false, z)) {
            if (o.a()) {
                o oVar2 = this.c;
                oVar2.b("FileManager", "Unable to cache " + file.getAbsolutePath());
            }
            HashMap<String, String> hashMap = CollectionUtils.hashMap(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, file.getAbsolutePath());
            hashMap.putAll(map);
            this.b.g().d(y1.D, hashMap);
            return false;
        } else if (o.a()) {
            o oVar3 = this.c;
            oVar3.a("FileManager", "Caching completed for " + file);
            return true;
        } else {
            return true;
        }
    }

    public int a(String str, com.applovin.impl.sdk.ad.b bVar) {
        List d0 = bVar.d0();
        if (bVar.Y0() || d0.contains(str)) {
            return bVar.K();
        }
        return 1;
    }

    public String a(Context context, String str, String str2, List list, boolean z, int i, String str3, Map map) {
        return a(context, str, str2, list, z, false, i, str3, map);
    }

    public String a(Context context, String str, String str2, List list, boolean z, boolean z2, int i, String str3, Map map) {
        if (!StringUtils.isValidString(str)) {
            if (o.a()) {
                this.c.a("FileManager", "Nothing to cache, skipping...");
            }
            this.b.E().a(y1.t0, "cacheResource");
            return null;
        }
        String a2 = z6.a(Uri.parse(str), str2, this.b);
        File a3 = a(a2, context);
        if (a(a3, str, list, z, i, str3, map)) {
            if (o.a()) {
                o oVar = this.c;
                oVar.a("FileManager", "Caching succeeded for file " + a2);
            }
            return z2 ? Uri.fromFile(a3).toString() : a2;
        }
        return null;
    }

    private long a(Context context) {
        boolean z;
        long a2 = a();
        boolean z2 = a2 != -1;
        long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
        List c = this.b.c(l4.H0);
        long j = 0;
        for (File file : c(context)) {
            if (!z2 || c.contains(file.getName()) || c(file) || seconds - TimeUnit.MILLISECONDS.toSeconds(file.lastModified()) <= a2) {
                z = false;
            } else {
                if (o.a()) {
                    this.c.a("FileManager", "File " + file.getName() + " has expired, removing...");
                }
                z = g(file);
            }
            if (!z) {
                j += file.length();
            }
        }
        return j;
    }

    private void a(long j, Context context) {
        long intValue = ((Integer) this.b.a(l4.D0)).intValue();
        if (intValue == -1) {
            if (o.a()) {
                this.c.a("FileManager", "Cache has no maximum size set; skipping drop...");
            }
        } else if (a(j) > intValue) {
            if (o.a()) {
                this.c.a("FileManager", "Cache has exceeded maximum size; dropping...");
            }
            for (File file : c(context)) {
                g(file);
            }
        } else if (o.a()) {
            this.c.a("FileManager", "Cache is present but under size limit; not dropping...");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.sdk.ad.b bVar, Context context) {
        ArrayList arrayList = new ArrayList(bVar.l());
        CollectionUtils.addObjectIfExists(bVar.w0(), arrayList);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            g(a(((Uri) obj).getLastPathSegment(), context));
        }
    }

    public void a(File file, String str) {
        if (o.a()) {
            o oVar = this.c;
            oVar.a("FileManager", "Removing file " + file.getName() + " for source " + str + ".");
        }
        try {
            if (file.delete()) {
                return;
            }
            HashMap<String, String> hashMap = CollectionUtils.hashMap(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, file.getAbsolutePath());
            hashMap.put("details", b(file));
            this.b.E().a(y1.t0, str, hashMap);
        } catch (Throwable th) {
            if (o.a()) {
                o oVar2 = this.c;
                oVar2.a("FileManager", "Failed to remove file " + file.getName() + " from filesystem after failed operation.", th);
            }
            this.b.E().a("FileManager", str, th);
        }
    }

    private long a() {
        long longValue = ((Long) this.b.a(l4.C0)).longValue();
        if (longValue >= 0) {
            return longValue;
        }
        return -1L;
    }

    private long a(long j) {
        return j / 1048576;
    }

    public boolean a(File file) {
        return (file == null || !file.exists() || file.isDirectory()) ? false : true;
    }
}
