package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.util.Preconditions;
import j$.util.Objects;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class DecodePath<DataType, ResourceType, Transcode> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f4319Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Pools.Pool<List<Throwable>> f4320Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ResourceTranscoder<ResourceType, Transcode> f4321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<? extends ResourceDecoder<DataType, ResourceType>> f4322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Class<DataType> f4323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface DecodeCallback<ResourceType> {
        @NonNull
        Resource<ResourceType> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Resource<ResourceType> resource);
    }

    public DecodePath(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends ResourceDecoder<DataType, ResourceType>> list, ResourceTranscoder<ResourceType, Transcode> resourceTranscoder, Pools.Pool<List<Throwable>> pool) {
        this.f4323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
        this.f4322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        this.f4321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resourceTranscoder;
        this.f4320Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = pool;
        this.f4319Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    @NonNull
    public final Resource<ResourceType> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataRewinder<DataType> dataRewinder, int i, int i2, @NonNull Options options, List<Throwable> list) throws GlideException {
        int size = this.f4322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        Resource<ResourceType> resource = null;
        for (int i3 = 0; i3 < size; i3++) {
            ResourceDecoder<DataType, ResourceType> resourceDecoder = this.f4322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i3);
            try {
                if (resourceDecoder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataRewinder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), options)) {
                    resource = resourceDecoder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataRewinder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), i, i2, options);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Objects.toString(resourceDecoder);
                }
                list.add(e);
            }
            if (resource != null) {
                break;
            }
        }
        if (resource != null) {
            return resource;
        }
        throw new GlideException(this.f4319Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, new ArrayList(list));
    }

    @NonNull
    public final Resource<ResourceType> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataRewinder<DataType> dataRewinder, int i, int i2, @NonNull Options options) throws GlideException {
        List<Throwable> list = (List) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4320Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.acquire());
        try {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataRewinder, i, i2, options, list);
        } finally {
            this.f4320Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.release(list);
        }
    }

    public Resource<Transcode> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataRewinder<DataType> dataRewinder, int i, int i2, @NonNull Options options, DecodeCallback<ResourceType> decodeCallback) throws GlideException {
        return this.f4321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(decodeCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataRewinder, i, i2, options)), options);
    }

    public String toString() {
        return "DecodePath{ dataClass=" + this.f4323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", decoders=" + this.f4322Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", transcoder=" + this.f4321Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + AbstractJsonLexerKt.END_OBJ;
    }
}
