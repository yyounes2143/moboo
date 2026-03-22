package coil.map;

import android.net.Uri;
import coil.request.Options;
import coil.util.Utils;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcoil/map/FileUriMapper;", "Lcoil/map/Mapper;", "Landroid/net/Uri;", "Ljava/io/File;", "<init>", "()V", "data", "Lcoil/request/Options;", "options", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;Lcoil/request/Options;)Ljava/io/File;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Uri;)Z", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FileUriMapper implements Mapper<Uri, File> {
    @Override // coil.map.Mapper
    @Nullable
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Uri uri, @NotNull Options options) {
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri)) {
            return null;
        }
        if (uri.getScheme() != null) {
            uri = uri.buildUpon().scheme(null).build();
        }
        return new File(uri.toString());
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri) {
        String scheme;
        if (!Utils.Wwwwwwwwwwwwwwwww(uri) && ((scheme = uri.getScheme()) == null || Intrinsics.areEqual(scheme, "file"))) {
            String path = uri.getPath();
            if (path == null) {
                path = "";
            }
            if (StringsKt.startsWith$default((CharSequence) path, '/', false, 2, (Object) null) && Utils.Wwwwwwwwwwwwwwwwwwwwwwwwww(uri) != null) {
                return true;
            }
        }
        return false;
    }
}
