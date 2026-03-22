package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.DataFetcherGenerator;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.util.pool.GlideTrace;
import java.io.File;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ResourceCacheGenerator implements DataFetcherGenerator, DataFetcher.DataCallback<Object> {

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public ResourceCacheKey f4418Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public File f4419Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile ModelLoader.LoadData<?> f4420Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4421Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<ModelLoader<File, ?>> f4422Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Key f4423Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4424Wwwwwwwwwwwwwwwwwwwwww = -1;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4425Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DecodeHelper<?> f4426Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DataFetcherGenerator.FetcherReadyCallback f4427Wwwwwwwwwwwwwwwwwwwwwwwww;

    public ResourceCacheGenerator(DecodeHelper<?> decodeHelper, DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback) {
        this.f4426Wwwwwwwwwwwwwwwwwwwwwwww = decodeHelper;
        this.f4427Wwwwwwwwwwwwwwwwwwwwwwwww = fetcherReadyCallback;
    }

    private boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f4421Wwwwwwwwwwwwwwwwwww < this.f4422Wwwwwwwwwwwwwwwwwwww.size()) {
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        this.f4427Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4423Wwwwwwwwwwwwwwwwwwwww, obj, this.f4420Wwwwwwwwwwwwwwwwww.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, DataSource.RESOURCE_DISK_CACHE, this.f4418Wwwwwwwwwwwwwwww);
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Exception exc) {
        this.f4427Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4418Wwwwwwwwwwwwwwww, exc, this.f4420Wwwwwwwwwwwwwwwwww.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, DataSource.RESOURCE_DISK_CACHE);
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("ResourceCacheGenerator.startNext");
        try {
            List<Key> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4426Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            boolean z = false;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
                GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                return false;
            }
            List<Class<?>> Wwwwwwwwwwwwwwwwwwwwww2 = this.f4426Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
                if (File.class.equals(this.f4426Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwww())) {
                    GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    return false;
                }
                throw new IllegalStateException("Failed to find any load path from " + this.f4426Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww() + " to " + this.f4426Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwww());
            }
            while (true) {
                if (this.f4422Wwwwwwwwwwwwwwwwwwww != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    this.f4420Wwwwwwwwwwwwwwwwww = null;
                    while (!z && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        List<ModelLoader<File, ?>> list = this.f4422Wwwwwwwwwwwwwwwwwwww;
                        int i = this.f4421Wwwwwwwwwwwwwwwwwww;
                        this.f4421Wwwwwwwwwwwwwwwwwww = i + 1;
                        this.f4420Wwwwwwwwwwwwwwwwww = list.get(i).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4419Wwwwwwwwwwwwwwwww, this.f4426Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww(), this.f4426Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f4426Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww());
                        if (this.f4420Wwwwwwwwwwwwwwwwww != null && this.f4426Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwww(this.f4420Wwwwwwwwwwwwwwwwww.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                            this.f4420Wwwwwwwwwwwwwwwwww.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4426Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(), this);
                            z = true;
                        }
                    }
                    GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    return z;
                }
                int i2 = this.f4424Wwwwwwwwwwwwwwwwwwwwww + 1;
                this.f4424Wwwwwwwwwwwwwwwwwwwwww = i2;
                if (i2 >= Wwwwwwwwwwwwwwwwwwwwww2.size()) {
                    int i3 = this.f4425Wwwwwwwwwwwwwwwwwwwwwww + 1;
                    this.f4425Wwwwwwwwwwwwwwwwwwwwwww = i3;
                    if (i3 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size()) {
                        GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        return false;
                    }
                    this.f4424Wwwwwwwwwwwwwwwwwwwwww = 0;
                }
                Key key = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(this.f4425Wwwwwwwwwwwwwwwwwwwwwww);
                Class<?> cls = Wwwwwwwwwwwwwwwwwwwwww2.get(this.f4424Wwwwwwwwwwwwwwwwwwwwww);
                this.f4418Wwwwwwwwwwwwwwww = new ResourceCacheKey(this.f4426Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), key, this.f4426Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwww(), this.f4426Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww(), this.f4426Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f4426Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwww(cls), cls, this.f4426Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww());
                File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4426Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4418Wwwwwwwwwwwwwwww);
                this.f4419Wwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    this.f4423Wwwwwwwwwwwwwwwwwwwww = key;
                    this.f4422Wwwwwwwwwwwwwwwwwwww = this.f4426Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    this.f4421Wwwwwwwwwwwwwwwwwww = 0;
                }
            }
        } catch (Throwable th) {
            GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public void cancel() {
        ModelLoader.LoadData<?> loadData = this.f4420Wwwwwwwwwwwwwwwwww;
        if (loadData != null) {
            loadData.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.cancel();
        }
    }
}
