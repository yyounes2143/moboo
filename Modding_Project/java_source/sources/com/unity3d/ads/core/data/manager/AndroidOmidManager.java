package com.unity3d.ads.core.data.manager;

import android.content.Context;
import android.webkit.WebView;
import com.google.firebase.remoteconfig.RemoteConfigComponent;
import com.iab.omid.library.unity3d.Omid;
import com.iab.omid.library.unity3d.adsession.AdEvents;
import com.iab.omid.library.unity3d.adsession.AdSession;
import com.iab.omid.library.unity3d.adsession.AdSessionConfiguration;
import com.iab.omid.library.unity3d.adsession.AdSessionContext;
import com.iab.omid.library.unity3d.adsession.CreativeType;
import com.iab.omid.library.unity3d.adsession.ImpressionType;
import com.iab.omid.library.unity3d.adsession.Owner;
import com.iab.omid.library.unity3d.adsession.Partner;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\f\u001a\u00020\u0015H\u0016J0\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u0004H\u0016J0\u0010\u001f\u001a\u00020\u00152\b\u0010 \u001a\u0004\u0018\u00010!2\b\u0010\"\u001a\u0004\u0018\u00010#2\b\u0010$\u001a\u0004\u0018\u00010\u00072\b\u0010%\u001a\u0004\u0018\u00010\u0007H\u0016J0\u0010&\u001a\u00020\u00152\b\u0010 \u001a\u0004\u0018\u00010!2\b\u0010\"\u001a\u0004\u0018\u00010#2\b\u0010$\u001a\u0004\u0018\u00010\u00072\b\u0010%\u001a\u0004\u0018\u00010\u0007H\u0016R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006'"}, d2 = {"Lcom/unity3d/ads/core/data/manager/AndroidOmidManager;", "Lcom/unity3d/ads/core/data/manager/OmidManager;", "()V", "isActive", "", "()Z", "version", "", MobileAdsBridge.versionMethodName, "()Ljava/lang/String;", RemoteConfigComponent.ACTIVATE_FILE_NAME, "", "context", "Landroid/content/Context;", "createAdEvents", "Lcom/iab/omid/library/unity3d/adsession/AdEvents;", "adSession", "Lcom/iab/omid/library/unity3d/adsession/AdSession;", "createAdSession", "adSessionConfiguration", "Lcom/iab/omid/library/unity3d/adsession/AdSessionConfiguration;", "Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;", "createAdSessionConfiguration", "creativeType", "Lcom/iab/omid/library/unity3d/adsession/CreativeType;", "impressionType", "Lcom/iab/omid/library/unity3d/adsession/ImpressionType;", "owner", "Lcom/iab/omid/library/unity3d/adsession/Owner;", "mediaEventsOwner", "isolateVerificationScripts", "createHtmlAdSessionContext", "partner", "Lcom/iab/omid/library/unity3d/adsession/Partner;", "adView", "Landroid/webkit/WebView;", "contentUrl", "customReferenceData", "createJavaScriptAdSessionContext", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class AndroidOmidManager implements OmidManager {
    @Override // com.unity3d.ads.core.data.manager.OmidManager
    public void activate(@NotNull Context context) {
        Omid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
    }

    @Override // com.unity3d.ads.core.data.manager.OmidManager
    @NotNull
    public AdEvents createAdEvents(@NotNull AdSession adSession) {
        return AdEvents.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(adSession);
    }

    @Override // com.unity3d.ads.core.data.manager.OmidManager
    @NotNull
    public AdSession createAdSession(@NotNull AdSessionConfiguration adSessionConfiguration, @NotNull AdSessionContext adSessionContext) {
        return AdSession.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(adSessionConfiguration, adSessionContext);
    }

    @Override // com.unity3d.ads.core.data.manager.OmidManager
    @NotNull
    public AdSessionConfiguration createAdSessionConfiguration(@NotNull CreativeType creativeType, @NotNull ImpressionType impressionType, @NotNull Owner owner, @NotNull Owner owner2, boolean z) {
        return AdSessionConfiguration.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(creativeType, impressionType, owner, owner2, z);
    }

    @Override // com.unity3d.ads.core.data.manager.OmidManager
    @NotNull
    public AdSessionContext createHtmlAdSessionContext(@Nullable Partner partner, @Nullable WebView webView, @Nullable String str, @Nullable String str2) {
        return AdSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(partner, webView, str, str2);
    }

    @Override // com.unity3d.ads.core.data.manager.OmidManager
    @NotNull
    public AdSessionContext createJavaScriptAdSessionContext(@Nullable Partner partner, @Nullable WebView webView, @Nullable String str, @Nullable String str2) {
        return AdSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(partner, webView, str, str2);
    }

    @Override // com.unity3d.ads.core.data.manager.OmidManager
    @NotNull
    public String getVersion() {
        return Omid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // com.unity3d.ads.core.data.manager.OmidManager
    public boolean isActive() {
        return Omid.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
