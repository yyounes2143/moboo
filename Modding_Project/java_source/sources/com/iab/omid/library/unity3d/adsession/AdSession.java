package com.iab.omid.library.unity3d.adsession;

import android.view.View;
import com.iab.omid.library.unity3d.utils.g;
/* loaded from: classes5.dex */
public abstract class AdSession {
    public static AdSession Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(adSessionConfiguration, "AdSessionConfiguration is null");
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(adSessionContext, "AdSessionContext is null");
        return new a(adSessionConfiguration, adSessionContext);
    }

    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view);

    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
}
