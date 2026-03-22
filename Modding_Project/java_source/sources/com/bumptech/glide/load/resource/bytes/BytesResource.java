package com.bumptech.glide.load.resource.bytes;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Preconditions;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class BytesResource implements Resource<byte[]> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final byte[] f4849Wwwwwwwwwwwwwwwwwwwwwwwww;

    public BytesResource(byte[] bArr) {
        this.f4849Wwwwwwwwwwwwwwwwwwwwwwwww = (byte[]) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr);
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public byte[] get() {
        return this.f4849Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    @NonNull
    public Class<byte[]> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return byte[].class;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public int getSize() {
        return this.f4849Wwwwwwwwwwwwwwwwwwwwwwwww.length;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public void recycle() {
    }
}
