package coil.util;

import androidx.annotation.MainThread;
import androidx.annotation.WorkerThread;
import coil.size.Size;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H'¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H'¢\u0006\u0004\b\t\u0010\n\u0082\u0001\u0002\u000b\f¨\u0006\r"}, d2 = {"Lcoil/util/HardwareBitmapService;", "", "<init>", "()V", "Lcoil/size/Size;", "size", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/size/Size;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Lcoil/util/ImmutableHardwareBitmapService;", "Lcoil/util/LimitedFileDescriptorHardwareBitmapService;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class HardwareBitmapService {
    public /* synthetic */ HardwareBitmapService(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @WorkerThread
    public abstract boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    @MainThread
    public abstract boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Size size);

    public HardwareBitmapService() {
    }
}
