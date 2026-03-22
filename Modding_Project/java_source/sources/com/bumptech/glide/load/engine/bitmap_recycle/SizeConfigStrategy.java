package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.util.Util;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
@RequiresApi(19)
/* loaded from: classes3.dex */
public class SizeConfigStrategy implements LruPoolStrategy {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Bitmap.Config[] f4482Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Bitmap.Config[] f4483Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Bitmap.Config[] f4484Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Bitmap.Config[] f4485Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Bitmap.Config[] f4486Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final KeyPool f4489Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new KeyPool();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GroupedLinkedMap<Key, Bitmap> f4488Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new GroupedLinkedMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f4487Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap();

    /* compiled from: Proguard */
    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ int[] f4490Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f4490Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4490Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4490Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4490Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class Key implements Poolable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Bitmap.Config f4491Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f4492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final KeyPool f4493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Key(KeyPool keyPool) {
            this.f4493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = keyPool;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Bitmap.Config config) {
            this.f4492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f4491Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = config;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Poolable
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f4493Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        }

        public boolean equals(Object obj) {
            if (obj instanceof Key) {
                Key key = (Key) obj;
                if (this.f4492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == key.f4492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4491Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, key.f4491Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            int i;
            int i2 = this.f4492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww * 31;
            Bitmap.Config config = this.f4491Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (config != null) {
                i = config.hashCode();
            } else {
                i = 0;
            }
            return i2 + i;
        }

        public String toString() {
            return SizeConfigStrategy.Wwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f4491Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* compiled from: Proguard */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class KeyPool extends BaseKeyPool<Key> {
        public Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Bitmap.Config config) {
            Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, config);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.BaseKeyPool
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new Key(this);
        }
    }

    static {
        Bitmap.Config config;
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            config = Bitmap.Config.RGBA_F16;
            configArr[configArr.length - 1] = config;
        }
        f4486Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = configArr;
        f4485Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = configArr;
        f4484Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f4483Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f4482Wwwwwwwwwwwwwwwwwwwwwwwwwww = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    public static Bitmap.Config[] Wwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap.Config config) {
        Bitmap.Config config2;
        if (Build.VERSION.SDK_INT >= 26) {
            config2 = Bitmap.Config.RGBA_F16;
            if (config2.equals(config)) {
                return f4485Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
        }
        int i = AnonymousClass1.f4490Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[config.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return i != 4 ? new Bitmap.Config[]{config} : f4482Wwwwwwwwwwwwwwwwwwwwwwwwwww;
                }
                return f4483Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            return f4484Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        return f4486Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Bitmap.Config config) {
        return "[" + i + "](" + config + ")";
    }

    public final NavigableMap<Integer, Integer> Wwwwwwwwwwwwwwwwwwwwwwwww(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f4487Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(config);
        if (navigableMap == null) {
            TreeMap treeMap = new TreeMap();
            this.f4487Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(config, treeMap);
            return treeMap;
        }
        return navigableMap;
    }

    public final Key Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Bitmap.Config config) {
        Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4489Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, config);
        Bitmap.Config[] Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww(config);
        int length = Wwwwwwwwwwwwwwwwwwwwwwwwww2.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            Bitmap.Config config2 = Wwwwwwwwwwwwwwwwwwwwwwwwww2[i2];
            Integer ceilingKey = Wwwwwwwwwwwwwwwwwwwwwwwww(config2).ceilingKey(Integer.valueOf(i));
            if (ceilingKey != null && ceilingKey.intValue() <= i * 8) {
                if (ceilingKey.intValue() != i || (config2 != null ? !config2.equals(config) : config != null)) {
                    this.f4489Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    return this.f4489Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ceilingKey.intValue(), config2);
                }
            } else {
                i2++;
            }
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww(bitmap.getConfig());
        Integer num2 = Wwwwwwwwwwwwwwwwwwwwwwwww2.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                Wwwwwwwwwwwwwwwwwwwwwwwww2.remove(num);
                return;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwww2.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap) + ", this: " + this);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap) {
        return Util.Wwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    @Nullable
    public Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, Bitmap.Config config) {
        Key Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, config), config);
        Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4488Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.f4492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.reconfigure(i, i2, config);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap) {
        Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4489Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Util.Wwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap), bitmap.getConfig());
        this.f4488Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, bitmap);
        NavigableMap<Integer, Integer> Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww(bitmap.getConfig());
        Integer num = Wwwwwwwwwwwwwwwwwwwwwwwww2.get(Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f4492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        Integer valueOf = Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f4492Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        int i = 1;
        if (num != null) {
            i = 1 + num.intValue();
        }
        Wwwwwwwwwwwwwwwwwwwwwwwww2.put(valueOf, Integer.valueOf(i));
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, Bitmap.Config config) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww(Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, config), config);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww(Util.Wwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap), bitmap.getConfig());
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.LruPoolStrategy
    @Nullable
    public Bitmap removeLast() {
        Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4488Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Integer.valueOf(Util.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2)), Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SizeConfigStrategy{groupedMap=");
        sb.append(this.f4488Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        sb.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.f4487Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.entrySet()) {
            sb.append(entry.getKey());
            sb.append(AbstractJsonLexerKt.BEGIN_LIST);
            sb.append(entry.getValue());
            sb.append("], ");
        }
        if (!this.f4487Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
            sb.replace(sb.length() - 2, sb.length(), "");
        }
        sb.append(")}");
        return sb.toString();
    }
}
