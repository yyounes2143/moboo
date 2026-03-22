package com.tencent.thumbplayer.tcmedia.utils;

import android.content.Context;
import android.os.Process;
import j$.util.DesugarCollections;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, a> f10683a = new HashMap();
    private C0235a b;

    /* renamed from: com.tencent.thumbplayer.tcmedia.utils.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static class C0235a {

        /* renamed from: a  reason: collision with root package name */
        protected File f10684a;
        private final AtomicLong b;
        private final AtomicInteger c;
        private final long d;
        private final int e;
        private final Map<File, Long> f;

        private C0235a(File file, long j, int i) {
            this.f = DesugarCollections.synchronizedMap(new HashMap());
            this.f10684a = file;
            this.d = j;
            this.e = i;
            this.b = new AtomicLong();
            this.c = new AtomicInteger();
            a();
        }

        private long c() {
            File file;
            if (this.f.isEmpty()) {
                return 0L;
            }
            Set<Map.Entry<File, Long>> entrySet = this.f.entrySet();
            synchronized (this.f) {
                try {
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
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (file == null) {
                return 0L;
            }
            long b = b(file);
            if (file.delete()) {
                this.f.remove(file);
            }
            return b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File a(String str) {
            File b = b(str);
            long currentTimeMillis = System.currentTimeMillis();
            Long valueOf = Long.valueOf(currentTimeMillis);
            b.setLastModified(currentTimeMillis);
            this.f.put(b, valueOf);
            return b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long b(File file) {
            if (file == null) {
                return 0L;
            }
            return file.length();
        }

        private void a() {
            o.a().d().execute(new Runnable() { // from class: com.tencent.thumbplayer.tcmedia.utils.a.a.1
                @Override // java.lang.Runnable
                public void run() {
                    File[] listFiles = C0235a.this.f10684a.listFiles();
                    if (listFiles != null) {
                        int i = 0;
                        int i2 = 0;
                        for (File file : listFiles) {
                            i = (int) (i + C0235a.this.b(file));
                            i2++;
                            C0235a.this.f.put(file, Long.valueOf(file.lastModified()));
                        }
                        C0235a.this.b.set(i);
                        C0235a.this.c.set(i2);
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public File b(String str) {
            File file = this.f10684a;
            StringBuilder sb = new StringBuilder();
            sb.append(str.hashCode());
            return new File(file, sb.toString());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean c(String str) {
            File a2 = a(str);
            long b = b(a2);
            if (a2.delete()) {
                this.c.addAndGet(-1);
                this.b.addAndGet(-b);
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(File file) {
            int i = this.c.get();
            while (i + 1 > this.e) {
                this.b.addAndGet(-c());
                i = this.c.addAndGet(-1);
            }
            this.c.addAndGet(1);
            long b = b(file);
            long j = this.b.get();
            while (j + b > this.d) {
                j = this.b.addAndGet(-c());
            }
            this.b.addAndGet(b);
            long currentTimeMillis = System.currentTimeMillis();
            Long valueOf = Long.valueOf(currentTimeMillis);
            file.setLastModified(currentTimeMillis);
            this.f.put(file, valueOf);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            this.f.clear();
            this.b.set(0L);
            this.c.set(0);
            File[] listFiles = this.f10684a.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
        }
    }

    /* loaded from: classes6.dex */
    public static class b {
        private static int a(byte[] bArr, char c) {
            for (int i = 0; i < bArr.length; i++) {
                if (bArr[i] == c) {
                    return i;
                }
            }
            return -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] b(int i, byte[] bArr) {
            byte[] bytes = a(i).getBytes();
            byte[] bArr2 = new byte[bytes.length + bArr.length];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
            return bArr2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean c(byte[] bArr) {
            String[] f = f(bArr);
            if (f != null && f.length == 2) {
                String str = f[0];
                while (str.startsWith("0")) {
                    str = str.substring(1, str.length());
                }
                try {
                    if (System.currentTimeMillis() > Long.valueOf(str).longValue() + (Long.valueOf(f[1]).longValue() * 1000)) {
                        return true;
                    }
                } catch (Exception unused) {
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static byte[] d(byte[] bArr) {
            if (e(bArr)) {
                return a(bArr, a(bArr, ' ') + 1, bArr.length);
            }
            return bArr;
        }

        private static boolean e(byte[] bArr) {
            if (bArr != null && bArr.length > 15 && bArr[13] == 45 && a(bArr, ' ') > 14) {
                return true;
            }
            return false;
        }

        private static String[] f(byte[] bArr) {
            if (e(bArr)) {
                return new String[]{new String(a(bArr, 0, 13)), new String(a(bArr, 14, a(bArr, ' ')))};
            }
            return null;
        }

        private static String a(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append(System.currentTimeMillis());
            String sb2 = sb.toString();
            while (sb2.length() < 13) {
                sb2 = "0".concat(sb2);
            }
            return sb2 + "-" + i + ' ';
        }

        private static byte[] a(byte[] bArr, int i, int i2) {
            int i3 = i2 - i;
            if (i3 >= 0) {
                byte[] bArr2 = new byte[i3];
                System.arraycopy(bArr, i, bArr2, 0, Math.min(bArr.length - i, i3));
                return bArr2;
            }
            throw new IllegalArgumentException(i + " > " + i2);
        }
    }

    private a(File file, long j, int i) {
        if (!file.exists() && !file.mkdirs()) {
            this.b = null;
        } else {
            this.b = new C0235a(file, j, i);
        }
    }

    public static a a(Context context, String str) {
        return a(new File(context.getCacheDir(), str), 50000000L, Integer.MAX_VALUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r5v5 */
    public Object b(String str) {
        ByteArrayInputStream byteArrayInputStream;
        ObjectInputStream objectInputStream;
        ?? a2 = a(str);
        try {
            if (a2 == 0) {
                return null;
            }
            try {
                byteArrayInputStream = new ByteArrayInputStream(a2);
                try {
                    objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    try {
                        Object readObject = objectInputStream.readObject();
                        try {
                            byteArrayInputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                        try {
                            objectInputStream.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                        return readObject;
                    } catch (Exception e3) {
                        e = e3;
                        e.printStackTrace();
                        if (byteArrayInputStream != null) {
                            try {
                                byteArrayInputStream.close();
                            } catch (IOException e4) {
                                e4.printStackTrace();
                            }
                        }
                        if (objectInputStream != null) {
                            try {
                                objectInputStream.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                        return null;
                    }
                } catch (Exception e6) {
                    e = e6;
                    objectInputStream = null;
                } catch (Throwable th) {
                    th = th;
                    a2 = 0;
                    if (byteArrayInputStream != null) {
                        try {
                            byteArrayInputStream.close();
                        } catch (IOException e7) {
                            e7.printStackTrace();
                        }
                    }
                    if (a2 != 0) {
                        try {
                            a2.close();
                        } catch (IOException e8) {
                            e8.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Exception e9) {
                e = e9;
                objectInputStream = null;
                byteArrayInputStream = null;
            } catch (Throwable th2) {
                byteArrayInputStream = null;
                th = th2;
                a2 = 0;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public boolean c(String str) {
        C0235a c0235a = this.b;
        if (c0235a != null) {
            return c0235a.c(str);
        }
        return false;
    }

    public static a a(File file, long j, int i) {
        a aVar;
        try {
            Map<String, a> map = f10683a;
            aVar = map.get(file.getAbsoluteFile() + b());
        } catch (Exception unused) {
            aVar = null;
        }
        if (aVar == null) {
            try {
                a aVar2 = new a(file, j, i);
                try {
                    Map<String, a> map2 = f10683a;
                    map2.put(file.getAbsolutePath() + b(), aVar2);
                } catch (Throwable unused2) {
                }
                return aVar2;
            } catch (Throwable unused3) {
                return aVar;
            }
        }
        return aVar;
    }

    private static String b() {
        return "_" + Process.myPid();
    }

    public void a() {
        C0235a c0235a = this.b;
        if (c0235a == null) {
            return;
        }
        c0235a.b();
    }

    public void a(String str, Serializable serializable) {
        a(str, serializable, -1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x002d, code lost:
        if (r0 == null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002f, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0038, code lost:
        if (r0 == null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003b, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r4, java.io.Serializable r5, int r6) {
        /*
            r3 = this;
            r0 = 0
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L28
            r1.<init>()     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L28
            java.io.ObjectOutputStream r2 = new java.io.ObjectOutputStream     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L28
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L26 java.lang.Exception -> L28
            r2.writeObject(r5)     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L1c
            byte[] r5 = r1.toByteArray()     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L1c
            r0 = -1
            if (r6 == r0) goto L1f
            r3.a(r4, r5, r6)     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L1c
            goto L22
        L19:
            r4 = move-exception
            r0 = r2
            goto L2a
        L1c:
            r4 = move-exception
            r0 = r2
            goto L35
        L1f:
            r3.a(r4, r5)     // Catch: java.lang.Throwable -> L19 java.lang.Exception -> L1c
        L22:
            r2.close()     // Catch: java.lang.Throwable -> L3b
            return
        L26:
            r4 = move-exception
            goto L2a
        L28:
            r4 = move-exception
            goto L35
        L2a:
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L33
            if (r0 == 0) goto L3b
        L2f:
            r0.close()     // Catch: java.lang.Throwable -> L3b
            goto L3b
        L33:
            r4 = move-exception
            goto L3c
        L35:
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L33
            if (r0 == 0) goto L3b
            goto L2f
        L3b:
            return
        L3c:
            if (r0 == 0) goto L41
            r0.close()     // Catch: java.lang.Throwable -> L41
        L41:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.utils.a.a(java.lang.String, java.io.Serializable, int):void");
    }

    public void a(String str, byte[] bArr) {
        FileOutputStream fileOutputStream;
        C0235a c0235a = this.b;
        if (c0235a == null) {
            return;
        }
        File b2 = c0235a.b(str);
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(b2);
            } catch (Exception e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            fileOutputStream.write(bArr);
            try {
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (IOException e2) {
                e = e2;
                e.printStackTrace();
                this.b.a(b2);
            }
        } catch (Exception e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                } catch (IOException e4) {
                    e = e4;
                    e.printStackTrace();
                    this.b.a(b2);
                }
            }
            this.b.a(b2);
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            this.b.a(b2);
            throw th;
        }
        this.b.a(b2);
    }

    public void a(String str, byte[] bArr, int i) {
        a(str, b.b(i, bArr));
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0066 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] a(java.lang.String r6) {
        /*
            r5 = this;
            com.tencent.thumbplayer.tcmedia.utils.a$a r0 = r5.b
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            java.io.File r0 = com.tencent.thumbplayer.tcmedia.utils.a.C0235a.b(r0, r6)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            boolean r2 = r0.exists()     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            if (r2 != 0) goto L11
            return r1
        L11:
            java.io.RandomAccessFile r2 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            java.lang.String r3 = "r"
            r2.<init>(r0, r3)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            long r3 = r2.length()     // Catch: java.lang.Throwable -> L38 java.lang.Exception -> L3b
            int r0 = (int) r3     // Catch: java.lang.Throwable -> L38 java.lang.Exception -> L3b
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L38 java.lang.Exception -> L3b
            int r3 = r2.read(r0)     // Catch: java.lang.Throwable -> L38 java.lang.Exception -> L3b
            if (r3 <= 0) goto L49
            boolean r3 = com.tencent.thumbplayer.tcmedia.utils.a.b.a(r0)     // Catch: java.lang.Throwable -> L38 java.lang.Exception -> L3b
            if (r3 != 0) goto L3d
            byte[] r6 = com.tencent.thumbplayer.tcmedia.utils.a.b.b(r0)     // Catch: java.lang.Throwable -> L38 java.lang.Exception -> L3b
            r2.close()     // Catch: java.io.IOException -> L33
            return r6
        L33:
            r0 = move-exception
            r0.printStackTrace()
            return r6
        L38:
            r6 = move-exception
            r1 = r2
            goto L64
        L3b:
            r6 = move-exception
            goto L56
        L3d:
            r2.close()     // Catch: java.io.IOException -> L41
            goto L45
        L41:
            r0 = move-exception
            r0.printStackTrace()
        L45:
            r5.c(r6)
            return r1
        L49:
            r2.close()     // Catch: java.io.IOException -> L4d
            goto L51
        L4d:
            r6 = move-exception
            r6.printStackTrace()
        L51:
            return r1
        L52:
            r6 = move-exception
            goto L64
        L54:
            r6 = move-exception
            r2 = r1
        L56:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L38
            if (r2 == 0) goto L63
            r2.close()     // Catch: java.io.IOException -> L5f
            goto L63
        L5f:
            r6 = move-exception
            r6.printStackTrace()
        L63:
            return r1
        L64:
            if (r1 == 0) goto L6e
            r1.close()     // Catch: java.io.IOException -> L6a
            goto L6e
        L6a:
            r0 = move-exception
            r0.printStackTrace()
        L6e:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.utils.a.a(java.lang.String):byte[]");
    }
}
