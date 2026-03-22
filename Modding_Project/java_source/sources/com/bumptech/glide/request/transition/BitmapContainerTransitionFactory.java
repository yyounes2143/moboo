package com.bumptech.glide.request.transition;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.request.transition.Transition;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class BitmapContainerTransitionFactory<R> implements TransitionFactory<R> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final TransitionFactory<Drawable> f5152Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public final class BitmapGlideAnimation implements Transition<R> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Transition<Drawable> f5154Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public BitmapGlideAnimation(Transition<Drawable> transition) {
            this.f5154Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = transition;
        }

        @Override // com.bumptech.glide.request.transition.Transition
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(R r, Transition.ViewAdapter viewAdapter) {
            return this.f5154Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new BitmapDrawable(viewAdapter.getView().getResources(), BitmapContainerTransitionFactory.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r)), viewAdapter);
        }
    }

    public abstract Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(R r);

    @Override // com.bumptech.glide.request.transition.TransitionFactory
    public Transition<R> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataSource dataSource, boolean z) {
        return new BitmapGlideAnimation(this.f5152Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataSource, z));
    }
}
