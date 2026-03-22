package com.google.android.material.color;

import android.content.Context;
import androidx.annotation.RequiresApi;
import com.google.android.material.R;
import java.util.Map;
/* compiled from: Proguard */
@RequiresApi(api = 30)
/* loaded from: classes5.dex */
class ResourcesLoaderColorResourcesOverride implements ColorResourcesOverride {

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class ResourcesLoaderColorResourcesOverrideSingleton {
        private static final ResourcesLoaderColorResourcesOverride INSTANCE = new ResourcesLoaderColorResourcesOverride();

        private ResourcesLoaderColorResourcesOverrideSingleton() {
        }
    }

    public static ColorResourcesOverride getInstance() {
        return ResourcesLoaderColorResourcesOverrideSingleton.INSTANCE;
    }

    @Override // com.google.android.material.color.ColorResourcesOverride
    public boolean applyIfPossible(Context context, Map<Integer, Integer> map) {
        if (ResourcesLoaderUtils.addResourcesLoaderToContext(context, map)) {
            ThemeUtils.applyThemeOverlay(context, R.style.ThemeOverlay_Material3_PersonalizedColors);
            return true;
        }
        return false;
    }

    private ResourcesLoaderColorResourcesOverride() {
    }
}
