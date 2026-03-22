package com.appsflyer.internal;

import com.appsflyer.internal.platform_extension.Plugin;
import com.appsflyer.internal.platform_extension.PluginInfo;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFi1iSDK implements AFi1kSDK {
    @NotNull
    private PluginInfo getMediationNetwork = new PluginInfo(Plugin.NATIVE, "6.17.5", null, 4, null);

    @Override // com.appsflyer.internal.AFi1kSDK
    @NotNull
    public final Map<String, Object> getCurrencyIso4217Code() {
        Map<String, Object> mutableMapOf = MapsKt.mutableMapOf(TuplesKt.to(TPDownloadProxyEnum.USER_PLATFORM, this.getMediationNetwork.getPlugin().getPluginName()), TuplesKt.to("version", this.getMediationNetwork.getVersion()));
        if (!this.getMediationNetwork.getAdditionalParams().isEmpty()) {
            mutableMapOf.put("extras", this.getMediationNetwork.getAdditionalParams());
        }
        return mutableMapOf;
    }

    @Override // com.appsflyer.internal.AFi1kSDK
    public final void getRevenue(@NotNull PluginInfo pluginInfo) {
        this.getMediationNetwork = pluginInfo;
    }
}
