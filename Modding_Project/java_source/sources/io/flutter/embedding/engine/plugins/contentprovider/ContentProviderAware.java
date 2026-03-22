package io.flutter.embedding.engine.plugins.contentprovider;

import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface ContentProviderAware {
    void onAttachedToContentProvider(@NonNull ContentProviderPluginBinding contentProviderPluginBinding);

    void onDetachedFromContentProvider();
}
