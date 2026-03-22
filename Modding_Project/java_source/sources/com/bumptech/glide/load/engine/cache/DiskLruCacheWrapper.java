package com.bumptech.glide.load.engine.cache;

import android.util.Log;
import com.bumptech.glide.disklrucache.DiskLruCache;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.cache.DiskCache;
import j$.util.Objects;
import java.io.File;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class DiskLruCacheWrapper implements DiskCache {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public DiskLruCache f4509Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f4511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final File f4512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DiskCacheWriteLocker f4510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new DiskCacheWriteLocker();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final SafeKeyGenerator f4513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new SafeKeyGenerator();

    @Deprecated
    public DiskLruCacheWrapper(File file, long j) {
        this.f4512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = file;
        this.f4511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
    }

    public static DiskCache Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file, long j) {
        return new DiskLruCacheWrapper(file, j);
    }

    public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4509Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    public final synchronized DiskLruCache Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        try {
            if (this.f4509Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                this.f4509Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = DiskLruCache.Kkkkkkkk(this.f4512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 1, 1, this.f4511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f4509Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Objects.toString(key);
        }
        try {
            DiskLruCache.Value Kkkkkkkkkk2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Kkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (Kkkkkkkkkk2 != null) {
                return Kkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
            }
            return null;
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key, DiskCache.Writer writer) {
        DiskLruCache Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key);
        this.f4510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Objects.toString(key);
            }
            try {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } catch (IOException unused) {
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) != null) {
                return;
            }
            DiskLruCache.Editor Kkkkkkkkkkkkk2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (Kkkkkkkkkkkkk2 != null) {
                try {
                    if (writer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Kkkkkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(0))) {
                        Kkkkkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    Kkkkkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    return;
                } catch (Throwable th) {
                    Kkkkkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    throw th;
                }
            }
            throw new IllegalStateException("Had two simultaneous puts for: " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        } finally {
            this.f4510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
    }

    @Override // com.bumptech.glide.load.engine.cache.DiskCache
    public synchronized void clear() {
        try {
            try {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Kkkkkkkkkkkkkkk();
            } catch (IOException unused) {
            } catch (Throwable th) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                throw th;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
