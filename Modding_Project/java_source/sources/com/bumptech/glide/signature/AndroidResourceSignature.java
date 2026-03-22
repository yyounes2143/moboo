package com.bumptech.glide.signature;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AndroidResourceSignature implements Key {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Key f5171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5172Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public AndroidResourceSignature(int i, Key key) {
        this.f5172Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f5171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = key;
    }

    @NonNull
    public static Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context) {
        return new AndroidResourceSignature(context.getResources().getConfiguration().uiMode & 48, ApplicationVersionSignature.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context));
    }

    @Override // com.bumptech.glide.load.Key
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MessageDigest messageDigest) {
        this.f5171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f5172Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).array());
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof AndroidResourceSignature) {
            AndroidResourceSignature androidResourceSignature = (AndroidResourceSignature) obj;
            if (this.f5172Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == androidResourceSignature.f5172Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f5171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(androidResourceSignature.f5171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return Util.Wwwwwwwwwwwwwwwwwww(this.f5171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f5172Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }
}
