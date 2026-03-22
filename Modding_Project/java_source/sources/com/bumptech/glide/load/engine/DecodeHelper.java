package com.bumptech.glide.load.engine;

import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.UnitTransformation;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class DecodeHelper<Transcode> {

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4258Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4259Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public DiskCacheStrategy f4260Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Priority f4261Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Key f4262Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4263Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f4264Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Class<Transcode> f4265Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Map<Class<?>, Transformation<?>> f4266Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Options f4267Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public DecodeJob.DiskCacheProvider f4268Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Class<?> f4269Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4270Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Object f4272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public GlideContext f4273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<ModelLoader.LoadData<?>> f4275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Key> f4274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    public boolean Wwwwwwwwww(Key key) {
        List<ModelLoader.LoadData<?>> Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        int size = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.size();
        for (int i = 0; i < size; i++) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(i).f4645Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(key)) {
                return true;
            }
        }
        return false;
    }

    public boolean Wwwwwwwwwww() {
        return this.f4258Wwwwwwwwwwwwwwwww;
    }

    public boolean Wwwwwwwwwwww(Resource<?> resource) {
        return this.f4273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwww(resource);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <R> void Wwwwwwwwwwwww(GlideContext glideContext, Object obj, Key key, int i, int i2, DiskCacheStrategy diskCacheStrategy, Class<?> cls, Class<R> cls2, Priority priority, Options options, Map<Class<?>, Transformation<?>> map, boolean z, boolean z2, DecodeJob.DiskCacheProvider diskCacheProvider) {
        this.f4273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = glideContext;
        this.f4272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
        this.f4262Wwwwwwwwwwwwwwwwwwwww = key;
        this.f4271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f4270Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
        this.f4260Wwwwwwwwwwwwwwwwwww = diskCacheStrategy;
        this.f4269Wwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
        this.f4268Wwwwwwwwwwwwwwwwwwwwwwwwwww = diskCacheProvider;
        this.f4265Wwwwwwwwwwwwwwwwwwwwwwww = cls2;
        this.f4261Wwwwwwwwwwwwwwwwwwww = priority;
        this.f4267Wwwwwwwwwwwwwwwwwwwwwwwwww = options;
        this.f4266Wwwwwwwwwwwwwwwwwwwwwwwww = map;
        this.f4259Wwwwwwwwwwwwwwwwww = z;
        this.f4258Wwwwwwwwwwwwwwwww = z2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean Wwwwwwwwwwwwww(Class<?> cls) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww(cls) != null) {
            return true;
        }
        return false;
    }

    public int Wwwwwwwwwwwwwww() {
        return this.f4271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public <Z> Transformation<Z> Wwwwwwwwwwwwwwww(Class<Z> cls) {
        Transformation<Z> transformation = (Transformation<Z>) this.f4266Wwwwwwwwwwwwwwwwwwwwwwwww.get(cls);
        if (transformation == null) {
            Iterator<Map.Entry<Class<?>, Transformation<?>>> it = this.f4266Wwwwwwwwwwwwwwwwwwwwwwwww.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, Transformation<?>> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    transformation = (Transformation<Z>) next.getValue();
                    break;
                }
            }
        }
        if (transformation == null) {
            if (this.f4266Wwwwwwwwwwwwwwwwwwwwwwwww.isEmpty() && this.f4259Wwwwwwwwwwwwwwwwww) {
                throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
            }
            return UnitTransformation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return transformation;
    }

    public Class<?> Wwwwwwwwwwwwwwwww() {
        return (Class<Transcode>) this.f4265Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public <X> Encoder<X> Wwwwwwwwwwwwwwwwww(X x) throws Registry.NoSourceEncoderAvailableException {
        return this.f4273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwww(x);
    }

    public Key Wwwwwwwwwwwwwwwwwww() {
        return this.f4262Wwwwwwwwwwwwwwwwwwwww;
    }

    public <T> DataRewinder<T> Wwwwwwwwwwwwwwwwwwww(T t) {
        return this.f4273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww(t);
    }

    public <Z> ResourceEncoder<Z> Wwwwwwwwwwwwwwwwwwwww(Resource<Z> resource) {
        return this.f4273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww(resource);
    }

    public List<Class<?>> Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f4273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwww(this.f4272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getClass(), this.f4269Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4265Wwwwwwwwwwwwwwwwwwwwwwww);
    }

    public Priority Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4261Wwwwwwwwwwwwwwwwwwww;
    }

    public Options Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4267Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public List<ModelLoader<File, ?>> Wwwwwwwwwwwwwwwwwwwwwwwww(File file) throws Registry.NoModelLoaderAvailableException {
        return this.f4273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(file);
    }

    public Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getClass();
    }

    public <Data> LoadPath<Data, ?, Transcode> Wwwwwwwwwwwwwwwwwwwwwwwwwww(Class<Data> cls) {
        return this.f4273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww(cls, this.f4269Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4265Wwwwwwwwwwwwwwwwwwwwwwww);
    }

    public List<ModelLoader.LoadData<?>> Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!this.f4264Wwwwwwwwwwwwwwwwwwwwwww) {
            this.f4264Wwwwwwwwwwwwwwwwwwwwwww = true;
            this.f4275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
            List Wwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(this.f4272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            int size = Wwwwwwwwwwwwwwwwwwwwwwwwww2.size();
            for (int i = 0; i < size; i++) {
                ModelLoader.LoadData<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ((ModelLoader) Wwwwwwwwwwwwwwwwwwwwwwwwww2.get(i)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4270Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4267Wwwwwwwwwwwwwwwwwwwwwwwwww);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    this.f4275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
            }
        }
        return this.f4275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4270Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public DiskCacheStrategy Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4260Wwwwwwwwwwwwwwwwwww;
    }

    public DiskCache Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4268Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public List<Key> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!this.f4263Wwwwwwwwwwwwwwwwwwwwww) {
            this.f4263Wwwwwwwwwwwwwwwwwwwwww = true;
            this.f4274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
            List<ModelLoader.LoadData<?>> Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            int size = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.size();
            for (int i = 0; i < size; i++) {
                ModelLoader.LoadData<?> loadData = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(i);
                if (!this.f4274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(loadData.f4645Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    this.f4274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(loadData.f4645Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
                for (int i2 = 0; i2 < loadData.f4644Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size(); i2++) {
                    if (!this.f4274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(loadData.f4644Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i2))) {
                        this.f4274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(loadData.f4644Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i2));
                    }
                }
            }
        }
        return this.f4274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public ArrayPool Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f4272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f4262Wwwwwwwwwwwwwwwwwwwww = null;
        this.f4269Wwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f4265Wwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f4267Wwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f4261Wwwwwwwwwwwwwwwwwwww = null;
        this.f4266Wwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f4260Wwwwwwwwwwwwwwwwwww = null;
        this.f4275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f4264Wwwwwwwwwwwwwwwwwwwwwww = false;
        this.f4274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f4263Wwwwwwwwwwwwwwwwwwwwww = false;
    }
}
