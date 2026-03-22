package androidx.media3.datasource.cache;

import android.net.Uri;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    @Nullable
    public static Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ContentMetadata contentMetadata) {
        String str = contentMetadata.get(ContentMetadata.KEY_REDIRECTED_URI, (String) null);
        if (str == null) {
            return null;
        }
        return Uri.parse(str);
    }

    public static long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ContentMetadata contentMetadata) {
        return contentMetadata.get(ContentMetadata.KEY_CONTENT_LENGTH, -1L);
    }
}
