package com.iab.omid.library.vungle.adsession;

import android.view.View;
import androidx.annotation.Nullable;
import com.iab.omid.library.vungle.utils.g;
/* loaded from: classes5.dex */
public abstract class AdSession {
    public static AdSession Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(adSessionConfiguration, "AdSessionConfiguration is null");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(adSessionContext, "AdSessionContext is null");
        return new a(adSessionConfiguration, adSessionContext);
    }

    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable View view);

    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str);
}
