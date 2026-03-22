package coil.fetch;

import android.graphics.drawable.Drawable;
import coil.decode.DataSource;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\f\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\f\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0018\u001a\u0004\b\u0011\u0010\u0019¨\u0006\u001a"}, d2 = {"Lcoil/fetch/DrawableResult;", "Lcoil/fetch/FetchResult;", "Landroid/graphics/drawable/Drawable;", "drawable", "", "isSampled", "Lcoil/decode/DataSource;", "dataSource", "<init>", "(Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;)V", "", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/drawable/Drawable;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/graphics/drawable/Drawable;", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Lcoil/decode/DataSource;", "()Lcoil/decode/DataSource;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DrawableResult extends FetchResult {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DataSource f1916Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f1917Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Drawable f1918Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public DrawableResult(@NotNull Drawable drawable, boolean z, @NotNull DataSource dataSource) {
        super(null);
        this.f1918Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = drawable;
        this.f1917Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f1916Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = dataSource;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1917Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1918Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final DataSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1916Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DrawableResult) {
            DrawableResult drawableResult = (DrawableResult) obj;
            if (Intrinsics.areEqual(this.f1918Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, drawableResult.f1918Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f1917Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == drawableResult.f1917Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f1916Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == drawableResult.f1916Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f1918Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f1917Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + this.f1916Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }
}
