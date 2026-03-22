package com.google.android.engage.audio.datamodel;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* compiled from: Proguard */
@KeepForSdk
@Retention(RetentionPolicy.SOURCE)
/* loaded from: classes4.dex */
public @interface MusicAlbumType {
    public static final int TYPE_ALBUM = 1;
    public static final int TYPE_EP = 2;
    public static final int TYPE_MIXTAPE = 4;
    public static final int TYPE_SINGLE = 3;
    public static final int TYPE_UNKNOWN = 0;
}
