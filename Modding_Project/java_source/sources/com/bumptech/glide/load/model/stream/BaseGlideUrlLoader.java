package com.bumptech.glide.load.model.stream;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.Headers;
import com.bumptech.glide.load.model.ModelCache;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class BaseGlideUrlLoader<Model> implements ModelLoader<Model, InputStream> {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ModelCache<Model, GlideUrl> f4689Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ModelLoader<GlideUrl, InputStream> f4690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public static List<Key> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Collection<String> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (String str : collection) {
            arrayList.add(new GlideUrl(str));
        }
        return arrayList;
    }

    public abstract String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Model model, int i, int i2, Options options);

    @Nullable
    public Headers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Model model, int i, int i2, Options options) {
        return Headers.f4622Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Model model, int i, int i2, Options options) {
        return Collections.EMPTY_LIST;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    @Nullable
    public ModelLoader.LoadData<InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Model model, int i, int i2, @NonNull Options options) {
        GlideUrl glideUrl;
        ModelCache<Model, GlideUrl> modelCache = this.f4689Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (modelCache != null) {
            glideUrl = modelCache.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(model, i, i2);
        } else {
            glideUrl = null;
        }
        if (glideUrl == null) {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(model, i, i2, options);
            if (TextUtils.isEmpty(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                return null;
            }
            GlideUrl glideUrl2 = new GlideUrl(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(model, i, i2, options));
            ModelCache<Model, GlideUrl> modelCache2 = this.f4689Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (modelCache2 != null) {
                modelCache2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(model, i, i2, glideUrl2);
            }
            glideUrl = glideUrl2;
        }
        List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(model, i, i2, options);
        ModelLoader.LoadData<InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4690Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(glideUrl, i, i2, options);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
            return new ModelLoader.LoadData<>(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f4645Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f4643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }
}
