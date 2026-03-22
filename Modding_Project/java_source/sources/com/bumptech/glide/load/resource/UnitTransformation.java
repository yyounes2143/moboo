package com.bumptech.glide.load.resource;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import java.security.MessageDigest;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class UnitTransformation<T> implements Transformation<T> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Transformation<?> f4725Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new UnitTransformation();

    @NonNull
    public static <T> UnitTransformation<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return (UnitTransformation) f4725Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.bumptech.glide.load.Key
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MessageDigest messageDigest) {
    }

    @Override // com.bumptech.glide.load.Transformation
    @NonNull
    public Resource<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context, @NonNull Resource<T> resource, int i, int i2) {
        return resource;
    }
}
