package coil.util;

import coil.size.Dimension;
import coil.size.Size;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\r¨\u0006\u000f"}, d2 = {"Lcoil/util/LimitedFileDescriptorHardwareBitmapService;", "Lcoil/util/HardwareBitmapService;", "Lcoil/util/Logger;", "logger", "<init>", "(Lcoil/util/Logger;)V", "Lcoil/size/Size;", "size", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/size/Size;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Lcoil/util/Logger;", "Companion", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
final class LimitedFileDescriptorHardwareBitmapService extends HardwareBitmapService {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Logger f2219Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcoil/util/LimitedFileDescriptorHardwareBitmapService$Companion;", "", "()V", "MIN_SIZE_DIMENSION", "", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public LimitedFileDescriptorHardwareBitmapService(@Nullable Logger logger) {
        super(null);
        this.f2219Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = logger;
    }

    @Override // coil.util.HardwareBitmapService
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return FileDescriptorCounter.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f2219Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // coil.util.HardwareBitmapService
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Size size) {
        int i;
        Dimension Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = size.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        int i2 = Integer.MAX_VALUE;
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof Dimension.Pixels) {
            i = ((Dimension.Pixels) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).f2170Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            i = Integer.MAX_VALUE;
        }
        if (i > 100) {
            Dimension Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = size.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof Dimension.Pixels) {
                i2 = ((Dimension.Pixels) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).f2170Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if (i2 > 100) {
                return true;
            }
            return false;
        }
        return false;
    }
}
