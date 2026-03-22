package coil.size;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import coil.size.Dimension;
import coil.size.ViewSizeResolver;
import com.mbridge.msdk.MBridgeConstans;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\bf\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003J)\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0011\u0010\u000b\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0010\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u0010\u0010\fJ\u001b\u0010\u0015\u001a\u00020\u0014*\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0019\u001a\u00028\u00008&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcoil/size/ViewSizeResolver;", "Landroid/view/View;", "T", "Lcoil/size/SizeResolver;", "", "paramSize", "viewSize", "paddingSize", "Lcoil/size/Dimension;", "getDimension", "(III)Lcoil/size/Dimension;", "getHeight", "()Lcoil/size/Dimension;", "Lcoil/size/Size;", "getSize", "()Lcoil/size/Size;", "getWidth", "Landroid/view/ViewTreeObserver;", "Landroid/view/ViewTreeObserver$OnPreDrawListener;", "victim", "", "removePreDrawListenerSafe", "(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V", "getView", "()Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "subtractPadding", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface ViewSizeResolver<T extends View> extends SizeResolver {

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        /* JADX WARN: Type inference failed for: r2v1, types: [android.view.ViewTreeObserver$OnPreDrawListener, coil.size.ViewSizeResolver$size$3$preDrawListener$1] */
        @Nullable
        public static <T extends View> Object Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final ViewSizeResolver<T> viewSizeResolver, @NotNull Continuation<? super Size> continuation) {
            Size Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(viewSizeResolver);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            final ViewTreeObserver viewTreeObserver = viewSizeResolver.getView().getViewTreeObserver();
            final ?? r2 = new ViewTreeObserver.OnPreDrawListener() { // from class: coil.size.ViewSizeResolver$size$3$preDrawListener$1

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public boolean f2181Wwwwwwwwwwwwwwwwwwwwwwwww;

                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    Size Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = ViewSizeResolver.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(viewSizeResolver);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                        ViewSizeResolver.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(viewSizeResolver, viewTreeObserver, this);
                        if (!this.f2181Wwwwwwwwwwwwwwwwwwwwwwwww) {
                            this.f2181Wwwwwwwwwwwwwwwwwwwwwwwww = true;
                            cancellableContinuationImpl.resumeWith(Result.m438constructorimpl(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3));
                        }
                    }
                    return true;
                }
            };
            viewTreeObserver.addOnPreDrawListener(r2);
            cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: coil.size.ViewSizeResolver$size$3$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Throwable th) {
                    ViewSizeResolver.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(viewSizeResolver, viewTreeObserver, r2);
                }
            });
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return result;
        }

        public static <T extends View> void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewSizeResolver<T> viewSizeResolver, ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnPreDrawListener onPreDrawListener) {
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            } else {
                viewSizeResolver.getView().getViewTreeObserver().removeOnPreDrawListener(onPreDrawListener);
            }
        }

        public static <T extends View> Dimension Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewSizeResolver<T> viewSizeResolver) {
            int i;
            int i2;
            ViewGroup.LayoutParams layoutParams = viewSizeResolver.getView().getLayoutParams();
            if (layoutParams != null) {
                i = layoutParams.width;
            } else {
                i = -1;
            }
            int width = viewSizeResolver.getView().getWidth();
            if (viewSizeResolver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                i2 = viewSizeResolver.getView().getPaddingLeft() + viewSizeResolver.getView().getPaddingRight();
            } else {
                i2 = 0;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(viewSizeResolver, i, width, i2);
        }

        public static <T extends View> Size Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewSizeResolver<T> viewSizeResolver) {
            Dimension Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            Dimension Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(viewSizeResolver);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null || (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(viewSizeResolver)) == null) {
                return null;
            }
            return new Size(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }

        public static <T extends View> Dimension Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewSizeResolver<T> viewSizeResolver) {
            int i;
            int i2;
            ViewGroup.LayoutParams layoutParams = viewSizeResolver.getView().getLayoutParams();
            if (layoutParams != null) {
                i = layoutParams.height;
            } else {
                i = -1;
            }
            int height = viewSizeResolver.getView().getHeight();
            if (viewSizeResolver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                i2 = viewSizeResolver.getView().getPaddingTop() + viewSizeResolver.getView().getPaddingBottom();
            } else {
                i2 = 0;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(viewSizeResolver, i, height, i2);
        }

        public static <T extends View> Dimension Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewSizeResolver<T> viewSizeResolver, int i, int i2, int i3) {
            if (i == -2) {
                return Dimension.Undefined.INSTANCE;
            }
            int i4 = i - i3;
            if (i4 > 0) {
                return Dimensions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i4);
            }
            int i5 = i2 - i3;
            if (i5 > 0) {
                return Dimensions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i5);
            }
            return null;
        }
    }

    boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    @NotNull
    T getView();
}
