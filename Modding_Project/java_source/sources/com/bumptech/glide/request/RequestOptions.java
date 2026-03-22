package com.bumptech.glide.request;

import androidx.annotation.CheckResult;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class RequestOptions extends BaseRequestOptions<RequestOptions> {
    @NonNull
    @CheckResult
    public static RequestOptions Kkkkk(@NonNull Key key) {
        return new RequestOptions().Kkkkkkkkkkkkkkk(key);
    }

    @NonNull
    @CheckResult
    public static RequestOptions Kkkkkk(@NonNull DiskCacheStrategy diskCacheStrategy) {
        return new RequestOptions().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(diskCacheStrategy);
    }

    @NonNull
    @CheckResult
    public static RequestOptions Kkkkkkk(@NonNull Class<?> cls) {
        return new RequestOptions().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public boolean equals(Object obj) {
        if ((obj instanceof RequestOptions) && super.equals(obj)) {
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public int hashCode() {
        return super.hashCode();
    }
}
