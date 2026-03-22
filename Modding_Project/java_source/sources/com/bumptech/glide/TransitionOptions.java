package com.bumptech.glide;

import com.bumptech.glide.TransitionOptions;
import com.bumptech.glide.request.transition.NoTransition;
import com.bumptech.glide.request.transition.TransitionFactory;
import com.bumptech.glide.util.Util;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class TransitionOptions<CHILD extends TransitionOptions<CHILD, TranscodeType>, TranscodeType> implements Cloneable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public TransitionFactory<? super TranscodeType> f4079Wwwwwwwwwwwwwwwwwwwwwwwww = NoTransition.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    public final TransitionFactory<? super TranscodeType> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f4079Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public final CHILD clone() {
        try {
            return (CHILD) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof TransitionOptions) {
            return Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4079Wwwwwwwwwwwwwwwwwwwwwwwww, ((TransitionOptions) obj).f4079Wwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return false;
    }

    public int hashCode() {
        TransitionFactory<? super TranscodeType> transitionFactory = this.f4079Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (transitionFactory != null) {
            return transitionFactory.hashCode();
        }
        return 0;
    }
}
