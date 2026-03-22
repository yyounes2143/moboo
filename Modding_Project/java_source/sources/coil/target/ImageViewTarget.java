package coil.target;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.mbridge.msdk.MBridgeConstans;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nR\u001a\u0010\u000f\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR(\u0010\u0016\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00108V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcoil/target/ImageViewTarget;", "Lcoil/target/GenericViewTarget;", "Landroid/widget/ImageView;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "Wwwwwwwwwwwwwwwwwwwwwwww", "Landroid/widget/ImageView;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/widget/ImageView;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/graphics/drawable/Drawable;", "value", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/graphics/drawable/Drawable;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/drawable/Drawable;)V", "drawable", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public class ImageViewTarget extends GenericViewTarget<ImageView> {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageView f2183Wwwwwwwwwwwwwwwwwwwwwwww;

    @Override // coil.target.ViewTarget
    @NotNull
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww */
    public ImageView getView() {
        return this.f2183Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // coil.target.GenericViewTarget
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
        getView().setImageDrawable(drawable);
    }

    @Override // coil.target.GenericViewTarget, coil.transition.TransitionTarget
    @Nullable
    public Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return getView().getDrawable();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof ImageViewTarget) && Intrinsics.areEqual(getView(), ((ImageViewTarget) obj).getView())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return getView().hashCode();
    }
}
