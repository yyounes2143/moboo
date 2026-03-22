package coil.transition;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import coil.request.ErrorResult;
import coil.request.ImageResult;
import coil.request.SuccessResult;
import coil.transition.Transition;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001:\u0001\u000eB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000bR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcoil/transition/NoneTransition;", "Lcoil/transition/Transition;", "Lcoil/transition/TransitionTarget;", TypedValues.AttributesType.S_TARGET, "Lcoil/request/ImageResult;", "result", "<init>", "(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Lcoil/transition/TransitionTarget;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/request/ImageResult;", "Factory", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class NoneTransition implements Transition {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageResult f2196Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final TransitionTarget f2197Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0096\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcoil/transition/NoneTransition$Factory;", "Lcoil/transition/Transition$Factory;", "<init>", "()V", "Lcoil/transition/TransitionTarget;", TypedValues.AttributesType.S_TARGET, "Lcoil/request/ImageResult;", "result", "Lcoil/transition/Transition;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;)Lcoil/transition/Transition;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Factory implements Transition.Factory {
        @Override // coil.transition.Transition.Factory
        @NotNull
        public Transition Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull TransitionTarget transitionTarget, @NotNull ImageResult imageResult) {
            return new NoneTransition(transitionTarget, imageResult);
        }

        public boolean equals(@Nullable Object obj) {
            return obj instanceof Factory;
        }

        public int hashCode() {
            return Factory.class.hashCode();
        }
    }

    public NoneTransition(@NotNull TransitionTarget transitionTarget, @NotNull ImageResult imageResult) {
        this.f2197Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = transitionTarget;
        this.f2196Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = imageResult;
    }

    @Override // coil.transition.Transition
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        ImageResult imageResult = this.f2196Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (imageResult instanceof SuccessResult) {
            this.f2197Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(((SuccessResult) imageResult).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        } else if (imageResult instanceof ErrorResult) {
            this.f2197Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
    }
}
