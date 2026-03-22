package coil.util;

import coil.size.Size;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\n\u0010\u000bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\f¨\u0006\r"}, d2 = {"Lcoil/util/ImmutableHardwareBitmapService;", "Lcoil/util/HardwareBitmapService;", "", "allowHardware", "<init>", "(Z)V", "Lcoil/size/Size;", "size", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/size/Size;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Z", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
final class ImmutableHardwareBitmapService extends HardwareBitmapService {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f2218Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ImmutableHardwareBitmapService(boolean z) {
        super(null);
        this.f2218Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    @Override // coil.util.HardwareBitmapService
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2218Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // coil.util.HardwareBitmapService
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Size size) {
        return this.f2218Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
