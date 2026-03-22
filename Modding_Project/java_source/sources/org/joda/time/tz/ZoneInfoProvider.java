package org.joda.time.tz;

import j$.util.concurrent.ConcurrentHashMap;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import org.joda.time.DateTimeZone;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class ZoneInfoProvider implements Provider {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<String> f14058Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<String, Object> f14059Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ClassLoader f14060Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f14061Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final File f14062Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ZoneInfoProvider() throws IOException {
        this(DateTimeZone.DEFAULT_TZ_DATA_PATH);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(DataInputStream dataInputStream, Map<String, Object> map) throws IOException {
        int readUnsignedShort = dataInputStream.readUnsignedShort();
        String[] strArr = new String[readUnsignedShort];
        for (int i = 0; i < readUnsignedShort; i++) {
            strArr[i] = dataInputStream.readUTF().intern();
        }
        int readUnsignedShort2 = dataInputStream.readUnsignedShort();
        for (int i2 = 0; i2 < readUnsignedShort2; i2++) {
            try {
                map.put(strArr[dataInputStream.readUnsignedShort()], strArr[dataInputStream.readUnsignedShort()]);
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new IOException("Corrupt zone info map");
            }
        }
    }

    public static Map<String, Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream) throws IOException {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww(dataInputStream, concurrentHashMap);
            concurrentHashMap.put("UTC", new SoftReference(DateTimeZone.UTC));
            return concurrentHashMap;
        } finally {
            try {
                dataInputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(Exception exc) {
        exc.printStackTrace();
    }

    public final InputStream Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) throws IOException {
        String str2;
        if (this.f14062Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            return new FileInputStream(new File(this.f14062Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str));
        }
        final String concat = this.f14061Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.concat(str);
        InputStream inputStream = (InputStream) AccessController.doPrivileged(new PrivilegedAction<InputStream>() { // from class: org.joda.time.tz.ZoneInfoProvider.1
            @Override // java.security.PrivilegedAction
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public InputStream run() {
                if (ZoneInfoProvider.this.f14060Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                    return ZoneInfoProvider.this.f14060Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getResourceAsStream(concat);
                }
                return ClassLoader.getSystemResourceAsStream(concat);
            }
        });
        if (inputStream == null) {
            StringBuilder sb = new StringBuilder(40);
            sb.append("Resource not found: \"");
            sb.append(concat);
            sb.append("\" ClassLoader: ");
            ClassLoader classLoader = this.f14060Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (classLoader != null) {
                str2 = classLoader.toString();
            } else {
                str2 = "system";
            }
            sb.append(str2);
            throw new IOException(sb.toString());
        }
        return inputStream;
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x001a: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:9:0x001a */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0032 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.joda.time.DateTimeZone Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(java.lang.String r6) {
        /*
            r5 = this;
            r0 = 0
            java.io.InputStream r1 = r5.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(r6)     // Catch: java.lang.Throwable -> L1e java.io.IOException -> L20
            org.joda.time.DateTimeZone r2 = org.joda.time.tz.DateTimeZoneBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1, r6)     // Catch: java.lang.Throwable -> L19 java.io.IOException -> L1c
            java.util.Map<java.lang.String, java.lang.Object> r3 = r5.f14059Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L19 java.io.IOException -> L1c
            java.lang.ref.SoftReference r4 = new java.lang.ref.SoftReference     // Catch: java.lang.Throwable -> L19 java.io.IOException -> L1c
            r4.<init>(r2)     // Catch: java.lang.Throwable -> L19 java.io.IOException -> L1c
            r3.put(r6, r4)     // Catch: java.lang.Throwable -> L19 java.io.IOException -> L1c
            if (r1 == 0) goto L18
            r1.close()     // Catch: java.io.IOException -> L18
        L18:
            return r2
        L19:
            r6 = move-exception
            r0 = r1
            goto L30
        L1c:
            r2 = move-exception
            goto L22
        L1e:
            r6 = move-exception
            goto L30
        L20:
            r2 = move-exception
            r1 = r0
        L22:
            r5.Wwwwwwwwwwwwwwwwwwwwwwwwwww(r2)     // Catch: java.lang.Throwable -> L19
            java.util.Map<java.lang.String, java.lang.Object> r2 = r5.f14059Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L19
            r2.remove(r6)     // Catch: java.lang.Throwable -> L19
            if (r1 == 0) goto L2f
            r1.close()     // Catch: java.io.IOException -> L2f
        L2f:
            return r0
        L30:
            if (r0 == 0) goto L35
            r0.close()     // Catch: java.io.IOException -> L35
        L35:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.joda.time.tz.ZoneInfoProvider.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(java.lang.String):org.joda.time.DateTimeZone");
    }

    @Override // org.joda.time.tz.Provider
    public Set<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f14058Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.tz.Provider
    public DateTimeZone Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        Object obj;
        if (str == null || (obj = this.f14059Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str)) == null) {
            return null;
        }
        if (obj instanceof SoftReference) {
            DateTimeZone dateTimeZone = (DateTimeZone) ((SoftReference) obj).get();
            if (dateTimeZone != null) {
                return dateTimeZone;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        } else if (str.equals(obj)) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        } else {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) obj);
        }
    }

    public ZoneInfoProvider(File file) throws IOException {
        if (file != null) {
            if (file.exists()) {
                if (file.isDirectory()) {
                    this.f14062Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = file;
                    this.f14061Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
                    this.f14060Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
                    Map<String, Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("ZoneInfoMap"));
                    this.f14059Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    this.f14058Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Collections.unmodifiableSortedSet(new TreeSet(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.keySet()));
                    return;
                }
                throw new IOException("File doesn't refer to a directory: " + file);
            }
            throw new IOException("File directory doesn't exist: " + file);
        }
        throw new IllegalArgumentException("No file directory provided");
    }

    public ZoneInfoProvider(String str) throws IOException {
        this(str, null, false);
    }

    public ZoneInfoProvider(String str, ClassLoader classLoader, boolean z) throws IOException {
        if (str != null) {
            if (!str.endsWith("/")) {
                str = str + '/';
            }
            this.f14062Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f14061Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            if (classLoader == null && !z) {
                classLoader = getClass().getClassLoader();
            }
            this.f14060Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = classLoader;
            Map<String, Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("ZoneInfoMap"));
            this.f14059Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            this.f14058Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Collections.unmodifiableSortedSet(new TreeSet(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.keySet()));
            return;
        }
        throw new IllegalArgumentException("No resource path provided");
    }
}
