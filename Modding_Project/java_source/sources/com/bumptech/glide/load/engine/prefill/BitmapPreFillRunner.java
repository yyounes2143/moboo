package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.util.Util;
import j$.util.Objects;
import java.security.MessageDigest;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class BitmapPreFillRunner implements Runnable {

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4566Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f4567Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Handler f4568Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<PreFillType> f4569Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Clock f4570Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final PreFillQueue f4571Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MemoryCache f4572Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BitmapPool f4573Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Clock f4565Wwwwwwwwwwwwwwwww = new Clock();

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final long f4564Wwwwwwwwwwwwwwww = TimeUnit.SECONDS.toMillis(1);

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class Clock {
        public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return SystemClock.currentThreadTimeMillis();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class UniqueKey implements Key {
        @Override // com.bumptech.glide.load.Key
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MessageDigest messageDigest) {
            throw new UnsupportedOperationException();
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        if (this.f4570Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() - j >= 32) {
            return true;
        }
        return false;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        long j = this.f4567Wwwwwwwwwwwwwwwwwww;
        this.f4567Wwwwwwwwwwwwwwwwwww = Math.min(4 * j, f4564Wwwwwwwwwwwwwwww);
        return j;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4572Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() - this.f4572Wwwwwwwwwwwwwwwwwwwwwwww.getCurrentSize();
    }

    @VisibleForTesting
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Bitmap createBitmap;
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4570Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        while (!this.f4571Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            PreFillType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4571Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (!this.f4569Wwwwwwwwwwwwwwwwwwwww.contains(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                this.f4569Wwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                createBitmap = this.f4573Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            } else {
                createBitmap = Bitmap.createBitmap(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() >= Util.Wwwwwwwwwwwwwwwwwwwwwwwwwww(createBitmap)) {
                this.f4572Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new UniqueKey(), BitmapResource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(createBitmap, this.f4573Wwwwwwwwwwwwwwwwwwwwwwwww));
            } else {
                this.f4573Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(createBitmap);
            }
            if (Log.isLoggable("PreFillRunner", 3)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                Objects.toString(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
        }
        if (!this.f4566Wwwwwwwwwwwwwwwwww && !this.f4571Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            this.f4568Wwwwwwwwwwwwwwwwwwww.postDelayed(this, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
    }
}
