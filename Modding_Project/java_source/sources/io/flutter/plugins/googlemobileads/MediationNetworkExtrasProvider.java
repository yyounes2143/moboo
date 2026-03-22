package io.flutter.plugins.googlemobileads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import java.util.Map;
/* compiled from: Proguard */
@Deprecated
/* loaded from: classes6.dex */
public interface MediationNetworkExtrasProvider {
    @Nullable
    Map<Class<? extends MediationExtrasReceiver>, Bundle> getMediationExtras(String str, @Nullable String str2);
}
