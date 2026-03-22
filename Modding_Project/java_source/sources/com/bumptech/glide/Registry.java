package com.bumptech.glide;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.data.DataRewinderRegistry;
import com.bumptech.glide.load.engine.DecodePath;
import com.bumptech.glide.load.engine.LoadPath;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.ModelLoaderRegistry;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.load.resource.transcode.TranscoderRegistry;
import com.bumptech.glide.provider.EncoderRegistry;
import com.bumptech.glide.provider.ImageHeaderParserRegistry;
import com.bumptech.glide.provider.LoadPathCache;
import com.bumptech.glide.provider.ModelToResourceClassCache;
import com.bumptech.glide.provider.ResourceDecoderRegistry;
import com.bumptech.glide.provider.ResourceEncoderRegistry;
import com.bumptech.glide.util.pool.FactoryPools;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class Registry {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Pools.Pool<List<Throwable>> f4031Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageHeaderParserRegistry f4034Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final TranscoderRegistry f4035Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DataRewinderRegistry f4036Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ResourceEncoderRegistry f4037Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ResourceDecoderRegistry f4038Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final EncoderRegistry f4039Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ModelLoaderRegistry f4040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ModelToResourceClassCache f4033Wwwwwwwwwwwwwwwwwwwwwwwwwww = new ModelToResourceClassCache();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LoadPathCache f4032Wwwwwwwwwwwwwwwwwwwwwwwwww = new LoadPathCache();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class MissingComponentException extends RuntimeException {
        public MissingComponentException(@NonNull String str) {
            super(str);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class NoImageHeaderParserException extends MissingComponentException {
        public NoImageHeaderParserException() {
            super("Failed to find image header parser.");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class NoModelLoaderAvailableException extends MissingComponentException {
        public NoModelLoaderAvailableException(@NonNull Object obj) {
            super("Failed to find any ModelLoaders registered for model class: " + obj.getClass());
        }

        public <M> NoModelLoaderAvailableException(@NonNull M m, @NonNull List<ModelLoader<M, ?>> list) {
            super("Found ModelLoaders for model class: " + list + ", but none that handle this specific model instance: " + m);
        }

        public NoModelLoaderAvailableException(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class NoResultEncoderAvailableException extends MissingComponentException {
        public NoResultEncoderAvailableException(@NonNull Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class NoSourceEncoderAvailableException extends MissingComponentException {
        public NoSourceEncoderAvailableException(@NonNull Class<?> cls) {
            super("Failed to find source encoder for data class: " + cls);
        }
    }

    public Registry() {
        Pools.Pool<List<Throwable>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FactoryPools.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f4031Wwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        this.f4040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ModelLoaderRegistry(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        this.f4039Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new EncoderRegistry();
        this.f4038Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ResourceDecoderRegistry();
        this.f4037Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ResourceEncoderRegistry();
        this.f4036Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new DataRewinderRegistry();
        this.f4035Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new TranscoderRegistry();
        this.f4034Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new ImageHeaderParserRegistry();
        Wwwwwwwwwwwwwwwww(Arrays.asList("Animation", "Bitmap", "BitmapDrawable"));
    }

    @NonNull
    public final Registry Wwwwwwwwwwwwwwwww(@NonNull List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.add("legacy_prepend_all");
        for (String str : list) {
            arrayList.add(str);
        }
        arrayList.add("legacy_append");
        this.f4038Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(arrayList);
        return this;
    }

    @NonNull
    public <TResource, Transcode> Registry Wwwwwwwwwwwwwwwwww(@NonNull Class<TResource> cls, @NonNull Class<Transcode> cls2, @NonNull ResourceTranscoder<TResource, Transcode> resourceTranscoder) {
        this.f4035Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, cls2, resourceTranscoder);
        return this;
    }

    @NonNull
    public Registry Wwwwwwwwwwwwwwwwwww(@NonNull DataRewinder.Factory<?> factory) {
        this.f4036Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(factory);
        return this;
    }

    @NonNull
    public Registry Wwwwwwwwwwwwwwwwwwww(@NonNull ImageHeaderParser imageHeaderParser) {
        this.f4034Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageHeaderParser);
        return this;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwww(@NonNull Resource<?> resource) {
        if (this.f4037Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != null) {
            return true;
        }
        return false;
    }

    @NonNull
    public <X> Encoder<X> Wwwwwwwwwwwwwwwwwwwwww(@NonNull X x) throws NoSourceEncoderAvailableException {
        Encoder<X> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4039Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(x.getClass());
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        throw new NoSourceEncoderAvailableException(x.getClass());
    }

    @NonNull
    public <X> DataRewinder<X> Wwwwwwwwwwwwwwwwwwwwwww(@NonNull X x) {
        return this.f4036Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(x);
    }

    @NonNull
    public <X> ResourceEncoder<X> Wwwwwwwwwwwwwwwwwwwwwwww(@NonNull Resource<X> resource) throws NoResultEncoderAvailableException {
        ResourceEncoder<X> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4037Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(resource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        throw new NoResultEncoderAvailableException(resource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    @NonNull
    public <Model, TResource, Transcode> List<Class<?>> Wwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<Model> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        List<Class<?>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4033Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, cls2, cls3);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new ArrayList<>();
            for (Class<?> cls4 : this.f4040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls)) {
                for (Class<?> cls5 : this.f4038Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls4, cls2)) {
                    if (!this.f4035Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls5, cls3).isEmpty() && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.contains(cls5)) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.add(cls5);
                    }
                }
            }
            this.f4033Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, cls2, cls3, Collections.unmodifiableList(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @NonNull
    public <Model> List<ModelLoader<Model, ?>> Wwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Model model) {
        return this.f4040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(model);
    }

    @Nullable
    public <Data, TResource, Transcode> LoadPath<Data, TResource, Transcode> Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        Class<Data> cls4;
        Class<TResource> cls5;
        Class<Transcode> cls6;
        LoadPath<Data, TResource, Transcode> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4032Wwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, cls2, cls3);
        LoadPath<Data, TResource, Transcode> loadPath = null;
        if (this.f4032Wwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            return null;
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            List<DecodePath<Data, TResource, Transcode>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, cls2, cls3);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
                cls4 = cls;
                cls5 = cls2;
                cls6 = cls3;
            } else {
                cls4 = cls;
                cls5 = cls2;
                cls6 = cls3;
                loadPath = new LoadPath<>(cls4, cls5, cls6, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f4031Wwwwwwwwwwwwwwwwwwwwwwwww);
            }
            this.f4032Wwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls4, cls5, cls6, loadPath);
            return loadPath;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @NonNull
    public List<ImageHeaderParser> Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        List<ImageHeaderParser> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4034Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        throw new NoImageHeaderParserException();
    }

    @NonNull
    public final <Data, TResource, Transcode> List<DecodePath<Data, TResource, Transcode>> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        ArrayList arrayList = new ArrayList();
        for (Class cls4 : this.f4038Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, cls2)) {
            for (Class cls5 : this.f4035Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls4, cls3)) {
                arrayList.add(new DecodePath(cls, cls4, cls5, this.f4038Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, cls4), this.f4035Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls4, cls5), this.f4031Wwwwwwwwwwwwwwwwwwwwwwwww));
            }
        }
        return arrayList;
    }

    @NonNull
    public <Data, TResource> Registry Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str, @NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull ResourceDecoder<Data, TResource> resourceDecoder) {
        this.f4038Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, resourceDecoder, cls, cls2);
        return this;
    }

    @NonNull
    public <Model, Data> Registry Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull ModelLoaderFactory<Model, Data> modelLoaderFactory) {
        this.f4040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, cls2, modelLoaderFactory);
        return this;
    }

    @NonNull
    public <Data, TResource> Registry Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull ResourceDecoder<Data, TResource> resourceDecoder) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("legacy_append", cls, cls2, resourceDecoder);
        return this;
    }

    @NonNull
    public <TResource> Registry Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<TResource> cls, @NonNull ResourceEncoder<TResource> resourceEncoder) {
        this.f4037Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, resourceEncoder);
        return this;
    }

    @NonNull
    public <Data> Registry Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<Data> cls, @NonNull Encoder<Data> encoder) {
        this.f4039Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, encoder);
        return this;
    }
}
