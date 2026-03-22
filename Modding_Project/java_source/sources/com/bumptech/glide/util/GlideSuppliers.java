package com.bumptech.glide.util;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class GlideSuppliers {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface GlideSupplier<T> {
        T get();
    }

    public static <T> GlideSupplier<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final GlideSupplier<T> glideSupplier) {
        return new GlideSupplier<T>() { // from class: com.bumptech.glide.util.GlideSuppliers.1

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public volatile T f5198Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            @Override // com.bumptech.glide.util.GlideSuppliers.GlideSupplier
            public T get() {
                if (this.f5198Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                    synchronized (this) {
                        try {
                            if (this.f5198Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                                this.f5198Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (T) Preconditions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GlideSupplier.this.get());
                            }
                        } finally {
                        }
                    }
                }
                return this.f5198Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
        };
    }
}
