package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import java.nio.charset.Charset;
import java.security.MessageDigest;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface Key {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Charset f4180Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Charset.forName("UTF-8");

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull MessageDigest messageDigest);

    boolean equals(Object obj);

    int hashCode();
}
