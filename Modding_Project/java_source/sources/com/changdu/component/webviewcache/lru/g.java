package com.changdu.component.webviewcache.lru;

import j$.util.Objects;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class g implements Closeable, AutoCloseable {
    public static final Pattern o = Pattern.compile("[a-z0-9_-]{1,120}");
    public static final b p = new b();

    /* renamed from: a  reason: collision with root package name */
    public final File f5421a;
    public final File b;
    public final File c;
    public final File d;
    public final int e;
    public final long f;
    public BufferedWriter i;
    public int k;
    public long h = 0;
    public final LinkedHashMap j = new LinkedHashMap(0, 0.75f, true);
    public long l = 0;
    public final ThreadPoolExecutor m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    public final a n = new a(this);
    public final int g = 2;

    public g(File file, int i, long j) {
        this.f5421a = file;
        this.e = i;
        this.b = new File(file, "journal");
        this.c = new File(file, "journal.tmp");
        this.d = new File(file, "journal.bkp");
        this.f = j;
    }

    public static g a(File file, int i, long j) {
        if (j > 0) {
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else if (!file2.renameTo(file3)) {
                    throw new IOException();
                }
            }
            g gVar = new g(file, i, j);
            if (gVar.b.exists()) {
                try {
                    gVar.d();
                    gVar.c();
                    return gVar;
                } catch (IOException e) {
                    PrintStream printStream = System.out;
                    Objects.toString(file);
                    e.getMessage();
                    printStream.getClass();
                    gVar.close();
                    j.a(gVar.f5421a);
                }
            }
            file.mkdirs();
            g gVar2 = new g(file, i, j);
            gVar2.e();
            return gVar2;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public final boolean b() {
        int i = this.k;
        return i >= 2000 && i >= this.j.size();
    }

    public final void c(String str) {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            int i = indexOf + 1;
            int indexOf2 = str.indexOf(32, i);
            if (indexOf2 == -1) {
                substring = str.substring(i);
                if (indexOf == 6 && str.startsWith("REMOVE")) {
                    this.j.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i, indexOf2);
            }
            e eVar = (e) this.j.get(substring);
            if (eVar == null) {
                eVar = new e(this, substring);
                this.j.put(substring, eVar);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                eVar.c = true;
                eVar.d = null;
                if (split.length == eVar.e.g) {
                    for (int i2 = 0; i2 < split.length; i2++) {
                        try {
                            eVar.b[i2] = Long.parseLong(split[i2]);
                        } catch (NumberFormatException unused) {
                            throw new IOException("unexpected journal line: " + Arrays.toString(split));
                        }
                    }
                    return;
                }
                throw new IOException("unexpected journal line: " + Arrays.toString(split));
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                eVar.d = new d(this, eVar);
                return;
            } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith("READ")) {
                throw new IOException("unexpected journal line: ".concat(str));
            } else {
                return;
            }
        }
        throw new IOException("unexpected journal line: ".concat(str));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.i == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.j.values());
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                d dVar = ((e) obj).d;
                if (dVar != null) {
                    dVar.d.a(dVar, false);
                }
            }
            while (this.h > this.f) {
                d((String) ((Map.Entry) this.j.entrySet().iterator().next()).getKey());
            }
            this.i.close();
            this.i = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void d() {
        i iVar = new i(new FileInputStream(this.b), j.f5424a);
        try {
            String a2 = iVar.a();
            String a3 = iVar.a();
            String a4 = iVar.a();
            String a5 = iVar.a();
            String a6 = iVar.a();
            if (!"libcore.io.DiskLruCache".equals(a2) || !"1".equals(a3) || !Integer.toString(this.e).equals(a4) || !Integer.toString(this.g).equals(a5) || !"".equals(a6)) {
                throw new IOException("unexpected journal header: [" + a2 + ", " + a3 + ", " + a5 + ", " + a6 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    c(iVar.a());
                    i++;
                } catch (EOFException unused) {
                    this.k = i - this.j.size();
                    if (iVar.e == -1) {
                        e();
                    } else {
                        this.i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.b, true), j.f5424a));
                    }
                    try {
                        iVar.close();
                        return;
                    } catch (RuntimeException e) {
                        throw e;
                    } catch (Exception unused2) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            try {
                iVar.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused3) {
            }
            throw th;
        }
    }

    public final synchronized void e() {
        long[] jArr;
        try {
            BufferedWriter bufferedWriter = this.i;
            if (bufferedWriter != null) {
                bufferedWriter.close();
            }
            BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c), j.f5424a));
            bufferedWriter2.write("libcore.io.DiskLruCache");
            bufferedWriter2.write("\n");
            bufferedWriter2.write("1");
            bufferedWriter2.write("\n");
            bufferedWriter2.write(Integer.toString(this.e));
            bufferedWriter2.write("\n");
            bufferedWriter2.write(Integer.toString(this.g));
            bufferedWriter2.write("\n");
            bufferedWriter2.write("\n");
            for (e eVar : this.j.values()) {
                if (eVar.d != null) {
                    bufferedWriter2.write("DIRTY " + eVar.f5419a + '\n');
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append("CLEAN ");
                    sb.append(eVar.f5419a);
                    StringBuilder sb2 = new StringBuilder();
                    for (long j : eVar.b) {
                        sb2.append(' ');
                        sb2.append(j);
                    }
                    sb.append(sb2.toString());
                    sb.append('\n');
                    bufferedWriter2.write(sb.toString());
                }
            }
            bufferedWriter2.close();
            if (this.b.exists()) {
                File file = this.b;
                File file2 = this.d;
                if (file2.exists() && !file2.delete()) {
                    throw new IOException();
                }
                if (!file.renameTo(file2)) {
                    throw new IOException();
                }
            }
            if (this.c.renameTo(this.b)) {
                this.d.delete();
                this.i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.b, true), j.f5424a));
            } else {
                throw new IOException();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized f b(String str) {
        InputStream inputStream;
        if (this.i != null) {
            if (o.matcher(str).matches()) {
                e eVar = (e) this.j.get(str);
                if (eVar == null) {
                    return null;
                }
                if (eVar.c) {
                    InputStream[] inputStreamArr = new InputStream[this.g];
                    for (int i = 0; i < this.g; i++) {
                        try {
                            inputStreamArr[i] = new FileInputStream(eVar.a(i));
                        } catch (FileNotFoundException unused) {
                            for (int i2 = 0; i2 < this.g && (inputStream = inputStreamArr[i2]) != null; i2++) {
                                Charset charset = j.f5424a;
                                try {
                                    inputStream.close();
                                } catch (RuntimeException e) {
                                    throw e;
                                } catch (Exception unused2) {
                                }
                            }
                            return null;
                        }
                    }
                    this.k++;
                    this.i.append((CharSequence) ("READ " + str + '\n'));
                    if (b()) {
                        this.m.submit(this.n);
                    }
                    return new f(inputStreamArr);
                }
                return null;
            }
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
        }
        throw new IllegalStateException("cache is closed");
    }

    public final d a(String str) {
        synchronized (this) {
            try {
                if (this.i != null) {
                    if (o.matcher(str).matches()) {
                        e eVar = (e) this.j.get(str);
                        if (eVar == null) {
                            eVar = new e(this, str);
                            this.j.put(str, eVar);
                        } else if (eVar.d != null) {
                            return null;
                        }
                        d dVar = new d(this, eVar);
                        eVar.d = dVar;
                        BufferedWriter bufferedWriter = this.i;
                        bufferedWriter.write("DIRTY " + str + '\n');
                        this.i.flush();
                        return dVar;
                    }
                    throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
                }
                throw new IllegalStateException("cache is closed");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void d(String str) {
        try {
            if (this.i != null) {
                if (o.matcher(str).matches()) {
                    e eVar = (e) this.j.get(str);
                    if (eVar != null && eVar.d == null) {
                        for (int i = 0; i < this.g; i++) {
                            File a2 = eVar.a(i);
                            if (a2.exists() && !a2.delete()) {
                                throw new IOException("failed to delete " + a2);
                            }
                            long j = this.h;
                            long[] jArr = eVar.b;
                            this.h = j - jArr[i];
                            jArr[i] = 0;
                        }
                        this.k++;
                        this.i.append((CharSequence) ("REMOVE " + str + '\n'));
                        this.j.remove(str);
                        if (b()) {
                            this.m.submit(this.n);
                        }
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
            }
            throw new IllegalStateException("cache is closed");
        } finally {
        }
    }

    public final void c() {
        File file = this.c;
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
        Iterator it = this.j.values().iterator();
        while (it.hasNext()) {
            e eVar = (e) it.next();
            int i = 0;
            if (eVar.d == null) {
                while (i < this.g) {
                    this.h += eVar.b[i];
                    i++;
                }
            } else {
                eVar.d = null;
                while (i < this.g) {
                    File a2 = eVar.a(i);
                    if (a2.exists() && !a2.delete()) {
                        throw new IOException();
                    }
                    File b = eVar.b(i);
                    if (b.exists() && !b.delete()) {
                        throw new IOException();
                    }
                    i++;
                }
                it.remove();
            }
        }
    }

    public final synchronized void a(d dVar, boolean z) {
        long[] jArr;
        e eVar = dVar.f5418a;
        if (eVar.d == dVar) {
            if (z && !eVar.c) {
                for (int i = 0; i < this.g; i++) {
                    if (dVar.b[i]) {
                        if (!eVar.b(i).exists()) {
                            dVar.d.a(dVar, false);
                            return;
                        }
                    } else {
                        dVar.d.a(dVar, false);
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                    }
                }
            }
            for (int i2 = 0; i2 < this.g; i2++) {
                File b = eVar.b(i2);
                if (z) {
                    if (b.exists()) {
                        File a2 = eVar.a(i2);
                        b.renameTo(a2);
                        long j = eVar.b[i2];
                        long length = a2.length();
                        eVar.b[i2] = length;
                        this.h = (this.h - j) + length;
                    }
                } else if (b.exists() && !b.delete()) {
                    throw new IOException();
                }
            }
            this.k++;
            eVar.d = null;
            if (eVar.c | z) {
                eVar.c = true;
                BufferedWriter bufferedWriter = this.i;
                StringBuilder sb = new StringBuilder("CLEAN ");
                sb.append(eVar.f5419a);
                StringBuilder sb2 = new StringBuilder();
                for (long j2 : eVar.b) {
                    sb2.append(' ');
                    sb2.append(j2);
                }
                sb.append(sb2.toString());
                sb.append('\n');
                bufferedWriter.write(sb.toString());
                if (z) {
                    this.l++;
                }
            } else {
                this.j.remove(eVar.f5419a);
                this.i.write("REMOVE " + eVar.f5419a + '\n');
            }
            this.i.flush();
            if (this.h > this.f || b()) {
                this.m.submit(this.n);
            }
            return;
        }
        throw new IllegalStateException();
    }

    public final synchronized boolean a() {
        return this.i == null;
    }
}
