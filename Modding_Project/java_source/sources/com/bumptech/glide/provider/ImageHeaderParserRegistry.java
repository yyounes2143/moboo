package com.bumptech.glide.provider;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class ImageHeaderParserRegistry {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<ImageHeaderParser> f5001Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    @NonNull
    public synchronized List<ImageHeaderParser> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5001Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull ImageHeaderParser imageHeaderParser) {
        this.f5001Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(imageHeaderParser);
    }
}
