package com.bumptech.glide.load.engine.bitmap_recycle;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class LruBitmapPool implements BitmapPool {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Bitmap.Config f4470Wwwwwwwwwwwwwwwwwwwwwwww = Bitmap.Config.ARGB_8888;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4471Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4472Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4473Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4474Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f4475Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f4476Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BitmapTracker f4477Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f4478Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<Bitmap.Config> f4479Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LruPoolStrategy f4480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface BitmapTracker {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class ThrowingBitmapTracker implements BitmapTracker {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Set<Bitmap> f4481Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Collections.synchronizedSet(new HashSet());

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool.BitmapTracker
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap) {
            if (!this.f4481Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(bitmap)) {
                this.f4481Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(bitmap);
                return;
            }
            throw new IllegalStateException("Can't add already added bitmap: " + bitmap + " [" + bitmap.getWidth() + "x" + bitmap.getHeight() + "]");
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool.BitmapTracker
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap) {
            if (this.f4481Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(bitmap)) {
                this.f4481Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(bitmap);
                return;
            }
            throw new IllegalStateException("Cannot remove bitmap not in tracker");
        }
    }

    public LruBitmapPool(long j, LruPoolStrategy lruPoolStrategy, Set<Bitmap.Config> set) {
        this.f4478Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        this.f4476Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        this.f4480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = lruPoolStrategy;
        this.f4479Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = set;
        this.f4477Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new NullBitmapTracker();
    }

    public static void Wwwwwwwwwwwwwwwwwww(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
        Wwwwwwwwwwwwwwwwwwww(bitmap);
    }

    @TargetApi(19)
    public static void Wwwwwwwwwwwwwwwwwwww(Bitmap bitmap) {
        bitmap.setPremultiplied(true);
    }

    public static LruPoolStrategy Wwwwwwwwwwwwwwwwwwwwwww() {
        return new SizeConfigStrategy();
    }

    @TargetApi(26)
    public static Set<Bitmap.Config> Wwwwwwwwwwwwwwwwwwwwwwww() {
        Bitmap.Config config;
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        int i = Build.VERSION.SDK_INT;
        hashSet.add(null);
        if (i >= 26) {
            config = Bitmap.Config.HARDWARE;
            hashSet.remove(config);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @NonNull
    public static Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, @Nullable Bitmap.Config config) {
        if (config == null) {
            config = f4470Wwwwwwwwwwwwwwwwwwwwwwww;
        }
        return Bitmap.createBitmap(i, i2, config);
    }

    @TargetApi(26)
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap.Config config) {
        Bitmap.Config config2;
        if (Build.VERSION.SDK_INT >= 26) {
            config2 = Bitmap.Config.HARDWARE;
            if (config != config2) {
                return;
            }
            throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
        }
    }

    public final synchronized void Wwwwwwwwwwwwwwwwww(long j) {
        while (this.f4475Wwwwwwwwwwwwwwwwwwwwwwwwwwwww > j) {
            try {
                Bitmap removeLast = this.f4480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.removeLast();
                if (removeLast == null) {
                    if (Log.isLoggable("LruBitmapPool", 5)) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    this.f4475Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0L;
                    return;
                }
                this.f4477Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(removeLast);
                this.f4475Wwwwwwwwwwwwwwwwwwwwwwwwwwwww -= this.f4480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(removeLast);
                this.f4471Wwwwwwwwwwwwwwwwwwwwwwwww++;
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    this.f4480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(removeLast);
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                removeLast.recycle();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public long Wwwwwwwwwwwwwwwwwwwww() {
        return this.f4476Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final synchronized Bitmap Wwwwwwwwwwwwwwwwwwwwww(int i, int i2, @Nullable Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(config);
            LruPoolStrategy lruPoolStrategy = this.f4480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (config != null) {
                config2 = config;
            } else {
                config2 = f4470Wwwwwwwwwwwwwwwwwwwwwwww;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = lruPoolStrategy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, config2);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    this.f4480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, config);
                }
                this.f4473Wwwwwwwwwwwwwwwwwwwwwwwwwww++;
            } else {
                this.f4474Wwwwwwwwwwwwwwwwwwwwwwwwwwww++;
                this.f4475Wwwwwwwwwwwwwwwwwwwwwwwwwwwww -= this.f4480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                this.f4477Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Wwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                this.f4480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, config);
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Throwable th) {
            throw th;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwww(this.f4476Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        Objects.toString(this.f4480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    @NonNull
    public Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, Bitmap.Config config) {
        Bitmap Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwww(i, i2, config);
        if (Wwwwwwwwwwwwwwwwwwwwww2 == null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, config);
        }
        return Wwwwwwwwwwwwwwwwwwwwww2;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    @NonNull
    public Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, Bitmap.Config config) {
        Bitmap Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwww(i, i2, config);
        if (Wwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwww2.eraseColor(0);
            return Wwwwwwwwwwwwwwwwwwwwww2;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, config);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap) {
        try {
            if (bitmap != null) {
                if (!bitmap.isRecycled()) {
                    if (bitmap.isMutable() && this.f4480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap) <= this.f4476Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f4479Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(bitmap.getConfig())) {
                        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
                        this.f4480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
                        this.f4477Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
                        this.f4472Wwwwwwwwwwwwwwwwwwwwwwwwww++;
                        this.f4475Wwwwwwwwwwwwwwwwwwwwwwwwwwwww += Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        if (Log.isLoggable("LruBitmapPool", 2)) {
                            this.f4480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
                        }
                        Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                        Wwwwwwwwwwwwwwwwwwwwwwwww();
                        return;
                    }
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        this.f4480Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
                        bitmap.isMutable();
                        this.f4479Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(bitmap.getConfig());
                    }
                    bitmap.recycle();
                    return;
                }
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            throw new NullPointerException("Bitmap must not be null");
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwww(0L);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
    @SuppressLint({"InlinedApi"})
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (i < 40 && i < 20) {
            if (i < 20 && i != 15) {
                return;
            }
            Wwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwww() / 2);
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public LruBitmapPool(long j) {
        this(j, Wwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwww());
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class NullBitmapTracker implements BitmapTracker {
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool.BitmapTracker
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap) {
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool.BitmapTracker
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap) {
        }
    }
}
