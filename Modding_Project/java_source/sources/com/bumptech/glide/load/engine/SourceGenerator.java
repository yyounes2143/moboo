package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.DataFetcherGenerator;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.util.LogTime;
import j$.util.Objects;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class SourceGenerator implements DataFetcherGenerator, DataFetcherGenerator.FetcherReadyCallback {

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile DataCacheKey f4439Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile ModelLoader.LoadData<?> f4440Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile Object f4441Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile DataCacheGenerator f4442Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile int f4443Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DataFetcherGenerator.FetcherReadyCallback f4444Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DecodeHelper<?> f4445Wwwwwwwwwwwwwwwwwwwwwwwww;

    public SourceGenerator(DecodeHelper<?> decodeHelper, DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback) {
        this.f4445Wwwwwwwwwwwwwwwwwwwwwwwww = decodeHelper;
        this.f4444Wwwwwwwwwwwwwwwwwwwwwwww = fetcherReadyCallback;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(final ModelLoader.LoadData<?> loadData) {
        this.f4440Wwwwwwwwwwwwwwwwwwww.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4445Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(), new DataFetcher.DataCallback<Object>() { // from class: com.bumptech.glide.load.engine.SourceGenerator.1
            @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Object obj) {
                if (SourceGenerator.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(loadData)) {
                    SourceGenerator.this.Wwwwwwwwwwwwwwwwwwwwwwwwwww(loadData, obj);
                }
            }

            @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Exception exc) {
                if (SourceGenerator.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(loadData)) {
                    SourceGenerator.this.Wwwwwwwwwwwwwwwwwwwwwwwwww(loadData, exc);
                }
            }
        });
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(ModelLoader.LoadData<?> loadData, @NonNull Exception exc) {
        DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback = this.f4444Wwwwwwwwwwwwwwwwwwwwwwww;
        DataCacheKey dataCacheKey = this.f4439Wwwwwwwwwwwwwwwwwww;
        DataFetcher<?> dataFetcher = loadData.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        fetcherReadyCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataCacheKey, exc, dataFetcher, dataFetcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(ModelLoader.LoadData<?> loadData, Object obj) {
        DiskCacheStrategy Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4445Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (obj != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loadData.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
            this.f4441Wwwwwwwwwwwwwwwwwwwww = obj;
            this.f4444Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            return;
        }
        DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback = this.f4444Wwwwwwwwwwwwwwwwwwwwwwww;
        Key key = loadData.f4645Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        DataFetcher<?> dataFetcher = loadData.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        fetcherReadyCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key, obj, dataFetcher, dataFetcher.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f4439Wwwwwwwwwwwwwwwwwww);
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ModelLoader.LoadData<?> loadData) {
        ModelLoader.LoadData<?> loadData2 = this.f4440Wwwwwwwwwwwwwwwwwwww;
        if (loadData2 != null && loadData2 == loadData) {
            return true;
        }
        return false;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f4443Wwwwwwwwwwwwwwwwwwwwwww < this.f4445Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().size()) {
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key, Object obj, DataFetcher<?> dataFetcher, DataSource dataSource, Key key2) {
        this.f4444Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key, obj, dataFetcher, this.f4440Wwwwwwwwwwwwwwwwwwww.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), key);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) throws IOException {
        Throwable th;
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        boolean z = false;
        try {
            DataRewinder<T> Wwwwwwwwwwwwwwwwwwww2 = this.f4445Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww(obj);
            Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Encoder<X> Wwwwwwwwwwwwwwwwww2 = this.f4445Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            DataCacheWriter dataCacheWriter = new DataCacheWriter(Wwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f4445Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww());
            DataCacheKey dataCacheKey = new DataCacheKey(this.f4440Wwwwwwwwwwwwwwwwwwww.f4645Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4445Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwww());
            DiskCache Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4445Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataCacheKey, dataCacheWriter);
            if (Log.isLoggable("SourceGenerator", 2)) {
                dataCacheKey.toString();
                Objects.toString(obj);
                Objects.toString(Wwwwwwwwwwwwwwwwww2);
                LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataCacheKey) != null) {
                this.f4439Wwwwwwwwwwwwwwwwwww = dataCacheKey;
                this.f4442Wwwwwwwwwwwwwwwwwwwwww = new DataCacheGenerator(Collections.singletonList(this.f4440Wwwwwwwwwwwwwwwwwwww.f4645Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), this.f4445Wwwwwwwwwwwwwwwwwwwwwwwww, this);
                this.f4440Wwwwwwwwwwwwwwwwwwww.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                return true;
            }
            if (Log.isLoggable("SourceGenerator", 3)) {
                Objects.toString(this.f4439Wwwwwwwwwwwwwwwwwww);
                Objects.toString(obj);
            }
            try {
                this.f4444Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4440Wwwwwwwwwwwwwwwwwwww.f4645Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f4440Wwwwwwwwwwwwwwwwwwww.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4440Wwwwwwwwwwwwwwwwwwww.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f4440Wwwwwwwwwwwwwwwwwwww.f4645Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                return false;
            } catch (Throwable th2) {
                th = th2;
                z = true;
                if (!z) {
                    this.f4440Wwwwwwwwwwwwwwwwwwww.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        throw new UnsupportedOperationException();
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f4441Wwwwwwwwwwwwwwwwwwwww != null) {
            Object obj = this.f4441Wwwwwwwwwwwwwwwwwwwww;
            this.f4441Wwwwwwwwwwwwwwwwwwwww = null;
            try {
                if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj)) {
                    return true;
                }
            } catch (IOException unused) {
            }
        }
        if (this.f4442Wwwwwwwwwwwwwwwwwwwwww != null && this.f4442Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return true;
        }
        this.f4442Wwwwwwwwwwwwwwwwwwwwww = null;
        this.f4440Wwwwwwwwwwwwwwwwwwww = null;
        boolean z = false;
        while (!z && Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            List<ModelLoader.LoadData<?>> Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4445Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            int i = this.f4443Wwwwwwwwwwwwwwwwwwwwwww;
            this.f4443Wwwwwwwwwwwwwwwwwwwwwww = i + 1;
            this.f4440Wwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(i);
            if (this.f4440Wwwwwwwwwwwwwwwwwwww != null && (this.f4445Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4440Wwwwwwwwwwwwwwwwwwww.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) || this.f4445Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwww(this.f4440Wwwwwwwwwwwwwwwwwwww.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()))) {
                Wwwwwwwwwwwwwwwwwwwwwwwww(this.f4440Wwwwwwwwwwwwwwwwwwww);
                z = true;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Key key, Exception exc, DataFetcher<?> dataFetcher, DataSource dataSource) {
        this.f4444Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key, exc, dataFetcher, this.f4440Wwwwwwwwwwwwwwwwwwww.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public void cancel() {
        ModelLoader.LoadData<?> loadData = this.f4440Wwwwwwwwwwwwwwwwwwww;
        if (loadData != null) {
            loadData.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.cancel();
        }
    }
}
