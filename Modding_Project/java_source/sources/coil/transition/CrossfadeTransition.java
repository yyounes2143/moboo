package coil.transition;

import android.graphics.drawable.Drawable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import coil.decode.DataSource;
import coil.drawable.CrossfadeDrawable;
import coil.request.ErrorResult;
import coil.request.ImageResult;
import coil.request.SuccessResult;
import coil.size.Scale;
import coil.transition.Transition;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u0001:\u0001\u001aB-\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000fR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lcoil/transition/CrossfadeTransition;", "Lcoil/transition/Transition;", "Lcoil/transition/TransitionTarget;", TypedValues.AttributesType.S_TARGET, "Lcoil/request/ImageResult;", "result", "", "durationMillis", "", "preferExactIntrinsicSize", "<init>", "(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;IZ)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Lcoil/transition/TransitionTarget;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/request/ImageResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "getDurationMillis", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "getPreferExactIntrinsicSize", "()Z", "Factory", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class CrossfadeTransition implements Transition {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f2190Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f2191Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageResult f2192Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final TransitionTarget f2193Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\r\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0014R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcoil/transition/CrossfadeTransition$Factory;", "Lcoil/transition/Transition$Factory;", "", "durationMillis", "", "preferExactIntrinsicSize", "<init>", "(IZ)V", "Lcoil/transition/TransitionTarget;", TypedValues.AttributesType.S_TARGET, "Lcoil/request/ImageResult;", "result", "Lcoil/transition/Transition;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;)Lcoil/transition/Transition;", "", "other", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "getDurationMillis", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "getPreferExactIntrinsicSize", "()Z", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Factory implements Transition.Factory {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f2194Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f2195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @JvmOverloads
        public Factory() {
            this(0, false, 3, null);
        }

        @Override // coil.transition.Transition.Factory
        @NotNull
        public Transition Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull TransitionTarget transitionTarget, @NotNull ImageResult imageResult) {
            if (!(imageResult instanceof SuccessResult)) {
                return Transition.Factory.f2198Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(transitionTarget, imageResult);
            }
            if (((SuccessResult) imageResult).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == DataSource.MEMORY_CACHE) {
                return Transition.Factory.f2198Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(transitionTarget, imageResult);
            }
            return new CrossfadeTransition(transitionTarget, imageResult, this.f2195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2194Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Factory) {
                Factory factory = (Factory) obj;
                if (this.f2195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == factory.f2195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f2194Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == factory.f2194Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public int hashCode() {
            return (this.f2195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww * 31) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f2194Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @JvmOverloads
        public Factory(int i, boolean z) {
            this.f2195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f2194Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
            if (i <= 0) {
                throw new IllegalArgumentException("durationMillis must be > 0.");
            }
        }

        public /* synthetic */ Factory(int i, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? 100 : i, (i2 & 2) != 0 ? false : z);
        }
    }

    @JvmOverloads
    public CrossfadeTransition(@NotNull TransitionTarget transitionTarget, @NotNull ImageResult imageResult, int i, boolean z) {
        this.f2193Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = transitionTarget;
        this.f2192Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = imageResult;
        this.f2191Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f2190Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        if (i > 0) {
            return;
        }
        throw new IllegalArgumentException("durationMillis must be > 0.");
    }

    @Override // coil.transition.Transition
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f2193Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f2192Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Scale Kkkkkkkkkkkkkkkkkkkkkkk2 = this.f2192Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Kkkkkkkkkkkkkkkkkkkkkkk();
        int i = this.f2191Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        ImageResult imageResult = this.f2192Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if ((imageResult instanceof SuccessResult) && ((SuccessResult) imageResult).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            z = false;
        } else {
            z = true;
        }
        CrossfadeDrawable crossfadeDrawable = new CrossfadeDrawable(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Kkkkkkkkkkkkkkkkkkkkkkk2, i, z, this.f2190Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        ImageResult imageResult2 = this.f2192Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (imageResult2 instanceof SuccessResult) {
            this.f2193Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(crossfadeDrawable);
        } else if (imageResult2 instanceof ErrorResult) {
            this.f2193Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(crossfadeDrawable);
        }
    }
}
