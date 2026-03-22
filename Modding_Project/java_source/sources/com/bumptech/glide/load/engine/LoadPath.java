package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.DecodePath;
import com.bumptech.glide.util.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class LoadPath<Data, ResourceType, Transcode> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f4409Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<? extends DecodePath<Data, ResourceType, Transcode>> f4410Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Pools.Pool<List<Throwable>> f4411Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Class<Data> f4412Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public LoadPath(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<DecodePath<Data, ResourceType, Transcode>> list, Pools.Pool<List<Throwable>> pool) {
        this.f4412Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
        this.f4411Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = pool;
        this.f4410Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (List) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list);
        this.f4409Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final Resource<Transcode> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataRewinder<Data> dataRewinder, @NonNull Options options, int i, int i2, DecodePath.DecodeCallback<ResourceType> decodeCallback, List<Throwable> list) throws GlideException {
        int size = this.f4410Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        Resource<Transcode> resource = null;
        for (int i3 = 0; i3 < size; i3++) {
            try {
                resource = this.f4410Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i3).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataRewinder, i, i2, options, decodeCallback);
            } catch (GlideException e) {
                list.add(e);
            }
            if (resource != null) {
                break;
            }
        }
        if (resource != null) {
            return resource;
        }
        throw new GlideException(this.f4409Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, new ArrayList(list));
    }

    public Resource<Transcode> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataRewinder<Data> dataRewinder, @NonNull Options options, int i, int i2, DecodePath.DecodeCallback<ResourceType> decodeCallback) throws GlideException {
        List<Throwable> list = (List) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4411Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.acquire());
        try {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataRewinder, options, i, i2, decodeCallback, list);
        } finally {
            this.f4411Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.release(list);
        }
    }

    public String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f4410Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toArray()) + AbstractJsonLexerKt.END_OBJ;
    }
}
