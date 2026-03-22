package com.bumptech.glide.request.transition;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.DataSource;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class DrawableCrossFadeFactory implements TransitionFactory<Drawable> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public DrawableCrossFadeTransition f5155Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f5156Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5157Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f5158Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder() {
            this(300);
        }

        public Builder(int i) {
            this.f5158Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        }
    }

    public final Transition<Drawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f5155Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f5155Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new DrawableCrossFadeTransition(this.f5157Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f5156Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return this.f5155Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.bumptech.glide.request.transition.TransitionFactory
    public Transition<Drawable> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataSource dataSource, boolean z) {
        if (dataSource == DataSource.MEMORY_CACHE) {
            return NoTransition.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
