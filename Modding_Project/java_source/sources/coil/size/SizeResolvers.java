package coil.size;

import kotlin.Metadata;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil/size/Size;", "size", "Lcoil/size/SizeResolver;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/size/Size;)Lcoil/size/SizeResolver;", "coil-base_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
@JvmName(name = "SizeResolvers")
/* loaded from: classes3.dex */
public final class SizeResolvers {
    @JvmName(name = "create")
    @NotNull
    public static final SizeResolver Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Size size) {
        return new RealSizeResolver(size);
    }
}
