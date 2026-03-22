package coil.size;

import android.content.Context;
import android.util.DisplayMetrics;
import coil.size.Dimension;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0013\u0010\u0007\u001a\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0096\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"Lcoil/size/DisplaySizeResolver;", "Lcoil/size/SizeResolver;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Lcoil/size/Size;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DisplaySizeResolver implements SizeResolver {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f2171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public DisplaySizeResolver(@NotNull Context context) {
        this.f2171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
    }

    @Override // coil.size.SizeResolver
    @Nullable
    public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Continuation<? super Size> continuation) {
        DisplayMetrics displayMetrics = this.f2171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getResources().getDisplayMetrics();
        Dimension.Pixels Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Dimensions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels));
        return new Size(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof DisplaySizeResolver) && Intrinsics.areEqual(this.f2171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, ((DisplaySizeResolver) obj).f2171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f2171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }
}
