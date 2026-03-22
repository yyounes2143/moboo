package coil.size;

import coil.size.Dimension;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\bJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0014\u001a\u0004\b\u0015\u0010\bR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\t\u0010\u0014\u001a\u0004\b\u0016\u0010\b¨\u0006\u0018"}, d2 = {"Lcoil/size/Size;", "", "Lcoil/size/Dimension;", "width", "height", "<init>", "(Lcoil/size/Dimension;Lcoil/size/Dimension;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/size/Dimension;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lcoil/size/Dimension;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Companion", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class Size {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Size f2175Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Dimension f2176Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Dimension f2177Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcoil/size/Size$Companion;", "", "()V", "ORIGINAL", "Lcoil/size/Size;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    static {
        Dimension.Undefined undefined = Dimension.Undefined.INSTANCE;
        f2175Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Size(undefined, undefined);
    }

    public Size(@NotNull Dimension dimension, @NotNull Dimension dimension2) {
        this.f2177Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = dimension;
        this.f2176Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = dimension2;
    }

    @NotNull
    public final Dimension Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2177Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Dimension Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2176Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Dimension Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2176Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Dimension Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2177Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Size)) {
            return false;
        }
        Size size = (Size) obj;
        if (Intrinsics.areEqual(this.f2177Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, size.f2177Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2176Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, size.f2176Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f2177Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + this.f2176Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    @NotNull
    public String toString() {
        return "Size(width=" + this.f2177Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", height=" + this.f2176Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ')';
    }
}
