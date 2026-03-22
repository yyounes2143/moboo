package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.webkit.internal.AssetHelper;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbkp implements zzbjw {
    private final Context zza;

    public zzbkp(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final void zza(Object obj, Map map) {
        if (map.containsKey("text") && !TextUtils.isEmpty((CharSequence) map.get("text"))) {
            com.google.android.gms.ads.internal.util.zze.zza("Opening Share Sheet with text: ".concat(String.valueOf((String) map.get("text"))));
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
            intent.putExtra("android.intent.extra.TEXT", (String) map.get("text"));
            if (map.containsKey(CampaignEx.JSON_KEY_TITLE)) {
                intent.putExtra("android.intent.extra.TITLE", (String) map.get(CampaignEx.JSON_KEY_TITLE));
            }
            try {
                com.google.android.gms.ads.internal.zzv.zzr();
                com.google.android.gms.ads.internal.util.zzs.zzU(this.zza, intent);
            } catch (RuntimeException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to open Share Sheet", e);
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "ShareSheetGmsgHandler.onGmsg");
            }
        }
    }
}
