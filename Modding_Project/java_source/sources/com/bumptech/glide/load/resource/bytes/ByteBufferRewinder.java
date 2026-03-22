package com.bumptech.glide.load.resource.bytes;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.data.DataRewinder;
import java.nio.ByteBuffer;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ByteBufferRewinder implements DataRewinder<ByteBuffer> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ByteBuffer f4848Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Factory implements DataRewinder.Factory<ByteBuffer> {
        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        @NonNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public DataRewinder<ByteBuffer> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ByteBuffer byteBuffer) {
            return new ByteBufferRewinder(byteBuffer);
        }

        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        @NonNull
        public Class<ByteBuffer> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return ByteBuffer.class;
        }
    }

    public ByteBufferRewinder(ByteBuffer byteBuffer) {
        this.f4848Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = byteBuffer;
    }

    @Override // com.bumptech.glide.load.data.DataRewinder
    @NonNull
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public ByteBuffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f4848Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.position(0);
        return this.f4848Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.bumptech.glide.load.data.DataRewinder
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
    }
}
