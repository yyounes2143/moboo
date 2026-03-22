package coil.intercept;

import coil.request.ImageRequest;
import coil.request.ImageResult;
import coil.size.Size;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bæ\u0080\u0001\u0018\u00002\u00020\u0001:\u0001\u0007J\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\b"}, d2 = {"Lcoil/intercept/Interceptor;", "", "Lcoil/intercept/Interceptor$Chain;", "chain", "Lcoil/request/ImageResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/intercept/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Chain", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface Interceptor {

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001R\u0014\u0010\u0005\u001a\u00020\u00028&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00068&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcoil/intercept/Interceptor$Chain;", "", "Lcoil/request/ImageRequest;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/request/ImageRequest;", AdActivity.REQUEST_KEY_EXTRA, "Lcoil/size/Size;", "getSize", "()Lcoil/size/Size;", "size", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface Chain {
        @NotNull
        ImageRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        @NotNull
        Size getSize();
    }

    @Nullable
    Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Chain chain, @NotNull Continuation<? super ImageResult> continuation);
}
