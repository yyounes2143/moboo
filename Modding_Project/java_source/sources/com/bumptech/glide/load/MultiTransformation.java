package com.bumptech.glide.load;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.Resource;
import java.security.MessageDigest;
import java.util.Collection;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class MultiTransformation<T> implements Transformation<T> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Collection<? extends Transformation<T>> f4181Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // com.bumptech.glide.load.Key
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MessageDigest messageDigest) {
        for (Transformation<T> transformation : this.f4181Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            transformation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(messageDigest);
        }
    }

    @Override // com.bumptech.glide.load.Transformation
    @NonNull
    public Resource<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context, @NonNull Resource<T> resource, int i, int i2) {
        Resource<T> resource2 = resource;
        for (Transformation<T> transformation : this.f4181Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            Resource<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = transformation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, resource2, i, i2);
            if (resource2 != null && !resource2.equals(resource) && !resource2.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                resource2.recycle();
            }
            resource2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        return resource2;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        if (obj instanceof MultiTransformation) {
            return this.f4181Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(((MultiTransformation) obj).f4181Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return this.f4181Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }
}
