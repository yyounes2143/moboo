package com.bumptech.glide.load.engine.cache;

import android.content.Context;
import com.bumptech.glide.load.engine.cache.DiskLruCacheFactory;
import java.io.File;
/* compiled from: Proguard */
@Deprecated
/* loaded from: classes3.dex */
public final class ExternalCacheDiskCacheFactory extends DiskLruCacheFactory {

    /* compiled from: Proguard */
    /* renamed from: com.bumptech.glide.load.engine.cache.ExternalCacheDiskCacheFactory$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements DiskLruCacheFactory.CacheDirectoryGetter {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ String f4514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ Context f4515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.CacheDirectoryGetter
        public File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            File externalCacheDir = this.f4515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getExternalCacheDir();
            if (externalCacheDir == null) {
                return null;
            }
            if (this.f4514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                return new File(externalCacheDir, this.f4514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            return externalCacheDir;
        }
    }
}
