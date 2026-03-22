package androidx.core.provider;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import androidx.core.provider.FontProvider;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    public static FontProvider.ContentQueryWrapper Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Uri uri) {
        if (Build.VERSION.SDK_INT < 24) {
            return new FontProvider.ContentQueryWrapperApi16Impl(context, uri);
        }
        return new FontProvider.ContentQueryWrapperApi24Impl(context, uri);
    }
}
