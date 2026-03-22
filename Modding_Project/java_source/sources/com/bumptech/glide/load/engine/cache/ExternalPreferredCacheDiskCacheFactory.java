package com.bumptech.glide.load.engine.cache;

import android.content.Context;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.cache.DiskLruCacheFactory;
import java.io.File;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class ExternalPreferredCacheDiskCacheFactory extends DiskLruCacheFactory {

    /* compiled from: Proguard */
    /* renamed from: com.bumptech.glide.load.engine.cache.ExternalPreferredCacheDiskCacheFactory$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements DiskLruCacheFactory.CacheDirectoryGetter {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ String f4516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ Context f4517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Nullable
        public final File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            File cacheDir = this.f4517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getCacheDir();
            if (cacheDir == null) {
                return null;
            }
            if (this.f4516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                return new File(cacheDir, this.f4516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            return cacheDir;
        }

        @Override // com.bumptech.glide.load.engine.cache.DiskLruCacheFactory.CacheDirectoryGetter
        public File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.exists()) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            File externalCacheDir = this.f4517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getExternalCacheDir();
            if (externalCacheDir != null && externalCacheDir.canWrite()) {
                if (this.f4516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                    return new File(externalCacheDir, this.f4516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
                return externalCacheDir;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
    }
}
