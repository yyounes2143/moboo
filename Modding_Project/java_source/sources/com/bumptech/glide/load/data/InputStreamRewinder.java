package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class InputStreamRewinder implements DataRewinder<InputStream> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RecyclableBufferedInputStream f4210Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class Factory implements DataRewinder.Factory<InputStream> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ArrayPool f4211Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Factory(ArrayPool arrayPool) {
            this.f4211Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayPool;
        }

        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        @NonNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public DataRewinder<InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream) {
            return new InputStreamRewinder(inputStream, this.f4211Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        @NonNull
        public Class<InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return InputStream.class;
        }
    }

    public InputStreamRewinder(InputStream inputStream, ArrayPool arrayPool) {
        RecyclableBufferedInputStream recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, arrayPool);
        this.f4210Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = recyclableBufferedInputStream;
        recyclableBufferedInputStream.mark(5242880);
    }

    @Override // com.bumptech.glide.load.data.DataRewinder
    @NonNull
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public InputStream Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        this.f4210Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.reset();
        return this.f4210Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4210Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // com.bumptech.glide.load.data.DataRewinder
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4210Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.release();
    }
}
