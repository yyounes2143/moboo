package androidx.media3.exoplayer;

import androidx.media3.common.util.UnstableApi;
/* compiled from: Proguard */
@UnstableApi
/* loaded from: classes.dex */
public interface RendererCapabilitiesList {

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public interface Factory {
        RendererCapabilitiesList createRendererCapabilitiesList();
    }

    RendererCapabilities[] getRendererCapabilities();

    void release();

    int size();
}
