package com.fluttercandies.photo_manager.core.utils;

import android.content.ContentUris;
import android.net.Uri;
import android.provider.MediaStore;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/fluttercandies/photo_manager/core/utils/MediaStoreUtils;", "", "<init>", "()V", "", "mediaType", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Landroid/net/Uri;", "", "id", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(JI)Landroid/net/Uri;", "type", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)I", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class MediaStoreUtils {
    @NotNull
    public static final MediaStoreUtils INSTANCE = new MediaStoreUtils();

    @NotNull
    public final Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, int i) {
        return ContentUris.withAppendedId(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i), j);
    }

    @NotNull
    public final Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return IDBUtils.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                return MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
            }
            return MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
        }
        return MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        int i2 = 1;
        if (i != 1) {
            i2 = 3;
            if (i != 2) {
                if (i == 3) {
                    return 2;
                }
                return 0;
            }
        }
        return i2;
    }
}
