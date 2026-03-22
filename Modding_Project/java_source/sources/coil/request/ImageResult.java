package coil.request;

import android.graphics.drawable.Drawable;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00048&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n\u0082\u0001\u0002\f\r¨\u0006\u000e"}, d2 = {"Lcoil/request/ImageResult;", "", "<init>", "()V", "Landroid/graphics/drawable/Drawable;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/graphics/drawable/Drawable;", "drawable", "Lcoil/request/ImageRequest;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/request/ImageRequest;", AdActivity.REQUEST_KEY_EXTRA, "Lcoil/request/ErrorResult;", "Lcoil/request/SuccessResult;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class ImageResult {
    public /* synthetic */ ImageResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @NotNull
    public abstract ImageRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    @Nullable
    public abstract Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    public ImageResult() {
    }
}
