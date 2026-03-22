package com.bumptech.glide.request;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.CheckResult;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.DrawableTransformation;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import com.bumptech.glide.load.resource.drawable.ResourceDrawableDecoder;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gif.GifDrawableTransformation;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.signature.EmptySignature;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class BaseRequestOptions<T extends BaseRequestOptions<T>> implements Cloneable {

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public boolean f5015Kkkkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public boolean f5017Kkkkkkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Www  reason: collision with root package name */
    public boolean f5018Www;

    /* renamed from: Wwww  reason: collision with root package name */
    public boolean f5019Wwww;
    @Nullable

    /* renamed from: Wwwww  reason: collision with root package name */
    public Resources.Theme f5020Wwwww;

    /* renamed from: Wwwwww  reason: collision with root package name */
    public boolean f5021Wwwwww;

    /* renamed from: Wwwwwwwwww  reason: collision with root package name */
    public int f5025Wwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public Drawable f5026Wwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5028Wwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5033Wwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Drawable f5034Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5035Wwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Drawable f5036Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5040Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public float f5039Wwwwwwwwwwwwwwwwwwwwwwww = 1.0f;
    @NonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public DiskCacheStrategy f5038Wwwwwwwwwwwwwwwwwwwwwww = DiskCacheStrategy.f4324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Priority f5037Wwwwwwwwwwwwwwwwwwwwww = Priority.NORMAL;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5032Wwwwwwwwwwwwwwwww = true;

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5031Wwwwwwwwwwwwwwww = -1;

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5030Wwwwwwwwwwwwwww = -1;
    @NonNull

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public Key f5029Wwwwwwwwwwwwww = EmptySignature.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public boolean f5027Wwwwwwwwwwww = true;
    @NonNull

    /* renamed from: Wwwwwwwww  reason: collision with root package name */
    public Options f5024Wwwwwwwww = new Options();
    @NonNull

    /* renamed from: Wwwwwwww  reason: collision with root package name */
    public Map<Class<?>, Transformation<?>> f5023Wwwwwwww = new CachedHashCodeArrayMap();
    @NonNull

    /* renamed from: Wwwwwww  reason: collision with root package name */
    public Class<?> f5022Wwwwwww = Object.class;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkk  reason: collision with root package name */
    public boolean f5016Kkkkkkkkkkkkkkkkkkkkkkkkk = true;

    public static boolean Kkkkkkkkkkkkkkkkkkkkkkkkk(int i, int i2) {
        if ((i & i2) != 0) {
            return true;
        }
        return false;
    }

    @NonNull
    @CheckResult
    public T Kkkkkkkk(boolean z) {
        if (this.f5019Wwww) {
            return (T) clone().Kkkkkkkk(z);
        }
        this.f5015Kkkkkkkkkkkkkkkkkkkkkkkk = z;
        this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww |= 1048576;
        return Kkkkkkkkkkkkkkkkk();
    }

    @NonNull
    public <Y> T Kkkkkkkkk(@NonNull Class<Y> cls, @NonNull Transformation<Y> transformation, boolean z) {
        if (this.f5019Wwww) {
            return (T) clone().Kkkkkkkkk(cls, transformation, z);
        }
        Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls);
        Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(transformation);
        this.f5023Wwwwwwww.put(cls, transformation);
        int i = this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww;
        this.f5027Wwwwwwwwwwww = true;
        this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww = 67584 | i;
        this.f5016Kkkkkkkkkkkkkkkkkkkkkkkkk = false;
        if (z) {
            this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww = i | 198656;
            this.f5028Wwwwwwwwwwwww = true;
        }
        return Kkkkkkkkkkkkkkkkk();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public T Kkkkkkkkkk(@NonNull Transformation<Bitmap> transformation, boolean z) {
        if (this.f5019Wwww) {
            return (T) clone().Kkkkkkkkkk(transformation, z);
        }
        DrawableTransformation drawableTransformation = new DrawableTransformation(transformation, z);
        Kkkkkkkkk(Bitmap.class, transformation, z);
        Kkkkkkkkk(Drawable.class, drawableTransformation, z);
        Kkkkkkkkk(BitmapDrawable.class, drawableTransformation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), z);
        Kkkkkkkkk(GifDrawable.class, new GifDrawableTransformation(transformation), z);
        return Kkkkkkkkkkkkkkkkk();
    }

    @NonNull
    @CheckResult
    public T Kkkkkkkkkkk(@NonNull Transformation<Bitmap> transformation) {
        return Kkkkkkkkkk(transformation, true);
    }

    @NonNull
    @CheckResult
    public T Kkkkkkkkkkkk(@Nullable Resources.Theme theme) {
        if (this.f5019Wwww) {
            return (T) clone().Kkkkkkkkkkkk(theme);
        }
        this.f5020Wwwww = theme;
        if (theme != null) {
            this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww |= 32768;
            return Kkkkkkkkkkkkkkkk(ResourceDrawableDecoder.f4862Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, theme);
        }
        this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww &= -32769;
        return Kkkkkkkkkkkkkkkkkkk(ResourceDrawableDecoder.f4862Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @NonNull
    @CheckResult
    public T Kkkkkkkkkkkkk(boolean z) {
        if (this.f5019Wwww) {
            return (T) clone().Kkkkkkkkkkkkk(true);
        }
        this.f5032Wwwwwwwwwwwwwwwww = !z;
        this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww |= 256;
        return Kkkkkkkkkkkkkkkkk();
    }

    @NonNull
    @CheckResult
    public T Kkkkkkkkkkkkkk(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        if (this.f5019Wwww) {
            return (T) clone().Kkkkkkkkkkkkkk(f);
        }
        if (f >= 0.0f && f <= 1.0f) {
            this.f5039Wwwwwwwwwwwwwwwwwwwwwwww = f;
            this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww |= 2;
            return Kkkkkkkkkkkkkkkkk();
        }
        throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
    }

    @NonNull
    @CheckResult
    public T Kkkkkkkkkkkkkkk(@NonNull Key key) {
        if (this.f5019Wwww) {
            return (T) clone().Kkkkkkkkkkkkkkk(key);
        }
        this.f5029Wwwwwwwwwwwwww = (Key) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key);
        this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww |= 1024;
        return Kkkkkkkkkkkkkkkkk();
    }

    @NonNull
    @CheckResult
    public <Y> T Kkkkkkkkkkkkkkkk(@NonNull Option<Y> option, @NonNull Y y) {
        if (this.f5019Wwww) {
            return (T) clone().Kkkkkkkkkkkkkkkk(option, y);
        }
        Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(option);
        Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(y);
        this.f5024Wwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(option, y);
        return Kkkkkkkkkkkkkkkkk();
    }

    @NonNull
    public final T Kkkkkkkkkkkkkkkkk() {
        if (!this.f5021Wwwwww) {
            return Kkkkkkkkkkkkkkkkkk();
        }
        throw new IllegalStateException("You cannot modify locked T, consider clone()");
    }

    public T Kkkkkkkkkkkkkkkkkkk(@NonNull Option<?> option) {
        if (this.f5019Wwww) {
            return (T) clone().Kkkkkkkkkkkkkkkkkkk(option);
        }
        this.f5024Wwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(option);
        return Kkkkkkkkkkkkkkkkk();
    }

    @NonNull
    @CheckResult
    public T Kkkkkkkkkkkkkkkkkkkk(@NonNull Priority priority) {
        if (this.f5019Wwww) {
            return (T) clone().Kkkkkkkkkkkkkkkkkkkk(priority);
        }
        this.f5037Wwwwwwwwwwwwwwwwwwwwww = (Priority) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(priority);
        this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww |= 8;
        return Kkkkkkkkkkkkkkkkk();
    }

    @NonNull
    @CheckResult
    public T Kkkkkkkkkkkkkkkkkkkkk(int i, int i2) {
        if (this.f5019Wwww) {
            return (T) clone().Kkkkkkkkkkkkkkkkkkkkk(i, i2);
        }
        this.f5030Wwwwwwwwwwwwwww = i;
        this.f5031Wwwwwwwwwwwwwwww = i2;
        this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww |= 512;
        return Kkkkkkkkkkkkkkkkk();
    }

    @NonNull
    public T Kkkkkkkkkkkkkkkkkkkkkk() {
        this.f5021Wwwwww = true;
        return Kkkkkkkkkkkkkkkkkk();
    }

    public final boolean Kkkkkkkkkkkkkkkkkkkkkkk() {
        return Util.Wwwwwwwwwwwwww(this.f5030Wwwwwwwwwwwwwww, this.f5031Wwwwwwwwwwwwwwww);
    }

    public final boolean Kkkkkkkkkkkkkkkkkkkkkkkk() {
        return this.f5028Wwwwwwwwwwwww;
    }

    public final boolean Kkkkkkkkkkkkkkkkkkkkkkkkkk(int i) {
        return Kkkkkkkkkkkkkkkkkkkkkkkkk(this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, i);
    }

    public boolean Www() {
        return this.f5016Kkkkkkkkkkkkkkkkkkkkkkkkk;
    }

    public final boolean Wwww() {
        return Kkkkkkkkkkkkkkkkkkkkkkkkkk(8);
    }

    public final boolean Wwwww() {
        return this.f5032Wwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwww() {
        return this.f5019Wwww;
    }

    public final boolean Wwwwwww() {
        return this.f5018Www;
    }

    public final boolean Wwwwwwww() {
        return this.f5015Kkkkkkkkkkkkkkkkkkkkkkkk;
    }

    @NonNull
    public final Map<Class<?>, Transformation<?>> Wwwwwwwww() {
        return this.f5023Wwwwwwww;
    }

    @Nullable
    public final Resources.Theme Wwwwwwwwww() {
        return this.f5020Wwwww;
    }

    public final float Wwwwwwwwwww() {
        return this.f5039Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public final Key Wwwwwwwwwwww() {
        return this.f5029Wwwwwwwwwwwwww;
    }

    @NonNull
    public final Class<?> Wwwwwwwwwwwww() {
        return this.f5022Wwwwwww;
    }

    @NonNull
    public final Priority Wwwwwwwwwwwwwww() {
        return this.f5037Wwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwww() {
        return this.f5033Wwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Drawable Wwwwwwwwwwwwwwwww() {
        return this.f5034Wwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwww() {
        return this.f5030Wwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwww() {
        return this.f5031Wwwwwwwwwwwwwwww;
    }

    @NonNull
    public final Options Wwwwwwwwwwwwwwwwwwww() {
        return this.f5024Wwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwww() {
        return this.f5017Kkkkkkkkkkkkkkkkkkkkkkkkkk;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f5025Wwwwwwwwww;
    }

    @Nullable
    public final Drawable Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5026Wwwwwwwwwww;
    }

    @Nullable
    public final Drawable Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5036Wwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5035Wwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public final DiskCacheStrategy Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5038Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    @CheckResult
    public T Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@IntRange(from = 0) long j) {
        return Kkkkkkkkkkkkkkkk(VideoDecoder.f4840Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Long.valueOf(j));
    }

    @NonNull
    @CheckResult
    public T Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull DiskCacheStrategy diskCacheStrategy) {
        if (this.f5019Wwww) {
            return (T) clone().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(diskCacheStrategy);
        }
        this.f5038Wwwwwwwwwwwwwwwwwwwwwww = (DiskCacheStrategy) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(diskCacheStrategy);
        this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww |= 4;
        return Kkkkkkkkkkkkkkkkk();
    }

    @NonNull
    @CheckResult
    public T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<?> cls) {
        if (this.f5019Wwww) {
            return (T) clone().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls);
        }
        this.f5022Wwwwwww = (Class) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls);
        this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww |= 4096;
        return Kkkkkkkkkkkkkkkkk();
    }

    @Override // 
    @CheckResult
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public T clone() {
        try {
            T t = (T) super.clone();
            Options options = new Options();
            t.f5024Wwwwwwwww = options;
            options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5024Wwwwwwwww);
            CachedHashCodeArrayMap cachedHashCodeArrayMap = new CachedHashCodeArrayMap();
            t.f5023Wwwwwwww = cachedHashCodeArrayMap;
            cachedHashCodeArrayMap.putAll(this.f5023Wwwwwwww);
            t.f5021Wwwwww = false;
            t.f5019Wwww = false;
            return t;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    @NonNull
    public T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f5021Wwwwww && !this.f5019Wwww) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        this.f5019Wwww = true;
        return Kkkkkkkkkkkkkkkkkkkkkk();
    }

    @NonNull
    @CheckResult
    public T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull BaseRequestOptions<?> baseRequestOptions) {
        if (this.f5019Wwww) {
            return (T) clone().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(baseRequestOptions);
        }
        if (Kkkkkkkkkkkkkkkkkkkkkkkkk(baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, 2)) {
            this.f5039Wwwwwwwwwwwwwwwwwwwwwwww = baseRequestOptions.f5039Wwwwwwwwwwwwwwwwwwwwwwww;
        }
        if (Kkkkkkkkkkkkkkkkkkkkkkkkk(baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, 262144)) {
            this.f5018Www = baseRequestOptions.f5018Www;
        }
        if (Kkkkkkkkkkkkkkkkkkkkkkkkk(baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, 1048576)) {
            this.f5015Kkkkkkkkkkkkkkkkkkkkkkkk = baseRequestOptions.f5015Kkkkkkkkkkkkkkkkkkkkkkkk;
        }
        if (Kkkkkkkkkkkkkkkkkkkkkkkkk(baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, 4)) {
            this.f5038Wwwwwwwwwwwwwwwwwwwwwww = baseRequestOptions.f5038Wwwwwwwwwwwwwwwwwwwwwww;
        }
        if (Kkkkkkkkkkkkkkkkkkkkkkkkk(baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, 8)) {
            this.f5037Wwwwwwwwwwwwwwwwwwwwww = baseRequestOptions.f5037Wwwwwwwwwwwwwwwwwwwwww;
        }
        if (Kkkkkkkkkkkkkkkkkkkkkkkkk(baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, 16)) {
            this.f5036Wwwwwwwwwwwwwwwwwwwww = baseRequestOptions.f5036Wwwwwwwwwwwwwwwwwwwww;
            this.f5035Wwwwwwwwwwwwwwwwwwww = 0;
            this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww &= -33;
        }
        if (Kkkkkkkkkkkkkkkkkkkkkkkkk(baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, 32)) {
            this.f5035Wwwwwwwwwwwwwwwwwwww = baseRequestOptions.f5035Wwwwwwwwwwwwwwwwwwww;
            this.f5036Wwwwwwwwwwwwwwwwwwwww = null;
            this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww &= -17;
        }
        if (Kkkkkkkkkkkkkkkkkkkkkkkkk(baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, 64)) {
            this.f5034Wwwwwwwwwwwwwwwwwww = baseRequestOptions.f5034Wwwwwwwwwwwwwwwwwww;
            this.f5033Wwwwwwwwwwwwwwwwww = 0;
            this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww &= -129;
        }
        if (Kkkkkkkkkkkkkkkkkkkkkkkkk(baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, 128)) {
            this.f5033Wwwwwwwwwwwwwwwwww = baseRequestOptions.f5033Wwwwwwwwwwwwwwwwww;
            this.f5034Wwwwwwwwwwwwwwwwwww = null;
            this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww &= -65;
        }
        if (Kkkkkkkkkkkkkkkkkkkkkkkkk(baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, 256)) {
            this.f5032Wwwwwwwwwwwwwwwww = baseRequestOptions.f5032Wwwwwwwwwwwwwwwww;
        }
        if (Kkkkkkkkkkkkkkkkkkkkkkkkk(baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, 512)) {
            this.f5030Wwwwwwwwwwwwwww = baseRequestOptions.f5030Wwwwwwwwwwwwwww;
            this.f5031Wwwwwwwwwwwwwwww = baseRequestOptions.f5031Wwwwwwwwwwwwwwww;
        }
        if (Kkkkkkkkkkkkkkkkkkkkkkkkk(baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, 1024)) {
            this.f5029Wwwwwwwwwwwwww = baseRequestOptions.f5029Wwwwwwwwwwwwww;
        }
        if (Kkkkkkkkkkkkkkkkkkkkkkkkk(baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, 4096)) {
            this.f5022Wwwwwww = baseRequestOptions.f5022Wwwwwww;
        }
        if (Kkkkkkkkkkkkkkkkkkkkkkkkk(baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, 8192)) {
            this.f5026Wwwwwwwwwww = baseRequestOptions.f5026Wwwwwwwwwww;
            this.f5025Wwwwwwwwww = 0;
            this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww &= -16385;
        }
        if (Kkkkkkkkkkkkkkkkkkkkkkkkk(baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, 16384)) {
            this.f5025Wwwwwwwwww = baseRequestOptions.f5025Wwwwwwwwww;
            this.f5026Wwwwwwwwwww = null;
            this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww &= -8193;
        }
        if (Kkkkkkkkkkkkkkkkkkkkkkkkk(baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, 32768)) {
            this.f5020Wwwww = baseRequestOptions.f5020Wwwww;
        }
        if (Kkkkkkkkkkkkkkkkkkkkkkkkk(baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, 65536)) {
            this.f5027Wwwwwwwwwwww = baseRequestOptions.f5027Wwwwwwwwwwww;
        }
        if (Kkkkkkkkkkkkkkkkkkkkkkkkk(baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, 131072)) {
            this.f5028Wwwwwwwwwwwww = baseRequestOptions.f5028Wwwwwwwwwwwww;
        }
        if (Kkkkkkkkkkkkkkkkkkkkkkkkk(baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, 2048)) {
            this.f5023Wwwwwwww.putAll(baseRequestOptions.f5023Wwwwwwww);
            this.f5016Kkkkkkkkkkkkkkkkkkkkkkkkk = baseRequestOptions.f5016Kkkkkkkkkkkkkkkkkkkkkkkkk;
        }
        if (Kkkkkkkkkkkkkkkkkkkkkkkkk(baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww, 524288)) {
            this.f5017Kkkkkkkkkkkkkkkkkkkkkkkkkk = baseRequestOptions.f5017Kkkkkkkkkkkkkkkkkkkkkkkkkk;
        }
        if (!this.f5027Wwwwwwwwwwww) {
            this.f5023Wwwwwwww.clear();
            int i = this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww;
            this.f5028Wwwwwwwwwwwww = false;
            this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww = i & (-133121);
            this.f5016Kkkkkkkkkkkkkkkkkkkkkkkkk = true;
        }
        this.f5040Wwwwwwwwwwwwwwwwwwwwwwwww |= baseRequestOptions.f5040Wwwwwwwwwwwwwwwwwwwwwwwww;
        this.f5024Wwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(baseRequestOptions.f5024Wwwwwwwww);
        return Kkkkkkkkkkkkkkkkk();
    }

    public boolean equals(Object obj) {
        if (obj instanceof BaseRequestOptions) {
            BaseRequestOptions baseRequestOptions = (BaseRequestOptions) obj;
            if (Float.compare(baseRequestOptions.f5039Wwwwwwwwwwwwwwwwwwwwwwww, this.f5039Wwwwwwwwwwwwwwwwwwwwwwww) == 0 && this.f5035Wwwwwwwwwwwwwwwwwwww == baseRequestOptions.f5035Wwwwwwwwwwwwwwwwwwww && Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5036Wwwwwwwwwwwwwwwwwwwww, baseRequestOptions.f5036Wwwwwwwwwwwwwwwwwwwww) && this.f5033Wwwwwwwwwwwwwwwwww == baseRequestOptions.f5033Wwwwwwwwwwwwwwwwww && Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5034Wwwwwwwwwwwwwwwwwww, baseRequestOptions.f5034Wwwwwwwwwwwwwwwwwww) && this.f5025Wwwwwwwwww == baseRequestOptions.f5025Wwwwwwwwww && Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5026Wwwwwwwwwww, baseRequestOptions.f5026Wwwwwwwwwww) && this.f5032Wwwwwwwwwwwwwwwww == baseRequestOptions.f5032Wwwwwwwwwwwwwwwww && this.f5031Wwwwwwwwwwwwwwww == baseRequestOptions.f5031Wwwwwwwwwwwwwwww && this.f5030Wwwwwwwwwwwwwww == baseRequestOptions.f5030Wwwwwwwwwwwwwww && this.f5028Wwwwwwwwwwwww == baseRequestOptions.f5028Wwwwwwwwwwwww && this.f5027Wwwwwwwwwwww == baseRequestOptions.f5027Wwwwwwwwwwww && this.f5018Www == baseRequestOptions.f5018Www && this.f5017Kkkkkkkkkkkkkkkkkkkkkkkkkk == baseRequestOptions.f5017Kkkkkkkkkkkkkkkkkkkkkkkkkk && this.f5038Wwwwwwwwwwwwwwwwwwwwwww.equals(baseRequestOptions.f5038Wwwwwwwwwwwwwwwwwwwwwww) && this.f5037Wwwwwwwwwwwwwwwwwwwwww == baseRequestOptions.f5037Wwwwwwwwwwwwwwwwwwwwww && this.f5024Wwwwwwwww.equals(baseRequestOptions.f5024Wwwwwwwww) && this.f5023Wwwwwwww.equals(baseRequestOptions.f5023Wwwwwwww) && this.f5022Wwwwwww.equals(baseRequestOptions.f5022Wwwwwww) && Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5029Wwwwwwwwwwwwww, baseRequestOptions.f5029Wwwwwwwwwwwwww) && Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5020Wwwww, baseRequestOptions.f5020Wwwww)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Util.Wwwwwwwwwwwwwwwwwww(this.f5020Wwwww, Util.Wwwwwwwwwwwwwwwwwww(this.f5029Wwwwwwwwwwwwww, Util.Wwwwwwwwwwwwwwwwwww(this.f5022Wwwwwww, Util.Wwwwwwwwwwwwwwwwwww(this.f5023Wwwwwwww, Util.Wwwwwwwwwwwwwwwwwww(this.f5024Wwwwwwwww, Util.Wwwwwwwwwwwwwwwwwww(this.f5037Wwwwwwwwwwwwwwwwwwwwww, Util.Wwwwwwwwwwwwwwwwwww(this.f5038Wwwwwwwwwwwwwwwwwwwwwww, Util.Wwwwwwwwwwwwwwwwww(this.f5017Kkkkkkkkkkkkkkkkkkkkkkkkkk, Util.Wwwwwwwwwwwwwwwwww(this.f5018Www, Util.Wwwwwwwwwwwwwwwwww(this.f5027Wwwwwwwwwwww, Util.Wwwwwwwwwwwwwwwwww(this.f5028Wwwwwwwwwwwww, Util.Wwwwwwwwwwwwwwwwwwww(this.f5030Wwwwwwwwwwwwwww, Util.Wwwwwwwwwwwwwwwwwwww(this.f5031Wwwwwwwwwwwwwwww, Util.Wwwwwwwwwwwwwwwwww(this.f5032Wwwwwwwwwwwwwwwww, Util.Wwwwwwwwwwwwwwwwwww(this.f5026Wwwwwwwwwww, Util.Wwwwwwwwwwwwwwwwwwww(this.f5025Wwwwwwwwww, Util.Wwwwwwwwwwwwwwwwwww(this.f5034Wwwwwwwwwwwwwwwwwww, Util.Wwwwwwwwwwwwwwwwwwww(this.f5033Wwwwwwwwwwwwwwwwww, Util.Wwwwwwwwwwwwwwwwwww(this.f5036Wwwwwwwwwwwwwwwwwwwww, Util.Wwwwwwwwwwwwwwwwwwww(this.f5035Wwwwwwwwwwwwwwwwwwww, Util.Wwwwwwwwwwwwwwwwwwwwwww(this.f5039Wwwwwwwwwwwwwwwwwwwwwwww)))))))))))))))))))));
    }

    public final T Kkkkkkkkkkkkkkkkkk() {
        return this;
    }
}
