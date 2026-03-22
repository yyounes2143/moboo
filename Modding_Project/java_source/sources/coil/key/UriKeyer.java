package coil.key;

import android.net.Uri;
import coil.request.Options;
import coil.util.Utils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcoil/key/UriKeyer;", "Lcoil/key/Keyer;", "Landroid/net/Uri;", "<init>", "()V", "data", "Lcoil/request/Options;", "options", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;Lcoil/request/Options;)Ljava/lang/String;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UriKeyer implements Keyer<Uri> {
    @Override // coil.key.Keyer
    @NotNull
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Uri uri, @NotNull Options options) {
        if (Intrinsics.areEqual(uri.getScheme(), "android.resource")) {
            StringBuilder sb = new StringBuilder();
            sb.append(uri);
            sb.append('-');
            sb.append(Utils.Wwwwwwwwwwwwwwwwwwwwwww(options.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().getResources().getConfiguration()));
            return sb.toString();
        }
        return uri.toString();
    }
}
