package com.bumptech.glide.disklrucache;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.StrictMode;
import j$.util.Objects;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class DiskLruCache implements Closeable, AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4083Wwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Writer f4085Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4087Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f4088Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4089Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final File f4090Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final File f4091Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final File f4092Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final File f4093Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f4086Wwwwwwwwwwwwwwwwww = 0;

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LinkedHashMap<String, Entry> f4084Wwwwwwwwwwwwwwww = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public long f4082Wwwwwwwwwwwwww = 0;

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public final ThreadPoolExecutor f4081Wwwwwwwwwwwww = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new DiskLruCacheThreadFactory());

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public final Callable<Void> f4080Wwwwwwwwwwww = new Callable<Void>() { // from class: com.bumptech.glide.disklrucache.DiskLruCache.1
        @Override // java.util.concurrent.Callable
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Void call() throws Exception {
            synchronized (DiskLruCache.this) {
                try {
                    if (DiskLruCache.this.f4085Wwwwwwwwwwwwwwwww != null) {
                        DiskLruCache.this.Illllllllllllllllllllllllllll();
                        if (DiskLruCache.this.Kkkkkkkkk()) {
                            DiskLruCache.this.Kkkk();
                            DiskLruCache.this.f4083Wwwwwwwwwwwwwww = 0;
                        }
                        return null;
                    }
                    return null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class DiskLruCacheThreadFactory implements ThreadFactory {
        public DiskLruCacheThreadFactory() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public final class Editor {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f4096Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean[] f4097Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Entry f4098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public File Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) throws IOException {
            File Wwwwwwwwwwwwwwwwwwwwwwww2;
            synchronized (DiskLruCache.this) {
                try {
                    if (this.f4098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4101Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == this) {
                        if (!this.f4098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f4102Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                            this.f4097Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i] = true;
                        }
                        Wwwwwwwwwwwwwwwwwwwwwwww2 = this.f4098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(i);
                        DiskLruCache.this.f4093Wwwwwwwwwwwwwwwwwwwwwwwww.mkdirs();
                    } else {
                        throw new IllegalStateException();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return Wwwwwwwwwwwwwwwwwwwwwwww2;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            DiskLruCache.this.Kkkkkkkkkkkkkkkk(this, true);
            this.f4096Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (!this.f4096Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                try {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                } catch (IOException unused) {
                }
            }
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            DiskLruCache.this.Kkkkkkkkkkkkkkkk(this, false);
        }

        public Editor(Entry entry) {
            this.f4098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = entry;
            this.f4097Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = entry.f4102Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww ? null : new boolean[DiskLruCache.this.f4087Wwwwwwwwwwwwwwwwwww];
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public final class Entry {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f4100Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Editor f4101Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f4102Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public File[] f4103Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public File[] f4104Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long[] f4105Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f4106Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public final void Wwwwwwwwwwwwwwwwwwwww(String[] strArr) throws IOException {
            if (strArr.length == DiskLruCache.this.f4087Wwwwwwwwwwwwwwwwwww) {
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        this.f4105Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i] = Long.parseLong(strArr[i]);
                    } catch (NumberFormatException unused) {
                        throw Wwwwwwwwwwwwwwwwwwwwww(strArr);
                    }
                }
                return;
            }
            throw Wwwwwwwwwwwwwwwwwwwwww(strArr);
        }

        public final IOException Wwwwwwwwwwwwwwwwwwwwww(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public String Wwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.f4105Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        public File Wwwwwwwwwwwwwwwwwwwwwwww(int i) {
            return this.f4103Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i];
        }

        public File Wwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            return this.f4104Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i];
        }

        public Entry(String str) {
            this.f4106Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f4105Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new long[DiskLruCache.this.f4087Wwwwwwwwwwwwwwwwwww];
            this.f4104Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new File[DiskLruCache.this.f4087Wwwwwwwwwwwwwwwwwww];
            this.f4103Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new File[DiskLruCache.this.f4087Wwwwwwwwwwwwwwwwwww];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i = 0; i < DiskLruCache.this.f4087Wwwwwwwwwwwwwwwwwww; i++) {
                sb.append(i);
                this.f4104Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i] = new File(DiskLruCache.this.f4093Wwwwwwwwwwwwwwwwwwwwwwwww, sb.toString());
                sb.append(".tmp");
                this.f4103Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i] = new File(DiskLruCache.this.f4093Wwwwwwwwwwwwwwwwwwwwwwwww, sb.toString());
                sb.setLength(length);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public final class Value {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final File[] f4108Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long[] f4109Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f4110Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f4111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            return this.f4108Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i];
        }

        public Value(String str, long j, File[] fileArr, long[] jArr) {
            this.f4111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f4110Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
            this.f4108Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fileArr;
            this.f4109Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jArr;
        }
    }

    public DiskLruCache(File file, int i, int i2, long j) {
        this.f4093Wwwwwwwwwwwwwwwwwwwwwwwww = file;
        this.f4089Wwwwwwwwwwwwwwwwwwwww = i;
        this.f4092Wwwwwwwwwwwwwwwwwwwwwwww = new File(file, "journal");
        this.f4091Wwwwwwwwwwwwwwwwwwwwwww = new File(file, "journal.tmp");
        this.f4090Wwwwwwwwwwwwwwwwwwwwww = new File(file, "journal.bkp");
        this.f4087Wwwwwwwwwwwwwwwwwww = i2;
        this.f4088Wwwwwwwwwwwwwwwwwwww = j;
    }

    public static void Kk(File file, File file2, boolean z) throws IOException {
        if (z) {
            Kkkkkkkkkkkkkk(file2);
        }
        if (file.renameTo(file2)) {
            return;
        }
        throw new IOException();
    }

    public static DiskLruCache Kkkkkkkk(File file, int i, int i2, long j) throws IOException {
        if (j > 0) {
            if (i2 > 0) {
                File file2 = new File(file, "journal.bkp");
                if (file2.exists()) {
                    File file3 = new File(file, "journal");
                    if (file3.exists()) {
                        file2.delete();
                    } else {
                        Kk(file2, file3, false);
                    }
                }
                DiskLruCache diskLruCache = new DiskLruCache(file, i, i2, j);
                if (diskLruCache.f4092Wwwwwwwwwwwwwwwwwwwwwwww.exists()) {
                    try {
                        diskLruCache.Kkkkkk();
                        diskLruCache.Kkkkkkk();
                        return diskLruCache;
                    } catch (IOException e) {
                        PrintStream printStream = System.out;
                        Objects.toString(file);
                        e.getMessage();
                        printStream.getClass();
                        diskLruCache.Kkkkkkkkkkkkkkk();
                    }
                }
                file.mkdirs();
                DiskLruCache diskLruCache2 = new DiskLruCache(file, i, i2, j);
                diskLruCache2.Kkkk();
                return diskLruCache2;
            }
            throw new IllegalArgumentException("valueCount <= 0");
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    @TargetApi(26)
    public static void Kkkkkkkkkkk(Writer writer) throws IOException {
        StrictMode.ThreadPolicy.Builder permitUnbufferedIo;
        if (Build.VERSION.SDK_INT < 26) {
            writer.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        permitUnbufferedIo = new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo();
        StrictMode.setThreadPolicy(permitUnbufferedIo.build());
        try {
            writer.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static void Kkkkkkkkkkkkkk(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    @TargetApi(26)
    public static void Kkkkkkkkkkkkkkkkk(Writer writer) throws IOException {
        StrictMode.ThreadPolicy.Builder permitUnbufferedIo;
        if (Build.VERSION.SDK_INT < 26) {
            writer.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        permitUnbufferedIo = new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo();
        StrictMode.setThreadPolicy(permitUnbufferedIo.build());
        try {
            writer.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public final void Illllllllllllllllllllllllllll() throws IOException {
        while (this.f4086Wwwwwwwwwwwwwwwwww > this.f4088Wwwwwwwwwwwwwwwwwwww) {
            Kkk(this.f4084Wwwwwwwwwwwwwwww.entrySet().iterator().next().getKey());
        }
    }

    public synchronized boolean Kkk(String str) throws IOException {
        try {
            Kkkkkkkkkkkkkkkkkk();
            Entry entry = this.f4084Wwwwwwwwwwwwwwww.get(str);
            if (entry != null && entry.f4101Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                for (int i = 0; i < this.f4087Wwwwwwwwwwwwwwwwwww; i++) {
                    File Wwwwwwwwwwwwwwwwwwwwwwwww2 = entry.Wwwwwwwwwwwwwwwwwwwwwwwww(i);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwww2.exists() && !Wwwwwwwwwwwwwwwwwwwwwwwww2.delete()) {
                        throw new IOException("failed to delete " + Wwwwwwwwwwwwwwwwwwwwwwwww2);
                    }
                    this.f4086Wwwwwwwwwwwwwwwwww -= entry.f4105Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i];
                    entry.f4105Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i] = 0;
                }
                this.f4083Wwwwwwwwwwwwwww++;
                this.f4085Wwwwwwwwwwwwwwwww.append((CharSequence) "REMOVE");
                this.f4085Wwwwwwwwwwwwwwwww.append(' ');
                this.f4085Wwwwwwwwwwwwwwwww.append((CharSequence) str);
                this.f4085Wwwwwwwwwwwwwwwww.append('\n');
                this.f4084Wwwwwwwwwwwwwwww.remove(str);
                if (Kkkkkkkkk()) {
                    this.f4081Wwwwwwwwwwwww.submit(this.f4080Wwwwwwwwwwww);
                }
                return true;
            }
            return false;
        } finally {
        }
    }

    public final synchronized void Kkkk() throws IOException {
        try {
            Writer writer = this.f4085Wwwwwwwwwwwwwwwww;
            if (writer != null) {
                Kkkkkkkkkkkkkkkkk(writer);
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f4091Wwwwwwwwwwwwwwwwwwwwwww), Util.f4119Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f4089Wwwwwwwwwwwwwwwwwwwww));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f4087Wwwwwwwwwwwwwwwwwww));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (Entry entry : this.f4084Wwwwwwwwwwwwwwww.values()) {
                if (entry.f4101Wwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                    bufferedWriter.write("DIRTY " + entry.f4106Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + entry.f4106Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + entry.Wwwwwwwwwwwwwwwwwwwwwww() + '\n');
                }
            }
            Kkkkkkkkkkkkkkkkk(bufferedWriter);
            if (this.f4092Wwwwwwwwwwwwwwwwwwwwwwww.exists()) {
                Kk(this.f4092Wwwwwwwwwwwwwwwwwwwwwwww, this.f4090Wwwwwwwwwwwwwwwwwwwwww, true);
            }
            Kk(this.f4091Wwwwwwwwwwwwwwwwwwwwwww, this.f4092Wwwwwwwwwwwwwwwwwwwwwwww, false);
            this.f4090Wwwwwwwwwwwwwwwwwwwwww.delete();
            this.f4085Wwwwwwwwwwwwwwwww = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f4092Wwwwwwwwwwwwwwwwwwwwwwww, true), Util.f4119Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void Kkkkk(String str) throws IOException {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            int i = indexOf + 1;
            int indexOf2 = str.indexOf(32, i);
            if (indexOf2 == -1) {
                substring = str.substring(i);
                if (indexOf == 6 && str.startsWith("REMOVE")) {
                    this.f4084Wwwwwwwwwwwwwwww.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i, indexOf2);
            }
            Entry entry = this.f4084Wwwwwwwwwwwwwwww.get(substring);
            if (entry == null) {
                entry = new Entry(substring);
                this.f4084Wwwwwwwwwwwwwwww.put(substring, entry);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                entry.f4102Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                entry.f4101Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
                entry.Wwwwwwwwwwwwwwwwwwwww(split);
                return;
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                entry.f4101Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Editor(entry);
                return;
            } else if (indexOf2 == -1 && indexOf == 4 && str.startsWith("READ")) {
                return;
            } else {
                throw new IOException("unexpected journal line: " + str);
            }
        }
        throw new IOException("unexpected journal line: " + str);
    }

    public final void Kkkkkk() throws IOException {
        StrictLineReader strictLineReader = new StrictLineReader(new FileInputStream(this.f4092Wwwwwwwwwwwwwwwwwwwwwwww), Util.f4119Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        try {
            String Kkkkkkkkkkkkkkkkkkkkkkk2 = strictLineReader.Kkkkkkkkkkkkkkkkkkkkkkk();
            String Kkkkkkkkkkkkkkkkkkkkkkk3 = strictLineReader.Kkkkkkkkkkkkkkkkkkkkkkk();
            String Kkkkkkkkkkkkkkkkkkkkkkk4 = strictLineReader.Kkkkkkkkkkkkkkkkkkkkkkk();
            String Kkkkkkkkkkkkkkkkkkkkkkk5 = strictLineReader.Kkkkkkkkkkkkkkkkkkkkkkk();
            String Kkkkkkkkkkkkkkkkkkkkkkk6 = strictLineReader.Kkkkkkkkkkkkkkkkkkkkkkk();
            if ("libcore.io.DiskLruCache".equals(Kkkkkkkkkkkkkkkkkkkkkkk2) && "1".equals(Kkkkkkkkkkkkkkkkkkkkkkk3) && Integer.toString(this.f4089Wwwwwwwwwwwwwwwwwwwww).equals(Kkkkkkkkkkkkkkkkkkkkkkk4) && Integer.toString(this.f4087Wwwwwwwwwwwwwwwwwww).equals(Kkkkkkkkkkkkkkkkkkkkkkk5) && "".equals(Kkkkkkkkkkkkkkkkkkkkkkk6)) {
                int i = 0;
                while (true) {
                    try {
                        Kkkkk(strictLineReader.Kkkkkkkkkkkkkkkkkkkkkkk());
                        i++;
                    } catch (EOFException unused) {
                        this.f4083Wwwwwwwwwwwwwww = i - this.f4084Wwwwwwwwwwwwwwww.size();
                        if (strictLineReader.Wwwwwwwwwwwwww()) {
                            Kkkk();
                        } else {
                            this.f4085Wwwwwwwwwwwwwwwww = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f4092Wwwwwwwwwwwwwwwwwwwwwwww, true), Util.f4119Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
                        }
                        Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(strictLineReader);
                        return;
                    }
                }
            } else {
                throw new IOException("unexpected journal header: [" + Kkkkkkkkkkkkkkkkkkkkkkk2 + ", " + Kkkkkkkkkkkkkkkkkkkkkkk3 + ", " + Kkkkkkkkkkkkkkkkkkkkkkk5 + ", " + Kkkkkkkkkkkkkkkkkkkkkkk6 + "]");
            }
        } catch (Throwable th) {
            Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(strictLineReader);
            throw th;
        }
    }

    public final void Kkkkkkk() throws IOException {
        Kkkkkkkkkkkkkk(this.f4091Wwwwwwwwwwwwwwwwwwwwwww);
        Iterator<Entry> it = this.f4084Wwwwwwwwwwwwwwww.values().iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            int i = 0;
            if (next.f4101Wwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                next.f4101Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
                while (i < this.f4087Wwwwwwwwwwwwwwwwwww) {
                    Kkkkkkkkkkkkkk(next.Wwwwwwwwwwwwwwwwwwwwwwwww(i));
                    Kkkkkkkkkkkkkk(next.Wwwwwwwwwwwwwwwwwwwwwwww(i));
                    i++;
                }
                it.remove();
            } else {
                while (i < this.f4087Wwwwwwwwwwwwwwwwwww) {
                    this.f4086Wwwwwwwwwwwwwwwwww += next.f4105Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i];
                    i++;
                }
            }
        }
    }

    public final boolean Kkkkkkkkk() {
        int i = this.f4083Wwwwwwwwwwwwwww;
        if (i >= 2000 && i >= this.f4084Wwwwwwwwwwwwwwww.size()) {
            return true;
        }
        return false;
    }

    public synchronized Value Kkkkkkkkkk(String str) throws IOException {
        Throwable th;
        try {
            try {
                Kkkkkkkkkkkkkkkkkk();
                Entry entry = this.f4084Wwwwwwwwwwwwwwww.get(str);
                if (entry == null) {
                    return null;
                }
                if (!entry.f4102Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    return null;
                }
                for (File file : entry.f4104Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    try {
                        if (!file.exists()) {
                            return null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                this.f4083Wwwwwwwwwwwwwww++;
                this.f4085Wwwwwwwwwwwwwwwww.append((CharSequence) "READ");
                this.f4085Wwwwwwwwwwwwwwwww.append(' ');
                this.f4085Wwwwwwwwwwwwwwwww.append((CharSequence) str);
                this.f4085Wwwwwwwwwwwwwwwww.append('\n');
                if (Kkkkkkkkk()) {
                    this.f4081Wwwwwwwwwwwww.submit(this.f4080Wwwwwwwwwwww);
                }
                return new Value(str, entry.f4100Wwwwwwwwwwwwwwwwwwwwwwwwwwww, entry.f4104Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, entry.f4105Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            throw th;
        }
    }

    public final synchronized Editor Kkkkkkkkkkkk(String str, long j) throws IOException {
        Kkkkkkkkkkkkkkkkkk();
        Entry entry = this.f4084Wwwwwwwwwwwwwwww.get(str);
        if (j != -1 && (entry == null || entry.f4100Wwwwwwwwwwwwwwwwwwwwwwwwwwww != j)) {
            return null;
        }
        if (entry == null) {
            entry = new Entry(str);
            this.f4084Wwwwwwwwwwwwwwww.put(str, entry);
        } else if (entry.f4101Wwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            return null;
        }
        Editor editor = new Editor(entry);
        entry.f4101Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = editor;
        this.f4085Wwwwwwwwwwwwwwwww.append((CharSequence) "DIRTY");
        this.f4085Wwwwwwwwwwwwwwwww.append(' ');
        this.f4085Wwwwwwwwwwwwwwwww.append((CharSequence) str);
        this.f4085Wwwwwwwwwwwwwwwww.append('\n');
        Kkkkkkkkkkk(this.f4085Wwwwwwwwwwwwwwwww);
        return editor;
    }

    public Editor Kkkkkkkkkkkkk(String str) throws IOException {
        return Kkkkkkkkkkkk(str, -1L);
    }

    public void Kkkkkkkkkkkkkkk() throws IOException {
        close();
        Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4093Wwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final synchronized void Kkkkkkkkkkkkkkkk(Editor editor, boolean z) throws IOException {
        Entry entry = editor.f4098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (entry.f4101Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == editor) {
            if (z && !entry.f4102Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                for (int i = 0; i < this.f4087Wwwwwwwwwwwwwwwwwww; i++) {
                    if (editor.f4097Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i]) {
                        if (!entry.Wwwwwwwwwwwwwwwwwwwwwwww(i).exists()) {
                            editor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            return;
                        }
                    } else {
                        editor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                    }
                }
            }
            for (int i2 = 0; i2 < this.f4087Wwwwwwwwwwwwwwwwwww; i2++) {
                File Wwwwwwwwwwwwwwwwwwwwwwww2 = entry.Wwwwwwwwwwwwwwwwwwwwwwww(i2);
                if (z) {
                    if (Wwwwwwwwwwwwwwwwwwwwwwww2.exists()) {
                        File Wwwwwwwwwwwwwwwwwwwwwwwww2 = entry.Wwwwwwwwwwwwwwwwwwwwwwwww(i2);
                        Wwwwwwwwwwwwwwwwwwwwwwww2.renameTo(Wwwwwwwwwwwwwwwwwwwwwwwww2);
                        long j = entry.f4105Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i2];
                        long length = Wwwwwwwwwwwwwwwwwwwwwwwww2.length();
                        entry.f4105Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i2] = length;
                        this.f4086Wwwwwwwwwwwwwwwwww = (this.f4086Wwwwwwwwwwwwwwwwww - j) + length;
                    }
                } else {
                    Kkkkkkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwww2);
                }
            }
            this.f4083Wwwwwwwwwwwwwww++;
            entry.f4101Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            if (entry.f4102Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww | z) {
                entry.f4102Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                this.f4085Wwwwwwwwwwwwwwwww.append((CharSequence) "CLEAN");
                this.f4085Wwwwwwwwwwwwwwwww.append(' ');
                this.f4085Wwwwwwwwwwwwwwwww.append((CharSequence) entry.f4106Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                this.f4085Wwwwwwwwwwwwwwwww.append((CharSequence) entry.Wwwwwwwwwwwwwwwwwwwwwww());
                this.f4085Wwwwwwwwwwwwwwwww.append('\n');
                if (z) {
                    long j2 = this.f4082Wwwwwwwwwwwwww;
                    this.f4082Wwwwwwwwwwwwww = 1 + j2;
                    entry.f4100Wwwwwwwwwwwwwwwwwwwwwwwwwwww = j2;
                }
            } else {
                this.f4084Wwwwwwwwwwwwwwww.remove(entry.f4106Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                this.f4085Wwwwwwwwwwwwwwwww.append((CharSequence) "REMOVE");
                this.f4085Wwwwwwwwwwwwwwwww.append(' ');
                this.f4085Wwwwwwwwwwwwwwwww.append((CharSequence) entry.f4106Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                this.f4085Wwwwwwwwwwwwwwwww.append('\n');
            }
            Kkkkkkkkkkk(this.f4085Wwwwwwwwwwwwwwwww);
            if (this.f4086Wwwwwwwwwwwwwwwwww > this.f4088Wwwwwwwwwwwwwwwwwwww || Kkkkkkkkk()) {
                this.f4081Wwwwwwwwwwwww.submit(this.f4080Wwwwwwwwwwww);
            }
            return;
        }
        throw new IllegalStateException();
    }

    public final void Kkkkkkkkkkkkkkkkkk() {
        if (this.f4085Wwwwwwwwwwwwwwwww != null) {
            return;
        }
        throw new IllegalStateException("cache is closed");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        try {
            if (this.f4085Wwwwwwwwwwwwwwwww == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.f4084Wwwwwwwwwwwwwwww.values());
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                Entry entry = (Entry) obj;
                if (entry.f4101Wwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                    entry.f4101Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            }
            Illllllllllllllllllllllllllll();
            Kkkkkkkkkkkkkkkkk(this.f4085Wwwwwwwwwwwwwwwww);
            this.f4085Wwwwwwwwwwwwwwwww = null;
        } catch (Throwable th) {
            throw th;
        }
    }
}
