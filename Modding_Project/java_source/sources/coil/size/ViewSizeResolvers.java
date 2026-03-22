package coil.size;

import android.view.View;
import com.mbridge.msdk.MBridgeConstans;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a1\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroid/view/View;", "T", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "subtractPadding", "Lcoil/size/ViewSizeResolver;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;Z)Lcoil/size/ViewSizeResolver;", "coil-base_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
@JvmName(name = "ViewSizeResolvers")
/* loaded from: classes3.dex */
public final class ViewSizeResolvers {
    public static /* synthetic */ ViewSizeResolver Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view, z);
    }

    @JvmOverloads
    @JvmName(name = "create")
    @NotNull
    public static final <T extends View> ViewSizeResolver<T> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull T t, boolean z) {
        return new RealViewSizeResolver(t, z);
    }
}
