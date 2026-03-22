package coil.transition;

import androidx.annotation.MainThread;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import coil.request.ImageResult;
import coil.transition.NoneTransition;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bæ\u0080\u0001\u0018\u00002\u00020\u0001:\u0001\u0005J\u000f\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcoil/transition/Transition;", "", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Factory", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface Transition {

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bæ\u0080\u0001\u0018\u0000 \t2\u00020\u0001:\u0001\tJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcoil/transition/Transition$Factory;", "", "Lcoil/transition/TransitionTarget;", TypedValues.AttributesType.S_TARGET, "Lcoil/request/ImageResult;", "result", "Lcoil/transition/Transition;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;)Lcoil/transition/Transition;", "Companion", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface Factory {
        @NotNull
        public static final Companion Companion = Companion.f2199Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @JvmField
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final Factory f2198Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new NoneTransition.Factory();

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0001¨\u0006\u0005"}, d2 = {"Lcoil/transition/Transition$Factory$Companion;", "", "()V", "NONE", "Lcoil/transition/Transition$Factory;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Companion {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public static final /* synthetic */ Companion f2199Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Companion();
        }

        @NotNull
        Transition Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull TransitionTarget transitionTarget, @NotNull ImageResult imageResult);
    }

    @MainThread
    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
}
