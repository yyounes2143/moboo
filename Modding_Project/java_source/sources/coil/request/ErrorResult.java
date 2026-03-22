package coil.request;

import android.graphics.drawable.Drawable;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0012\u0010\u0014R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0015\u0010\u0017R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u0018\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcoil/request/ErrorResult;", "Lcoil/request/ImageResult;", "Landroid/graphics/drawable/Drawable;", "drawable", "Lcoil/request/ImageRequest;", AdActivity.REQUEST_KEY_EXTRA, "", "throwable", "<init>", "(Landroid/graphics/drawable/Drawable;Lcoil/request/ImageRequest;Ljava/lang/Throwable;)V", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/drawable/Drawable;", "()Landroid/graphics/drawable/Drawable;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/request/ImageRequest;", "()Lcoil/request/ImageRequest;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Throwable;", "()Ljava/lang/Throwable;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ErrorResult extends ImageResult {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Throwable f2034Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageRequest f2035Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Drawable f2036Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ErrorResult(@Nullable Drawable drawable, @NotNull ImageRequest imageRequest, @NotNull Throwable th) {
        super(null);
        this.f2036Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = drawable;
        this.f2035Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = imageRequest;
        this.f2034Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = th;
    }

    @NotNull
    public final Throwable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2034Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // coil.request.ImageResult
    @NotNull
    public ImageRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2035Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // coil.request.ImageResult
    @Nullable
    public Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2036Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ErrorResult) {
            ErrorResult errorResult = (ErrorResult) obj;
            if (Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), errorResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) && Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), errorResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) && Intrinsics.areEqual(this.f2034Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, errorResult.f2034Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int i;
        Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            i = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.hashCode();
        } else {
            i = 0;
        }
        return (((i * 31) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().hashCode()) * 31) + this.f2034Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }
}
