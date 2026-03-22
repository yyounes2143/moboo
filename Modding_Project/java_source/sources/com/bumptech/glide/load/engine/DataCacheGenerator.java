package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.DataFetcherGenerator;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.File;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class DataCacheGenerator implements DataFetcherGenerator, DataFetcher.DataCallback<Object> {

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public File f4244Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile ModelLoader.LoadData<?> f4245Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4246Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<ModelLoader<File, ?>> f4247Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Key f4248Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f4249Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DataFetcherGenerator.FetcherReadyCallback f4250Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DecodeHelper<?> f4251Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Key> f4252Wwwwwwwwwwwwwwwwwwwwwwwww;

    public DataCacheGenerator(DecodeHelper<?> decodeHelper, DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback) {
        this(decodeHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), decodeHelper, fetcherReadyCallback);
    }

    private boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f4246Wwwwwwwwwwwwwwwwwww < this.f4247Wwwwwwwwwwwwwwwwwwww.size()) {
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        this.f4250Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4248Wwwwwwwwwwwwwwwwwwwww, obj, this.f4245Wwwwwwwwwwwwwwwwww.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, DataSource.DATA_DISK_CACHE, this.f4248Wwwwwwwwwwwwwwwwwwwww);
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Exception exc) {
        this.f4250Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4248Wwwwwwwwwwwwwwwwwwwww, exc, this.f4245Wwwwwwwwwwwwwwwwww.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, DataSource.DATA_DISK_CACHE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001b, code lost:
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        r0 = r7.f4247Wwwwwwwwwwwwwwwwwwww;
        r3 = r7.f4246Wwwwwwwwwwwwwwwwwww;
        r7.f4246Wwwwwwwwwwwwwwwwwww = r3 + 1;
        r7.f4245Wwwwwwwwwwwwwwwwww = r0.get(r3).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r7.f4244Wwwwwwwwwwwwwwwww, r7.f4251Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww(), r7.f4251Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), r7.f4251Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww());
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0047, code lost:
        if (r7.f4245Wwwwwwwwwwwwwwwwww == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0057, code lost:
        if (r7.f4251Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwww(r7.f4245Wwwwwwwwwwwwwwwwww.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0059, code lost:
        r7.f4245Wwwwwwwwwwwwwwwwww.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r7.f4251Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(), r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0066, code lost:
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006d, code lost:
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0012, code lost:
        r7.f4245Wwwwwwwwwwwwwwwwww = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0015, code lost:
        if (r2 != false) goto L30;
     */
    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        /*
            r7 = this;
            java.lang.String r0 = "DataCacheGenerator.startNext"
            com.bumptech.glide.util.pool.GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)
        L5:
            java.util.List<com.bumptech.glide.load.model.ModelLoader<java.io.File, ?>> r0 = r7.f4247Wwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L6e
            boolean r0 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L68
            if (r0 != 0) goto L12
            goto L6e
        L12:
            r0 = 0
            r7.f4245Wwwwwwwwwwwwwwwwww = r0     // Catch: java.lang.Throwable -> L68
        L15:
            if (r2 != 0) goto L6a
            boolean r0 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L68
            if (r0 == 0) goto L6a
            java.util.List<com.bumptech.glide.load.model.ModelLoader<java.io.File, ?>> r0 = r7.f4247Wwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            int r3 = r7.f4246Wwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            int r4 = r3 + 1
            r7.f4246Wwwwwwwwwwwwwwwwwww = r4     // Catch: java.lang.Throwable -> L68
            java.lang.Object r0 = r0.get(r3)     // Catch: java.lang.Throwable -> L68
            com.bumptech.glide.load.model.ModelLoader r0 = (com.bumptech.glide.load.model.ModelLoader) r0     // Catch: java.lang.Throwable -> L68
            java.io.File r3 = r7.f4244Wwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            com.bumptech.glide.load.engine.DecodeHelper<?> r4 = r7.f4251Wwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            int r4 = r4.Wwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L68
            com.bumptech.glide.load.engine.DecodeHelper<?> r5 = r7.f4251Wwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            int r5 = r5.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L68
            com.bumptech.glide.load.engine.DecodeHelper<?> r6 = r7.f4251Wwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            com.bumptech.glide.load.Options r6 = r6.Wwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L68
            com.bumptech.glide.load.model.ModelLoader$LoadData r0 = r0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L68
            r7.f4245Wwwwwwwwwwwwwwwwww = r0     // Catch: java.lang.Throwable -> L68
            com.bumptech.glide.load.model.ModelLoader$LoadData<?> r0 = r7.f4245Wwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            if (r0 == 0) goto L15
            com.bumptech.glide.load.engine.DecodeHelper<?> r0 = r7.f4251Wwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            com.bumptech.glide.load.model.ModelLoader$LoadData<?> r3 = r7.f4245Wwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            com.bumptech.glide.load.data.DataFetcher<Data> r3 = r3.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            java.lang.Class r3 = r3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L68
            boolean r0 = r0.Wwwwwwwwwwwwww(r3)     // Catch: java.lang.Throwable -> L68
            if (r0 == 0) goto L15
            com.bumptech.glide.load.model.ModelLoader$LoadData<?> r0 = r7.f4245Wwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            com.bumptech.glide.load.data.DataFetcher<Data> r0 = r0.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            com.bumptech.glide.load.engine.DecodeHelper<?> r2 = r7.f4251Wwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            com.bumptech.glide.Priority r2 = r2.Wwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L68
            r0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2, r7)     // Catch: java.lang.Throwable -> L68
            r2 = r1
            goto L15
        L68:
            r0 = move-exception
            goto Lb0
        L6a:
            com.bumptech.glide.util.pool.GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            return r2
        L6e:
            int r0 = r7.f4249Wwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            int r0 = r0 + r1
            r7.f4249Wwwwwwwwwwwwwwwwwwwwww = r0     // Catch: java.lang.Throwable -> L68
            java.util.List<com.bumptech.glide.load.Key> r1 = r7.f4252Wwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            int r1 = r1.size()     // Catch: java.lang.Throwable -> L68
            if (r0 < r1) goto L7f
            com.bumptech.glide.util.pool.GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            return r2
        L7f:
            java.util.List<com.bumptech.glide.load.Key> r0 = r7.f4252Wwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            int r1 = r7.f4249Wwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> L68
            com.bumptech.glide.load.Key r0 = (com.bumptech.glide.load.Key) r0     // Catch: java.lang.Throwable -> L68
            com.bumptech.glide.load.engine.DataCacheKey r1 = new com.bumptech.glide.load.engine.DataCacheKey     // Catch: java.lang.Throwable -> L68
            com.bumptech.glide.load.engine.DecodeHelper<?> r3 = r7.f4251Wwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            com.bumptech.glide.load.Key r3 = r3.Wwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L68
            r1.<init>(r0, r3)     // Catch: java.lang.Throwable -> L68
            com.bumptech.glide.load.engine.DecodeHelper<?> r3 = r7.f4251Wwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            com.bumptech.glide.load.engine.cache.DiskCache r3 = r3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L68
            java.io.File r1 = r3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1)     // Catch: java.lang.Throwable -> L68
            r7.f4244Wwwwwwwwwwwwwwwww = r1     // Catch: java.lang.Throwable -> L68
            if (r1 == 0) goto L5
            r7.f4248Wwwwwwwwwwwwwwwwwwwww = r0     // Catch: java.lang.Throwable -> L68
            com.bumptech.glide.load.engine.DecodeHelper<?> r0 = r7.f4251Wwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L68
            java.util.List r0 = r0.Wwwwwwwwwwwwwwwwwwwwwwwww(r1)     // Catch: java.lang.Throwable -> L68
            r7.f4247Wwwwwwwwwwwwwwwwwwww = r0     // Catch: java.lang.Throwable -> L68
            r7.f4246Wwwwwwwwwwwwwwwwwww = r2     // Catch: java.lang.Throwable -> L68
            goto L5
        Lb0:
            com.bumptech.glide.util.pool.GlideTrace.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.DataCacheGenerator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww():boolean");
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public void cancel() {
        ModelLoader.LoadData<?> loadData = this.f4245Wwwwwwwwwwwwwwwwww;
        if (loadData != null) {
            loadData.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.cancel();
        }
    }

    public DataCacheGenerator(List<Key> list, DecodeHelper<?> decodeHelper, DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback) {
        this.f4249Wwwwwwwwwwwwwwwwwwwwww = -1;
        this.f4252Wwwwwwwwwwwwwwwwwwwwwwwww = list;
        this.f4251Wwwwwwwwwwwwwwwwwwwwwwww = decodeHelper;
        this.f4250Wwwwwwwwwwwwwwwwwwwwwww = fetcherReadyCallback;
    }
}
