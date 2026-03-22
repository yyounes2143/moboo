package com.bumptech.glide.load.model;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class LazyHeaders implements Headers {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile Map<String, String> f4624Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<String, List<LazyHeaderFactory>> f4625Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final Map<String, List<LazyHeaderFactory>> f4626Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final String f4627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f4630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Map<String, List<LazyHeaderFactory>> f4629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f4626Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f4628Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;

        static {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            f4627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            HashMap hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                hashMap.put("User-Agent", Collections.singletonList(new StringHeaderFactory(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)));
            }
            f4626Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Collections.unmodifiableMap(hashMap);
        }

        @VisibleForTesting
        public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            String property = System.getProperty("http.agent");
            if (TextUtils.isEmpty(property)) {
                return property;
            }
            int length = property.length();
            StringBuilder sb = new StringBuilder(property.length());
            for (int i = 0; i < length; i++) {
                char charAt = property.charAt(i);
                if ((charAt > 31 || charAt == '\t') && charAt < 127) {
                    sb.append(charAt);
                } else {
                    sb.append('?');
                }
            }
            return sb.toString();
        }

        public LazyHeaders Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f4630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            return new LazyHeaders(this.f4629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class StringHeaderFactory implements LazyHeaderFactory {
        @NonNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f4631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public StringHeaderFactory(@NonNull String str) {
            this.f4631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        @Override // com.bumptech.glide.load.model.LazyHeaderFactory
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f4631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public boolean equals(Object obj) {
            if (obj instanceof StringHeaderFactory) {
                return this.f4631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(((StringHeaderFactory) obj).f4631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            return false;
        }

        public int hashCode() {
            return this.f4631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
        }

        public String toString() {
            return "StringHeaderFactory{value='" + this.f4631Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + '\'' + AbstractJsonLexerKt.END_OBJ;
        }
    }

    public LazyHeaders(Map<String, List<LazyHeaderFactory>> map) {
        this.f4625Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Collections.unmodifiableMap(map);
    }

    public final Map<String, String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<LazyHeaderFactory>> entry : this.f4625Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.entrySet()) {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(entry.getValue());
            if (!TextUtils.isEmpty(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                hashMap.put(entry.getKey(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
        }
        return hashMap;
    }

    @NonNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull List<LazyHeaderFactory> list) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = list.get(i).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (!TextUtils.isEmpty(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                sb.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                if (i != list.size() - 1) {
                    sb.append(AbstractJsonLexerKt.COMMA);
                }
            }
        }
        return sb.toString();
    }

    @Override // com.bumptech.glide.load.model.Headers
    public Map<String, String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f4624Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            synchronized (this) {
                try {
                    if (this.f4624Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                        this.f4624Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Collections.unmodifiableMap(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    }
                } finally {
                }
            }
        }
        return this.f4624Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(Object obj) {
        if (obj instanceof LazyHeaders) {
            return this.f4625Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(((LazyHeaders) obj).f4625Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return false;
    }

    public int hashCode() {
        return this.f4625Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    public String toString() {
        return "LazyHeaders{headers=" + this.f4625Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + AbstractJsonLexerKt.END_OBJ;
    }
}
