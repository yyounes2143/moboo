package coil.decode;

import android.graphics.drawable.Drawable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u000e\u0010\u0010R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0011\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcoil/decode/DecodeResult;", "", "Landroid/graphics/drawable/Drawable;", "drawable", "", "isSampled", "<init>", "(Landroid/graphics/drawable/Drawable;Z)V", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/drawable/Drawable;", "()Landroid/graphics/drawable/Drawable;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "()Z", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DecodeResult {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f1820Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Drawable f1821Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public DecodeResult(@NotNull Drawable drawable, boolean z) {
        this.f1821Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = drawable;
        this.f1820Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1820Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1821Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DecodeResult) {
            DecodeResult decodeResult = (DecodeResult) obj;
            if (Intrinsics.areEqual(this.f1821Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, decodeResult.f1821Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f1820Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == decodeResult.f1820Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return (this.f1821Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1820Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }
}
