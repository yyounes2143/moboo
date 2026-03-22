package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.ImageViewTargetFactory;
import com.bumptech.glide.util.GlideSuppliers;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class GlideContext extends ContextWrapper {
    @VisibleForTesting

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final TransitionOptions<?, ?> f4004Wwwwwwwwwwwwwwwwwwwwwwww = new GenericTransitionOptions();
    @Nullable
    @GuardedBy("this")

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RequestOptions f4005Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4006Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GlideExperiments f4007Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Engine f4008Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<Class<?>, TransitionOptions<?, ?>> f4009Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<RequestListener<Object>> f4010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Glide.RequestOptionsFactory f4011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageViewTargetFactory f4012Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GlideSuppliers.GlideSupplier<Registry> f4013Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayPool f4014Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public GlideContext(@NonNull Context context, @NonNull ArrayPool arrayPool, @NonNull GlideSuppliers.GlideSupplier<Registry> glideSupplier, @NonNull ImageViewTargetFactory imageViewTargetFactory, @NonNull Glide.RequestOptionsFactory requestOptionsFactory, @NonNull Map<Class<?>, TransitionOptions<?, ?>> map, @NonNull List<RequestListener<Object>> list, @NonNull Engine engine, @NonNull GlideExperiments glideExperiments, int i) {
        super(context.getApplicationContext());
        this.f4014Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayPool;
        this.f4012Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = imageViewTargetFactory;
        this.f4011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestOptionsFactory;
        this.f4010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        this.f4009Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = map;
        this.f4008Wwwwwwwwwwwwwwwwwwwwwwwwwwww = engine;
        this.f4007Wwwwwwwwwwwwwwwwwwwwwwwwwww = glideExperiments;
        this.f4006Wwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f4013Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = GlideSuppliers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(glideSupplier);
    }

    @NonNull
    public Registry Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4013Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4006Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public GlideExperiments Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4007Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public Engine Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4008Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public <T> TransitionOptions<?, T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<T> cls) {
        TransitionOptions<?, T> transitionOptions = (TransitionOptions<?, T>) this.f4009Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(cls);
        if (transitionOptions == null) {
            for (Map.Entry<Class<?>, TransitionOptions<?, ?>> entry : this.f4009Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    transitionOptions = (TransitionOptions<?, T>) entry.getValue();
                }
            }
        }
        return transitionOptions == null ? (TransitionOptions<?, T>) f4004Wwwwwwwwwwwwwwwwwwwwwwww : transitionOptions;
    }

    public synchronized RequestOptions Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        try {
            if (this.f4005Wwwwwwwwwwwwwwwwwwwwwwwww == null) {
                this.f4005Wwwwwwwwwwwwwwwwwwwwwwwww = this.f4011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.build().Kkkkkkkkkkkkkkkkkkkkkk();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f4005Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public List<RequestListener<Object>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NonNull
    public ArrayPool Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4014Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
