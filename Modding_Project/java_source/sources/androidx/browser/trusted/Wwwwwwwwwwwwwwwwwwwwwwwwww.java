package androidx.browser.trusted;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.browser.trusted.TrustedWebActivityDisplayMode;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwww {
    @NonNull
    public static TrustedWebActivityDisplayMode Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Bundle bundle) {
        if (bundle.getInt(TrustedWebActivityDisplayMode.KEY_ID) != 1) {
            return new TrustedWebActivityDisplayMode.DefaultMode();
        }
        return TrustedWebActivityDisplayMode.ImmersiveMode.fromBundle(bundle);
    }
}
