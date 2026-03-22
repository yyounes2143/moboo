package coil.map;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.DrawableRes;
import coil.request.Options;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J#\u0010\t\u001a\u0004\u0018\u00010\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000e\u001a\u00020\r2\b\b\u0001\u0010\u0006\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcoil/map/ResourceIntMapper;", "Lcoil/map/Mapper;", "", "Landroid/net/Uri;", "<init>", "()V", "data", "Lcoil/request/Options;", "options", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILcoil/request/Options;)Landroid/net/Uri;", "Landroid/content/Context;", "context", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILandroid/content/Context;)Z", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ResourceIntMapper implements Mapper<Integer, Uri> {
    @Nullable
    public Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@DrawableRes int i, @NotNull Options options) {
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, options.Wwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
            return null;
        }
        return Uri.parse("android.resource://" + options.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().getPackageName() + '/' + i);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@DrawableRes int i, Context context) {
        if (context.getResources().getResourceEntryName(i) == null) {
            return false;
        }
        return true;
    }

    @Override // coil.map.Mapper
    public /* bridge */ /* synthetic */ Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer num, Options options) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(num.intValue(), options);
    }
}
