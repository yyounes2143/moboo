package com.changdu.component.webviewcache.config;

import android.content.Context;
import android.content.pm.PackageManager;
import java.io.File;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class CacheConfig {

    /* renamed from: a  reason: collision with root package name */
    public String f5388a;
    public int b;
    public long c;
    public int d;
    public MimeTypeFilter e;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        public String f5389a;
        public int b;
        public long c = 104857600;
        public int d;
        public MimeTypeFilter e;

        public Builder(Context context) {
            int i;
            int maxMemory = (int) (Runtime.getRuntime().maxMemory() / 1048576);
            int i2 = 0;
            if (maxMemory >= 512) {
                i = 15728640;
            } else if (maxMemory >= 256) {
                i = 10485760;
            } else if (maxMemory > 128) {
                i = 5242880;
            } else {
                i = 0;
            }
            this.d = i;
            this.e = new DefaultMimeTypeFilter();
            this.f5389a = context.getCacheDir() + File.separator + "CDWebViewCache";
            try {
                i2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
            this.b = i2;
        }

        public CacheConfig build() {
            CacheConfig cacheConfig = new CacheConfig();
            cacheConfig.f5388a = this.f5389a;
            cacheConfig.b = this.b;
            cacheConfig.c = this.c;
            cacheConfig.e = this.e;
            cacheConfig.d = this.d;
            return cacheConfig;
        }

        public Builder setCacheDir(String str) {
            this.f5389a = str;
            return this;
        }

        public Builder setDiskCacheSize(long j) {
            this.c = j;
            return this;
        }

        public Builder setExtensionFilter(MimeTypeFilter mimeTypeFilter) {
            this.e = mimeTypeFilter;
            return this;
        }

        public Builder setMemoryCacheSize(int i) {
            this.d = i;
            return this;
        }

        public Builder setVersion(int i) {
            this.b = i;
            return this;
        }
    }

    public String getCacheDir() {
        return this.f5388a;
    }

    public long getDiskCacheSize() {
        return this.c;
    }

    public MimeTypeFilter getFilter() {
        return this.e;
    }

    public int getMemCacheSize() {
        return this.d;
    }

    public int getVersion() {
        return this.b;
    }

    public void setVersion(int i) {
        this.b = i;
    }
}
