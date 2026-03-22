package com.facebook.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u000eB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\n\u0012\u0004\u0012\u00020\u000b0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/facebook/internal/BundleJSONConverter;", "", "<init>", "()V", "Lorg/json/JSONObject;", "jsonObject", "Landroid/os/Bundle;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;)Landroid/os/Bundle;", "", "Ljava/lang/Class;", "Lcom/facebook/internal/BundleJSONConverter$Setter;", "Ljava/util/Map;", "SETTERS", "Setter", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class BundleJSONConverter {
    @NotNull
    public static final BundleJSONConverter INSTANCE = new BundleJSONConverter();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<Class<?>, Setter> f6633Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J'\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0001H&¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/facebook/internal/BundleJSONConverter$Setter;", "", "Landroid/os/Bundle;", "bundle", "", "key", "value", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface Setter {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle, @NotNull String str, @NotNull Object obj) throws JSONException;
    }

    static {
        HashMap hashMap = new HashMap();
        f6633Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = hashMap;
        hashMap.put(Boolean.class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.1
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle, @NotNull String str, @NotNull Object obj) throws JSONException {
                bundle.putBoolean(str, ((Boolean) obj).booleanValue());
            }
        });
        hashMap.put(Integer.class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.2
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle, @NotNull String str, @NotNull Object obj) throws JSONException {
                bundle.putInt(str, ((Integer) obj).intValue());
            }
        });
        hashMap.put(Long.class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.3
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle, @NotNull String str, @NotNull Object obj) throws JSONException {
                bundle.putLong(str, ((Long) obj).longValue());
            }
        });
        hashMap.put(Double.class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.4
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle, @NotNull String str, @NotNull Object obj) throws JSONException {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            }
        });
        hashMap.put(String.class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.5
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle, @NotNull String str, @NotNull Object obj) throws JSONException {
                bundle.putString(str, (String) obj);
            }
        });
        hashMap.put(String[].class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.6
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle, @NotNull String str, @NotNull Object obj) throws JSONException {
                throw new IllegalArgumentException("Unexpected type from JSON");
            }
        });
        hashMap.put(JSONArray.class, new Setter() { // from class: com.facebook.internal.BundleJSONConverter.7
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.facebook.internal.BundleJSONConverter.Setter
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle, @NotNull String str, @NotNull Object obj) throws JSONException {
                JSONArray jSONArray = (JSONArray) obj;
                ArrayList arrayList = new ArrayList();
                if (jSONArray.length() == 0) {
                    bundle.putStringArrayList(str, arrayList);
                    return;
                }
                int length = jSONArray.length();
                if (length > 0) {
                    int i = 0;
                    while (true) {
                        int i2 = i + 1;
                        Object obj2 = jSONArray.get(i);
                        if (obj2 instanceof String) {
                            arrayList.add(obj2);
                            if (i2 >= length) {
                                break;
                            }
                            i = i2;
                        } else {
                            throw new IllegalArgumentException(Intrinsics.stringPlus("Unexpected type in an array: ", obj2.getClass()));
                        }
                    }
                }
                bundle.putStringArrayList(str, arrayList);
            }
        });
    }

    @JvmStatic
    @NotNull
    public static final Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull JSONObject jSONObject) throws JSONException {
        Bundle bundle = new Bundle();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object obj = jSONObject.get(next);
            if (obj != JSONObject.NULL) {
                if (obj instanceof JSONObject) {
                    bundle.putBundle(next, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((JSONObject) obj));
                } else {
                    Setter setter = f6633Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(obj.getClass());
                    if (setter != null) {
                        setter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle, next, obj);
                    } else {
                        throw new IllegalArgumentException(Intrinsics.stringPlus("Unsupported type: ", obj.getClass()));
                    }
                }
            }
        }
        return bundle;
    }
}
