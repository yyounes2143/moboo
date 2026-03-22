package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class DiskCacheStrategy {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DiskCacheStrategy f4328Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new DiskCacheStrategy() { // from class: com.bumptech.glide.load.engine.DiskCacheStrategy.1
        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            if (dataSource != DataSource.RESOURCE_DISK_CACHE && dataSource != DataSource.MEMORY_CACHE) {
                return true;
            }
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataSource dataSource) {
            if (dataSource == DataSource.REMOTE) {
                return true;
            }
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return true;
        }
    };

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DiskCacheStrategy f4327Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new DiskCacheStrategy() { // from class: com.bumptech.glide.load.engine.DiskCacheStrategy.2
        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataSource dataSource) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return false;
        }
    };

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DiskCacheStrategy f4326Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new DiskCacheStrategy() { // from class: com.bumptech.glide.load.engine.DiskCacheStrategy.3
        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataSource dataSource) {
            if (dataSource != DataSource.DATA_DISK_CACHE && dataSource != DataSource.MEMORY_CACHE) {
                return true;
            }
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return true;
        }
    };

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DiskCacheStrategy f4325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new DiskCacheStrategy() { // from class: com.bumptech.glide.load.engine.DiskCacheStrategy.4
        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            if (dataSource != DataSource.RESOURCE_DISK_CACHE && dataSource != DataSource.MEMORY_CACHE) {
                return true;
            }
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataSource dataSource) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return false;
        }
    };

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final DiskCacheStrategy f4324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new DiskCacheStrategy() { // from class: com.bumptech.glide.load.engine.DiskCacheStrategy.5
        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            if (((z && dataSource == DataSource.DATA_DISK_CACHE) || dataSource == DataSource.LOCAL) && encodeStrategy == EncodeStrategy.TRANSFORMED) {
                return true;
            }
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataSource dataSource) {
            if (dataSource == DataSource.REMOTE) {
                return true;
            }
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return true;
        }
    };

    public abstract boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy);

    public abstract boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataSource dataSource);

    public abstract boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    public abstract boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
}
