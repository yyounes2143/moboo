package coil.fetch;

import coil.decode.DataSource;
import coil.decode.ImageSource;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0012\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcoil/fetch/SourceResult;", "Lcoil/fetch/FetchResult;", "Lcoil/decode/ImageSource;", "source", "", "mimeType", "Lcoil/decode/DataSource;", "dataSource", "<init>", "(Lcoil/decode/ImageSource;Ljava/lang/String;Lcoil/decode/DataSource;)V", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/decode/ImageSource;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/decode/ImageSource;", "Ljava/lang/String;", "getMimeType", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/decode/DataSource;", "()Lcoil/decode/DataSource;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SourceResult extends FetchResult {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DataSource f1932Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f1933Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageSource f1934Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public SourceResult(@NotNull ImageSource imageSource, @Nullable String str, @NotNull DataSource dataSource) {
        super(null);
        this.f1934Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = imageSource;
        this.f1933Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f1932Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = dataSource;
    }

    @NotNull
    public final ImageSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1934Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final DataSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1932Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SourceResult) {
            SourceResult sourceResult = (SourceResult) obj;
            if (Intrinsics.areEqual(this.f1934Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, sourceResult.f1934Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f1933Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, sourceResult.f1933Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f1932Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == sourceResult.f1932Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int i;
        int hashCode = this.f1934Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31;
        String str = this.f1933Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return ((hashCode + i) * 31) + this.f1932Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }
}
