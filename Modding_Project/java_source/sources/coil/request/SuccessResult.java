package coil.request;

import android.graphics.drawable.Drawable;
import coil.decode.DataSource;
import coil.memory.MemoryCache;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0018\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0096\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u0018\u0010\u001aR\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001b\u0010\u001dR\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b\u001e\u0010 R\u0019\u0010\t\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u0017\u0010\r\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b\r\u0010+R\u0017\u0010\u000e\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b,\u0010*\u001a\u0004\b!\u0010+¨\u0006-"}, d2 = {"Lcoil/request/SuccessResult;", "Lcoil/request/ImageResult;", "Landroid/graphics/drawable/Drawable;", "drawable", "Lcoil/request/ImageRequest;", AdActivity.REQUEST_KEY_EXTRA, "Lcoil/decode/DataSource;", "dataSource", "Lcoil/memory/MemoryCache$Key;", "memoryCacheKey", "", "diskCacheKey", "", "isSampled", "isPlaceholderCached", "<init>", "(Landroid/graphics/drawable/Drawable;Lcoil/request/ImageRequest;Lcoil/decode/DataSource;Lcoil/memory/MemoryCache$Key;Ljava/lang/String;ZZ)V", "", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/drawable/Drawable;", "()Landroid/graphics/drawable/Drawable;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/request/ImageRequest;", "()Lcoil/request/ImageRequest;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/decode/DataSource;", "()Lcoil/decode/DataSource;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/memory/MemoryCache$Key;", "getMemoryCacheKey", "()Lcoil/memory/MemoryCache$Key;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "getDiskCacheKey", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SuccessResult extends ImageResult {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f2149Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f2150Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2151Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MemoryCache.Key f2152Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DataSource f2153Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageRequest f2154Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Drawable f2155Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public SuccessResult(@NotNull Drawable drawable, @NotNull ImageRequest imageRequest, @NotNull DataSource dataSource, @Nullable MemoryCache.Key key, @Nullable String str, boolean z, boolean z2) {
        super(null);
        this.f2155Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = drawable;
        this.f2154Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = imageRequest;
        this.f2153Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = dataSource;
        this.f2152Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = key;
        this.f2151Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f2150Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f2149Wwwwwwwwwwwwwwwwwwwwwwwwwwww = z2;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2149Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final DataSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2153Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // coil.request.ImageResult
    @NotNull
    public ImageRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2154Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // coil.request.ImageResult
    @NotNull
    public Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2155Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SuccessResult) {
            SuccessResult successResult = (SuccessResult) obj;
            if (Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), successResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) && Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), successResult.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) && this.f2153Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == successResult.f2153Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && Intrinsics.areEqual(this.f2152Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, successResult.f2152Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f2151Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, successResult.f2151Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f2150Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == successResult.f2150Wwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f2149Wwwwwwwwwwwwwwwwwwwwwwwwwwww == successResult.f2149Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int i;
        int hashCode = ((((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().hashCode() * 31) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().hashCode()) * 31) + this.f2153Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31;
        MemoryCache.Key key = this.f2152Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i2 = 0;
        if (key != null) {
            i = key.hashCode();
        } else {
            i = 0;
        }
        int i3 = (hashCode + i) * 31;
        String str = this.f2151Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (str != null) {
            i2 = str.hashCode();
        }
        return ((((i3 + i2) * 31) + androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f2150Wwwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + androidx.privacysandbox.ads.adservices.adid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f2149Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }
}
