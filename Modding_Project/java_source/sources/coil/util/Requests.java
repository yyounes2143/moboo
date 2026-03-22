package coil.util;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import coil.request.DefaultRequestOptions;
import coil.request.ImageRequest;
import coil.size.DisplaySizeResolver;
import coil.size.Precision;
import coil.size.ViewSizeResolver;
import coil.target.ViewTarget;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a5\u0010\u0006\u001a\u0004\u0018\u00010\u0001*\u00020\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u00012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0001H\u0000¢\u0006\u0004\b\u0006\u0010\u0007\"\u001a\u0010\r\u001a\u00020\b8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0018\u0010\u0010\u001a\u00020\u000e*\u00020\u00008@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcoil/request/ImageRequest;", "Landroid/graphics/drawable/Drawable;", "drawable", "", "resId", "default", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;", "Lcoil/request/DefaultRequestOptions;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/request/DefaultRequestOptions;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/request/DefaultRequestOptions;", "DEFAULT_REQUEST_OPTIONS", "", "(Lcoil/request/ImageRequest;)Z", "allowInexactSize", "coil-base_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
@JvmName(name = "-Requests")
/* renamed from: coil.util.-Requests  reason: invalid class name */
/* loaded from: classes3.dex */
public final class Requests {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DefaultRequestOptions f2202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new DefaultRequestOptions(null, null, null, null, null, null, null, false, false, null, null, null, null, null, null, 32767, null);

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* renamed from: coil.util.-Requests$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Precision.values().length];
            iArr[Precision.EXACT.ordinal()] = 1;
            iArr[Precision.INEXACT.ordinal()] = 2;
            iArr[Precision.AUTOMATIC.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Nullable
    public static final Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @Nullable Drawable drawable, @DrawableRes @Nullable Integer num, @Nullable Drawable drawable2) {
        if (drawable == null) {
            if (num != null) {
                if (num.intValue() == 0) {
                    return null;
                }
                return Contexts.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageRequest.Wwwwwwwwwwwwwwwwwwwwwww(), num.intValue());
            }
            return drawable2;
        }
        return drawable;
    }

    @NotNull
    public static final DefaultRequestOptions Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f2202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest) {
        int i = WhenMappings.$EnumSwitchMapping$0[imageRequest.Kkkkkkkkkkkkkkkkkkkkkkkkk().ordinal()];
        if (i == 1) {
            return false;
        }
        if (i == 2) {
            return true;
        }
        if (i == 3) {
            if (imageRequest.Wwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwww() == null && (imageRequest.Kkkkkkkkkkkkkkkkkkkkkk() instanceof DisplaySizeResolver)) {
                return true;
            }
            if (!(imageRequest.Kkkkkkkkkkkkkkkkkkkk() instanceof ViewTarget) || !(imageRequest.Kkkkkkkkkkkkkkkkkkkkkk() instanceof ViewSizeResolver) || !(((ViewTarget) imageRequest.Kkkkkkkkkkkkkkkkkkkk()).getView() instanceof ImageView) || ((ViewTarget) imageRequest.Kkkkkkkkkkkkkkkkkkkk()).getView() != ((ViewSizeResolver) imageRequest.Kkkkkkkkkkkkkkkkkkkkkk()).getView()) {
                return false;
            }
            return true;
        }
        throw new NoWhenBranchMatchedException();
    }
}
