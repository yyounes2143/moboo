package androidx.media3.datasource.cache;

import androidx.media3.datasource.DataSpec;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    static {
        CacheKeyFactory cacheKeyFactory = CacheKeyFactory.DEFAULT;
    }

    public static /* synthetic */ String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataSpec dataSpec) {
        String str = dataSpec.key;
        if (str != null) {
            return str;
        }
        return dataSpec.uri.toString();
    }
}
