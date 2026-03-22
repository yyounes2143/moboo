package com.bumptech.glide.provider;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.ResourceEncoder;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ResourceEncoderRegistry {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Entry<?>> f5012Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class Entry<T> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ResourceEncoder<T> f5013Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Class<T> f5014Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Entry(@NonNull Class<T> cls, @NonNull ResourceEncoder<T> resourceEncoder) {
            this.f5014Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
            this.f5013Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resourceEncoder;
        }

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<?> cls) {
            return this.f5014Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isAssignableFrom(cls);
        }
    }

    @Nullable
    public synchronized <Z> ResourceEncoder<Z> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<Z> cls) {
        int size = this.f5012Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        for (int i = 0; i < size; i++) {
            Entry<?> entry = this.f5012Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i);
            if (entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls)) {
                return (ResourceEncoder<Z>) entry.f5013Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
        }
        return null;
    }

    public synchronized <Z> void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<Z> cls, @NonNull ResourceEncoder<Z> resourceEncoder) {
        this.f5012Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(new Entry<>(cls, resourceEncoder));
    }
}
