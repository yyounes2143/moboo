package com.bumptech.glide.provider;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Encoder;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class EncoderRegistry {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Entry<?>> f4998Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class Entry<T> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Encoder<T> f4999Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Class<T> f5000Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Entry(@NonNull Class<T> cls, @NonNull Encoder<T> encoder) {
            this.f5000Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
            this.f4999Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = encoder;
        }

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<?> cls) {
            return this.f5000Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isAssignableFrom(cls);
        }
    }

    @Nullable
    public synchronized <T> Encoder<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<T> cls) {
        for (Entry<?> entry : this.f4998Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (entry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls)) {
                return (Encoder<T>) entry.f4999Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
        }
        return null;
    }

    public synchronized <T> void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Class<T> cls, @NonNull Encoder<T> encoder) {
        this.f4998Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(new Entry<>(cls, encoder));
    }
}
