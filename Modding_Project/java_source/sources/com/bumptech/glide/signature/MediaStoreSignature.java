package com.bumptech.glide.signature;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class MediaStoreSignature implements Key {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5175Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f5176Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5177Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // com.bumptech.glide.load.Key
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MessageDigest messageDigest) {
        messageDigest.update(ByteBuffer.allocate(12).putLong(this.f5176Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).putInt(this.f5175Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).array());
        messageDigest.update(this.f5177Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getBytes(Key.f4180Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MediaStoreSignature mediaStoreSignature = (MediaStoreSignature) obj;
        if (this.f5176Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == mediaStoreSignature.f5176Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5175Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == mediaStoreSignature.f5175Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5177Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(mediaStoreSignature.f5177Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        long j = this.f5176Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        return (((this.f5177Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + ((int) (j ^ (j >>> 32)))) * 31) + this.f5175Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
