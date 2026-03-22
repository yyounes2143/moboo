package com.unity3d.scar.adapter.common;

import com.unity3d.scar.adapter.common.scarads.ScarAdMetadata;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class GMAAdsError extends WebViewAdsError {
    public GMAAdsError(GMAEvent gMAEvent, Object... objArr) {
        super(gMAEvent, null, objArr);
    }

    public static GMAAdsError Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2, String str3) {
        return new GMAAdsError(GMAEvent.NO_AD_ERROR, str3, str, str2, str3);
    }

    public static GMAAdsError Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return new GMAAdsError(GMAEvent.INTERNAL_SIGNALS_ERROR, str, str);
    }

    public static GMAAdsError Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ScarAdMetadata scarAdMetadata, String str) {
        return new GMAAdsError(GMAEvent.INTERNAL_SHOW_ERROR, str, scarAdMetadata.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), scarAdMetadata.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), str);
    }

    public static GMAAdsError Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ScarAdMetadata scarAdMetadata, String str) {
        return new GMAAdsError(GMAEvent.INTERNAL_LOAD_ERROR, str, scarAdMetadata.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), scarAdMetadata.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), str);
    }

    public static GMAAdsError Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return new GMAAdsError(GMAEvent.SCAR_UNSUPPORTED, str, new Object[0]);
    }

    public static GMAAdsError Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ScarAdMetadata scarAdMetadata) {
        String format = String.format("Cannot show ad that is not loaded for placement %s", scarAdMetadata.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        return new GMAAdsError(GMAEvent.AD_NOT_LOADED_ERROR, format, scarAdMetadata.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), scarAdMetadata.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), format);
    }

    @Override // com.unity3d.scar.adapter.common.WebViewAdsError
    public String getDomain() {
        return "GMA";
    }

    public GMAAdsError(GMAEvent gMAEvent, String str, Object... objArr) {
        super(gMAEvent, str, objArr);
    }
}
