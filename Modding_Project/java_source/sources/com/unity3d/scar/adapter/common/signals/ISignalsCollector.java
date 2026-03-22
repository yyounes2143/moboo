package com.unity3d.scar.adapter.common.signals;

import android.content.Context;
import com.unity3d.scar.adapter.common.DispatchGroup;
import com.unity3d.scar.adapter.common.scarads.UnityAdFormat;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface ISignalsCollector {
    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, UnityAdFormat unityAdFormat, DispatchGroup dispatchGroup, SignalsResult signalsResult);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, UnityAdFormat unityAdFormat, DispatchGroup dispatchGroup, SignalsResult signalsResult);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, List<UnityAdFormat> list, ISignalCollectionListener iSignalCollectionListener);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, UnityAdFormat unityAdFormat, ISignalCollectionListener iSignalCollectionListener);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, boolean z, ISignalCollectionListener iSignalCollectionListener);
}
