package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.util.Util;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
class AttributeStrategy implements LruPoolStrategy {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final KeyPool f4449Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new KeyPool();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GroupedLinkedMap<Key, Bitmap> f4448Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new GroupedLinkedMap<>();

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class Key implements Poolable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Bitmap.Config f4450Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f4451Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f4452Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final KeyPool f4453Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Key(KeyPool keyPool) {
            this.f4453Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = keyPool;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, Bitmap.Config config) {
            this.f4452Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f4451Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
            this.f4450Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = config;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Poolable
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f4453Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        }

        public boolean equals(Object obj) {
            if (obj instanceof Key) {
                Key key = (Key) obj;
                if (this.f4452Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == key.f4452Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f4451Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == key.f4451Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f4450Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == key.f4450Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            int i;
            int i2 = ((this.f4452Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww * 31) + this.f4451Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31;
            Bitmap.Config config = this.f4450Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (config != null) {
                i = config.hashCode();
            } else {
                i = 0;
            }
            return i2 + i;
        }

        public String toString() {
            return AttributeStrategy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4452Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4451Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4450Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class KeyPool extends BaseKeyPool<Key> {
        public Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, Bitmap.Config config) {
            Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, config);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.BaseKeyPool
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new Key(this);
        }
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, Bitmap.Config config) {
        return "[" + i + "x" + i2 + "], " + config;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap) {
        return Util.Wwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, Bitmap.Config config) {
        return this.f4448Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4449Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, config));
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap) {
        this.f4448Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4449Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, Bitmap.Config config) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, config);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public Bitmap removeLast() {
        return this.f4448Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public String toString() {
        return "AttributeStrategy:\n  " + this.f4448Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
