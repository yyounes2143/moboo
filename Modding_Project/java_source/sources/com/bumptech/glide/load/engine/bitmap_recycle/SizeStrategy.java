package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.util.Util;
import java.util.NavigableMap;
/* compiled from: Proguard */
@RequiresApi(19)
/* loaded from: classes3.dex */
final class SizeStrategy implements LruPoolStrategy {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final KeyPool f4496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new KeyPool();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GroupedLinkedMap<Key, Bitmap> f4495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new GroupedLinkedMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final NavigableMap<Integer, Integer> f4494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new PrettyPrintTreeMap();

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class Key implements Poolable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f4497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final KeyPool f4498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Key(KeyPool keyPool) {
            this.f4498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = keyPool;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            this.f4497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Poolable
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f4498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Key) || this.f4497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != ((Key) obj).f4497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return this.f4497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public String toString() {
            return SizeStrategy.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class KeyPool extends BaseKeyPool<Key> {
        public Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            Key key = (Key) super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            key.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
            return key;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.BaseKeyPool
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new Key(this);
        }
    }

    private static String Wwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Util.Wwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap));
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return "[" + i + "]";
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer num) {
        Integer num2 = this.f4494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(num);
        if (num2.intValue() == 1) {
            this.f4494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(num);
        } else {
            this.f4494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap) {
        return Util.Wwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    @Nullable
    public Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, Bitmap.Config config) {
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, config);
        Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        Integer ceilingKey = this.f4494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.ceilingKey(Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2));
        if (ceilingKey != null && ceilingKey.intValue() != Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 && ceilingKey.intValue() <= Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 * 8) {
            this.f4496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ceilingKey.intValue());
        }
        Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.reconfigure(i, i2, config);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ceilingKey);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap) {
        Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4496Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Util.Wwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap));
        this.f4495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, bitmap);
        Integer num = this.f4494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f4497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        NavigableMap<Integer, Integer> navigableMap = this.f4494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Integer valueOf = Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f4497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        int i = 1;
        if (num != null) {
            i = 1 + num.intValue();
        }
        navigableMap.put(valueOf, Integer.valueOf(i));
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, Bitmap.Config config) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, config));
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    @Nullable
    public Bitmap removeLast() {
        Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer.valueOf(Util.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2)));
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public String toString() {
        return "SizeStrategy:\n  " + this.f4495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\n  SortedSizes" + this.f4494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
