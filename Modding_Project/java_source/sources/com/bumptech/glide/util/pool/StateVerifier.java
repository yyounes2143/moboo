package com.bumptech.glide.util.pool;

import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class StateVerifier {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class DebugStateVerifier extends StateVerifier {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public volatile RuntimeException f5220Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public DebugStateVerifier() {
            super();
        }

        @Override // com.bumptech.glide.util.pool.StateVerifier
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (this.f5220Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                return;
            }
            throw new IllegalStateException("Already released", this.f5220Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @Override // com.bumptech.glide.util.pool.StateVerifier
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            if (z) {
                this.f5220Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new RuntimeException("Released");
            } else {
                this.f5220Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class DefaultStateVerifier extends StateVerifier {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public volatile boolean f5221Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public DefaultStateVerifier() {
            super();
        }

        @Override // com.bumptech.glide.util.pool.StateVerifier
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (!this.f5221Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return;
            }
            throw new IllegalStateException("Already released");
        }

        @Override // com.bumptech.glide.util.pool.StateVerifier
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            this.f5221Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }
    }

    @NonNull
    public static StateVerifier Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new DefaultStateVerifier();
    }

    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z);

    public StateVerifier() {
    }
}
