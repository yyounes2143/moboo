package com.bumptech.glide.request.transition;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import com.bumptech.glide.request.transition.Transition;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class DrawableCrossFadeTransition implements Transition<Drawable> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f5159Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5160Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public DrawableCrossFadeTransition(int i, boolean z) {
        this.f5160Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f5159Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    @Override // com.bumptech.glide.request.transition.Transition
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Drawable drawable, Transition.ViewAdapter viewAdapter) {
        Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = viewAdapter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, drawable});
        transitionDrawable.setCrossFadeEnabled(this.f5159Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        transitionDrawable.startTransition(this.f5160Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        viewAdapter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(transitionDrawable);
        return true;
    }
}
